.class public Landroid/app/HtcAppUsageStatsListener;
.super Lcom/htc/callbacks/ActivityThreadCallbacks;
.source "HtcAppUsageStatsListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAppUsageStatsListener"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/callbacks/ActivityThreadCallbacks;-><init>()V

    .line 23
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    iput-object v1, p0, Landroid/app/HtcAppUsageStatsListener;->mBundle:Landroid/os/Bundle;

    .line 26
    const-string v1, "HtcAppUsageStatsService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 27
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_1a

    .line 28
    invoke-static {v0}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHtcAppUsageStatsService;

    move-result-object v1

    iput-object v1, p0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    .line 32
    :goto_19
    return-void

    .line 30
    :cond_1a
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    goto :goto_19
.end method

.method private getHtcAppUsageStatsService()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "1.6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 91
    iget-object v3, p0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    if-eqz v3, :cond_26

    .line 103
    :goto_25
    return v1

    .line 94
    :cond_26
    const-string v3, "HtcAppUsageStatsService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 95
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_35

    .line 96
    invoke-static {v0}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHtcAppUsageStatsService;

    move-result-object v2

    iput-object v2, p0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    goto :goto_25

    :cond_35
    move v1, v2

    .line 99
    goto :goto_25

    .end local v0           #binder:Landroid/os/IBinder;
    :cond_37
    move v1, v2

    .line 103
    goto :goto_25
.end method


# virtual methods
.method public afterCallActivityOnPause(Landroid/app/Activity;)V
    .registers 6
    .parameter "activity"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/HtcAppUsageStatsListener;->getHtcAppUsageStatsService()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 38
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, activityName:Ljava/lang/String;
    iget-object v2, p0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/app/IHtcAppUsageStatsService;->notePauseActivity(ILjava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18

    .line 44
    .end local v0           #activityName:Ljava/lang/String;
    :cond_17
    :goto_17
    return-void

    .line 40
    :catch_18
    move-exception v1

    .line 41
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "HtcAppUsageStatsListener"

    const-string v3, "afterCallActivityOnPause"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method public afterPerformResume(Landroid/app/Activity;)V
    .registers 18
    .parameter "activity"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Landroid/app/HtcAppUsageStatsListener;->getHtcAppUsageStatsService()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 50
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, activityName:Ljava/lang/String;
    const/4 v15, 0x1

    .line 52
    .local v15, nofragment:Z
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 53
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    .line 54
    .local v12, fragmentManager:Landroid/app/FragmentManagerImpl;
    const/4 v11, 0x0

    .line 55
    .local v11, fragmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v10, fragmentClass:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_80

    .line 57
    iget-object v11, v12, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 58
    if-eqz v11, :cond_80

    .line 59
    const/4 v13, 0x0

    .local v13, i:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, j:I
    :goto_2f
    if-ge v13, v14, :cond_45

    .line 60
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Fragment;

    .line 61
    .local v9, fragment:Landroid/app/Fragment;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v13, v13, 0x1

    goto :goto_2f

    .line 63
    .end local v9           #fragment:Landroid/app/Fragment;
    :cond_45
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_80

    .line 64
    const/4 v15, 0x0

    .line 65
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/HtcAppUsageStatsListener;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_80

    .line 66
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/HtcAppUsageStatsListener;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 67
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/HtcAppUsageStatsListener;->mBundle:Landroid/os/Bundle;

    const-string v2, "fragmentlist"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/app/ActivityGroup;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->isChild()Z

    move-result v6

    if-nez v6, :cond_9d

    const/4 v6, 0x1

    :goto_79
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/HtcAppUsageStatsListener;->mBundle:Landroid/os/Bundle;

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IHtcAppUsageStatsService;->noteResumeActivity_pkg_frag(ILjava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 76
    .end local v10           #fragmentClass:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #fragmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    .end local v12           #fragmentManager:Landroid/app/FragmentManagerImpl;
    .end local v13           #i:I
    .end local v14           #j:I
    :cond_80
    if-eqz v15, :cond_9c

    .line 77
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/app/ActivityGroup;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->isChild()Z

    move-result v6

    if-nez v6, :cond_9f

    const/4 v6, 0x1

    :goto_99
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IHtcAppUsageStatsService;->noteResumeActivity_pkg(ILjava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9c} :catch_a1

    .line 85
    .end local v3           #activityName:Ljava/lang/String;
    .end local v15           #nofragment:Z
    :cond_9c
    :goto_9c
    return-void

    .line 68
    .restart local v3       #activityName:Ljava/lang/String;
    .restart local v10       #fragmentClass:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #fragmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    .restart local v12       #fragmentManager:Landroid/app/FragmentManagerImpl;
    .restart local v13       #i:I
    .restart local v14       #j:I
    .restart local v15       #nofragment:Z
    :cond_9d
    const/4 v6, 0x0

    goto :goto_79

    .line 77
    .end local v10           #fragmentClass:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #fragmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    .end local v12           #fragmentManager:Landroid/app/FragmentManagerImpl;
    .end local v13           #i:I
    .end local v14           #j:I
    :cond_9f
    const/4 v6, 0x0

    goto :goto_99

    .line 81
    .end local v3           #activityName:Ljava/lang/String;
    .end local v15           #nofragment:Z
    :catch_a1
    move-exception v8

    .line 82
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "HtcAppUsageStatsListener"

    const-string v2, "afterPerformResume"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9c
.end method
