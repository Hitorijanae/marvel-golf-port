.class public Lcom/htc/htcjavaflag/HtcUtility;
.super Ljava/lang/Object;
.source "HtcUtility.java"


# static fields
.field static sHasHtcSignature:Z

.field static sInitialized:Z

.field static sInitializedHasHtcSignature:Z

.field static sIsHtcApp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/htc/htcjavaflag/HtcUtility;->sInitialized:Z

    .line 10
    sput-boolean v0, Lcom/htc/htcjavaflag/HtcUtility;->sIsHtcApp:Z

    .line 31
    sput-boolean v0, Lcom/htc/htcjavaflag/HtcUtility;->sInitializedHasHtcSignature:Z

    .line 32
    sput-boolean v0, Lcom/htc/htcjavaflag/HtcUtility;->sHasHtcSignature:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasHtcSignature()Z
    .registers 2

    .prologue
    .line 40
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sInitializedHasHtcSignature:Z

    if-eqz v1, :cond_7

    .line 41
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sHasHtcSignature:Z

    .line 52
    .local v0, app:Landroid/app/Application;
    :goto_6
    return v1

    .line 42
    .end local v0           #app:Landroid/app/Application;
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 43
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 44
    .restart local v0       #app:Landroid/app/Application;
    if-eqz v0, :cond_1d

    .line 48
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sInitializedHasHtcSignature:Z

    .line 49
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sHasHtcSignature:Z

    goto :goto_6

    .line 52
    :cond_1d
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static isBitmapReleaseEnabled()Z
    .registers 1

    .prologue
    .line 56
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isHtcApp()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getFreeNativeBitmap()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isHtcApp()Z
    .registers 2

    .prologue
    .line 18
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sInitialized:Z

    if-eqz v1, :cond_7

    .line 19
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sIsHtcApp:Z

    .line 28
    .local v0, app:Landroid/app/Application;
    :goto_6
    return v1

    .line 20
    .end local v0           #app:Landroid/app/Application;
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 21
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 22
    .restart local v0       #app:Landroid/app/Application;
    if-eqz v0, :cond_25

    .line 23
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    sput-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sIsHtcApp:Z

    .line 24
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sInitialized:Z

    .line 25
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcUtility;->sIsHtcApp:Z

    goto :goto_6

    .line 28
    :cond_25
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static isTopApp()Z
    .registers 1

    .prologue
    .line 65
    invoke-static {}, Landroid/app/ActivityThread;->isTopApp()Z

    move-result v0

    return v0
.end method
