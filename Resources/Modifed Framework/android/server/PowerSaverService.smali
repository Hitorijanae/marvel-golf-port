.class public Landroid/server/PowerSaverService;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/PowerSaverService$SettingsObserver;
    }
.end annotation


# static fields
.field public static final ACTION_MODIFY_NETWORK_MODE:Ljava/lang/String; = "com.android.internal.telephony.MODIFY_NETWORK_MODE"

.field public static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "com.android.internal.telephony.NETWORK_MODE_CHANGED"

.field public static final ACTION_REQUEST_NETWORK_MODE:Ljava/lang/String; = "com.android.internal.telephony.REQUEST_NETWORK_MODE"

.field private static final ACTION_SCREEN_OFF:Ljava/lang/String; = "android.service.PowerSaverService.ACTION_SCREEN_OFF"

.field private static final ACTION_SCREEN_ON:Ljava/lang/String; = "android.service.PowerSaverService.ACTION_SCREEN_ON"

.field private static final ACTION_SYNC:Ljava/lang/String; = "android.service.PowerSaverService.ACTION_SYNC"

.field public static final DATA_2G:I = 0x15

.field public static final DATA_OFF:I = 0x16

.field public static final DATA_UNTOUCHED:I = 0x14

.field public static final EXTRA_NETWORK_MODE:Ljava/lang/String; = "networkMode"

.field public static final POWER_SAVER_MODE_OFF:I = 0xa

.field public static final POWER_SAVER_MODE_ON:I = 0xb

.field public static final SYNCING_DATA_NODATA:I = 0x3d

.field public static final SYNCING_DATA_ONLY:I = 0x35

.field public static final SYNCING_DATA_PREFER_2G:I = 0x3e

.field public static final SYNCING_DATA_PREFER_3G:I = 0x3f

.field public static final SYNCING_USE_SCREEN_OFF_CONFIG:I = 0x36

.field public static final SYNCING_WIFI_ONLY:I = 0x32

.field public static final SYNCING_WIFI_PREFERRED:I = 0x33

.field public static final SYNC_INTERVAL:I = 0x22

.field public static final SYNC_TURN_OFF:I = 0x21

.field public static final SYNC_UNTOUCHED:I = 0x23

.field private static final TAG:Ljava/lang/String; = "PowerSaverService"

.field public static final WIFI_OFF:I = 0x29

.field public static final WIFI_ON:I = 0x2a

.field public static final WIFI_UNTOUCHED:I = 0x28


# instance fields
.field private alarms:Landroid/app/AlarmManager;

.field private batteryLevel:I

.field private connectivity:Landroid/net/ConnectivityManager;

.field handler:Landroid/os/Handler;

.field private isCdma:Z

.field private isCharging:Z

.field private isScreenOn:Z

.field private mContext:Landroid/content/Context;

.field private mDataScreenOffSecondDelay:I

.field private mDataScreenOnSecondDelay:I

.field private mMode:I

.field private mScreenOffDataMode:I

.field private mScreenOffSyncMode:I

.field private mScreenOffWifiMode:I

.field private mSyncDataMode:I

.field private mSyncMobileDataMode:I

.field private mSyncScreenOffSecondInterval:I

.field private originalDataOn:Z

.field private originalNetworkMode:I

.field private originalWifiEnabled:Z

.field scheduleScreenOffPendingIntent:Landroid/app/PendingIntent;

.field scheduleScreenOnPendingIntent:Landroid/app/PendingIntent;

.field scheduleSyncTaskPendingIntent:Landroid/app/PendingIntent;

.field scheduledSyncTask:Ljava/lang/Runnable;

.field private screenOffScheduleAttempts:I

.field screenOffTask:Ljava/lang/Runnable;

.field screenOnTask:Ljava/lang/Runnable;

.field private skipReadingCurrentState:Z

.field private telephony:Landroid/telephony/TelephonyManager;

.field private wifi:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    const/16 v0, 0xa

    iput v0, p0, Landroid/server/PowerSaverService;->mMode:I

    .line 48
    const/16 v0, 0x14

    iput v0, p0, Landroid/server/PowerSaverService;->mScreenOffDataMode:I

    .line 55
    const/16 v0, 0x23

    iput v0, p0, Landroid/server/PowerSaverService;->mScreenOffSyncMode:I

    .line 62
    const/16 v0, 0x28

    iput v0, p0, Landroid/server/PowerSaverService;->mScreenOffWifiMode:I

    .line 70
    const/16 v0, 0x36

    iput v0, p0, Landroid/server/PowerSaverService;->mSyncDataMode:I

    .line 77
    const/16 v0, 0x3f

    iput v0, p0, Landroid/server/PowerSaverService;->mSyncMobileDataMode:I

    .line 80
    iput v3, p0, Landroid/server/PowerSaverService;->mDataScreenOffSecondDelay:I

    .line 81
    const/16 v0, 0x384

    iput v0, p0, Landroid/server/PowerSaverService;->mSyncScreenOffSecondInterval:I

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Landroid/server/PowerSaverService;->originalNetworkMode:I

    .line 98
    iput-boolean v1, p0, Landroid/server/PowerSaverService;->originalWifiEnabled:Z

    .line 99
    iput-boolean v1, p0, Landroid/server/PowerSaverService;->originalDataOn:Z

    .line 101
    iput-boolean v1, p0, Landroid/server/PowerSaverService;->isScreenOn:Z

    .line 103
    iput-boolean v1, p0, Landroid/server/PowerSaverService;->isCdma:Z

    .line 107
    iput v3, p0, Landroid/server/PowerSaverService;->mDataScreenOnSecondDelay:I

    .line 109
    iput-object v2, p0, Landroid/server/PowerSaverService;->scheduleSyncTaskPendingIntent:Landroid/app/PendingIntent;

    .line 110
    iput-object v2, p0, Landroid/server/PowerSaverService;->scheduleScreenOffPendingIntent:Landroid/app/PendingIntent;

    .line 111
    iput-object v2, p0, Landroid/server/PowerSaverService;->scheduleScreenOnPendingIntent:Landroid/app/PendingIntent;

    .line 114
    iput-boolean v1, p0, Landroid/server/PowerSaverService;->isCharging:Z

    .line 115
    const/16 v0, 0x32

    iput v0, p0, Landroid/server/PowerSaverService;->batteryLevel:I

    .line 121
    iput-boolean v1, p0, Landroid/server/PowerSaverService;->skipReadingCurrentState:Z

    .line 303
    new-instance v0, Landroid/server/PowerSaverService$1;

    invoke-direct {v0, p0}, Landroid/server/PowerSaverService$1;-><init>(Landroid/server/PowerSaverService;)V

    iput-object v0, p0, Landroid/server/PowerSaverService;->screenOnTask:Ljava/lang/Runnable;

    .line 335
    iput v1, p0, Landroid/server/PowerSaverService;->screenOffScheduleAttempts:I

    .line 337
    new-instance v0, Landroid/server/PowerSaverService$2;

    invoke-direct {v0, p0}, Landroid/server/PowerSaverService$2;-><init>(Landroid/server/PowerSaverService;)V

    iput-object v0, p0, Landroid/server/PowerSaverService;->screenOffTask:Ljava/lang/Runnable;

    .line 389
    new-instance v0, Landroid/server/PowerSaverService$3;

    invoke-direct {v0, p0}, Landroid/server/PowerSaverService$3;-><init>(Landroid/server/PowerSaverService;)V

    iput-object v0, p0, Landroid/server/PowerSaverService;->scheduledSyncTask:Ljava/lang/Runnable;

    .line 124
    iput-object p1, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    .line 126
    const-string v0, "PowerSaverService"

    const-string v1, "initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method static synthetic access$000(Landroid/server/PowerSaverService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Landroid/server/PowerSaverService;->mMode:I

    return v0
.end method

.method static synthetic access$100(Landroid/server/PowerSaverService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Landroid/server/PowerSaverService;->mScreenOffDataMode:I

    return v0
.end method

.method static synthetic access$1000(Landroid/server/PowerSaverService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/server/PowerSaverService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Landroid/server/PowerSaverService;->screenOffScheduleAttempts:I

    return v0
.end method

.method static synthetic access$1102(Landroid/server/PowerSaverService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Landroid/server/PowerSaverService;->screenOffScheduleAttempts:I

    return p1
.end method

.method static synthetic access$1200(Landroid/server/PowerSaverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/server/PowerSaverService;->scheduleScreenOffTaskWithBackoff()V

    return-void
.end method

.method static synthetic access$1300(Landroid/server/PowerSaverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/server/PowerSaverService;->requestPreferredDataType()V

    return-void
.end method

.method static synthetic access$1400(Landroid/server/PowerSaverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/server/PowerSaverService;->handleScreenOffData()V

    return-void
.end method

.method static synthetic access$1500(Landroid/server/PowerSaverService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Landroid/server/PowerSaverService;->mScreenOffSyncMode:I

    return v0
.end method

.method static synthetic access$1600(Landroid/server/PowerSaverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/server/PowerSaverService;->scheduleSyncTask()V

    return-void
.end method

.method static synthetic access$1700(Landroid/server/PowerSaverService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Landroid/server/PowerSaverService;->mSyncDataMode:I

    return v0
.end method

.method static synthetic access$1800(Landroid/server/PowerSaverService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Landroid/server/PowerSaverService;->mSyncMobileDataMode:I

    return v0
.end method

.method static synthetic access$1900(Landroid/server/PowerSaverService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Landroid/server/PowerSaverService;->isCdma:Z

    return v0
.end method

.method static synthetic access$1902(Landroid/server/PowerSaverService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Landroid/server/PowerSaverService;->isCdma:Z

    return p1
.end method

.method static synthetic access$200(Landroid/server/PowerSaverService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Landroid/server/PowerSaverService;->originalDataOn:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/server/PowerSaverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/server/PowerSaverService;->syncEnabledServices()V

    return-void
.end method

.method static synthetic access$202(Landroid/server/PowerSaverService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Landroid/server/PowerSaverService;->originalDataOn:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/server/PowerSaverService;)Landroid/telephony/TelephonyManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Landroid/server/PowerSaverService;->telephony:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/server/PowerSaverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/server/PowerSaverService;->updateSettings()V

    return-void
.end method

.method static synthetic access$300(Landroid/server/PowerSaverService;)Landroid/net/ConnectivityManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Landroid/server/PowerSaverService;->connectivity:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/PowerSaverService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Landroid/server/PowerSaverService;->originalNetworkMode:I

    return v0
.end method

.method static synthetic access$500(Landroid/server/PowerSaverService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/server/PowerSaverService;->requestPhoneStateChange(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/server/PowerSaverService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Landroid/server/PowerSaverService;->mScreenOffWifiMode:I

    return v0
.end method

.method static synthetic access$700(Landroid/server/PowerSaverService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Landroid/server/PowerSaverService;->originalWifiEnabled:Z

    return v0
.end method

.method static synthetic access$702(Landroid/server/PowerSaverService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Landroid/server/PowerSaverService;->originalWifiEnabled:Z

    return p1
.end method

.method static synthetic access$800(Landroid/server/PowerSaverService;)Landroid/net/wifi/WifiManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Landroid/server/PowerSaverService;->wifi:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$900(Landroid/server/PowerSaverService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Landroid/server/PowerSaverService;->skipReadingCurrentState:Z

    return v0
.end method

.method static synthetic access$902(Landroid/server/PowerSaverService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Landroid/server/PowerSaverService;->skipReadingCurrentState:Z

    return p1
.end method

.method private areMonitoredAppsRunning()Z
    .registers 2

    .prologue
    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method private cancelAllTasks()V
    .registers 3

    .prologue
    .line 605
    iget-object v0, p0, Landroid/server/PowerSaverService;->scheduleScreenOffPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_b

    .line 606
    iget-object v0, p0, Landroid/server/PowerSaverService;->alarms:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/server/PowerSaverService;->scheduleScreenOffPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 607
    :cond_b
    iget-object v0, p0, Landroid/server/PowerSaverService;->scheduleScreenOnPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_16

    .line 608
    iget-object v0, p0, Landroid/server/PowerSaverService;->alarms:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/server/PowerSaverService;->scheduleScreenOnPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 609
    :cond_16
    iget-object v0, p0, Landroid/server/PowerSaverService;->scheduleSyncTaskPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_21

    .line 610
    iget-object v0, p0, Landroid/server/PowerSaverService;->alarms:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/server/PowerSaverService;->scheduleSyncTaskPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 611
    :cond_21
    return-void
.end method

.method private handleScreenOffData()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    iget v0, p0, Landroid/server/PowerSaverService;->mScreenOffDataMode:I

    packed-switch v0, :pswitch_data_54

    .line 197
    :cond_7
    :goto_7
    iget v0, p0, Landroid/server/PowerSaverService;->mScreenOffWifiMode:I

    packed-switch v0, :pswitch_data_5c

    .line 208
    :goto_c
    return-void

    .line 180
    :pswitch_d
    iget-boolean v0, p0, Landroid/server/PowerSaverService;->isCdma:Z

    if-eqz v0, :cond_1d

    .line 181
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/server/PowerSaverService;->requestPhoneStateChange(I)V

    .line 182
    const-string v0, "PowerSaverService"

    const-string v1, "Not requesting 2G but MODE_CDMA (4)"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 185
    :cond_1d
    const-string v0, "PowerSaverService"

    const-string v1, "handleScreenOffData: requesting 2G only"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, v3}, Landroid/server/PowerSaverService;->requestPhoneStateChange(I)V

    goto :goto_7

    .line 190
    :pswitch_28
    const-string v0, "PowerSaverService"

    const-string v1, "handleScreenOffData: turning data off"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Landroid/server/PowerSaverService;->connectivity:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_7

    .line 192
    iget-object v0, p0, Landroid/server/PowerSaverService;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_7

    .line 199
    :pswitch_39
    const-string v0, "PowerSaverService"

    const-string v1, "handleScreenOffData: turning wifi off at user request"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Landroid/server/PowerSaverService;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_c

    .line 203
    :pswitch_46
    const-string v0, "PowerSaverService"

    const-string v1, "handleScreenOffData: turning wifi ON while screen is off at user request"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Landroid/server/PowerSaverService;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_c

    .line 178
    nop

    :pswitch_data_54
    .packed-switch 0x15
        :pswitch_d
        :pswitch_28
    .end packed-switch

    .line 197
    :pswitch_data_5c
    .packed-switch 0x29
        :pswitch_39
        :pswitch_46
    .end packed-switch
.end method

.method private isValidNetwork(I)Z
    .registers 6
    .parameter "networkType"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 636
    iget-object v0, p0, Landroid/server/PowerSaverService;->telephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_13

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Landroid/server/PowerSaverService;->isCdma:Z

    .line 638
    packed-switch p1, :pswitch_data_1e

    :pswitch_11
    move v1, v2

    .line 651
    :cond_12
    :goto_12
    return v1

    :cond_13
    move v0, v2

    .line 636
    goto :goto_c

    .line 644
    :pswitch_15
    iget-boolean v1, p0, Landroid/server/PowerSaverService;->isCdma:Z

    goto :goto_12

    .line 649
    :pswitch_18
    iget-boolean v0, p0, Landroid/server/PowerSaverService;->isCdma:Z

    if-eqz v0, :cond_12

    move v1, v2

    goto :goto_12

    .line 638
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method

.method private requestPhoneStateChange(I)V
    .registers 6
    .parameter "newState"

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/server/PowerSaverService;->isValidNetwork(I)Z

    move-result v1

    if-nez v1, :cond_38

    .line 615
    const-string v1, "PowerSaverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting to switch to an invalid network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v1, "PowerSaverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone CDMA status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/server/PowerSaverService;->isCdma:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_38
    const-string v1, "PowerSaverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending request to change phone network mode to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, i:Landroid/content/Intent;
    const-string/jumbo v1, "networkMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    iget-object v1, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 623
    return-void
.end method

.method private requestPreferredDataType()V
    .registers 5

    .prologue
    .line 473
    iget-object v1, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "preferred_network_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 475
    .local v0, settingVal:I
    iget-object v1, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "power_saver_original_network_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    const-string v1, "PowerSaverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPreferredDataType: Network Mode from settings (requested by screen off): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iput v0, p0, Landroid/server/PowerSaverService;->originalNetworkMode:I

    .line 482
    return-void
.end method

.method private scheduleScreenOffTask()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 231
    invoke-direct {p0}, Landroid/server/PowerSaverService;->areMonitoredAppsRunning()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 232
    const-string v3, "PowerSaverService"

    const-string v4, "Monitored apps are running, not scheduling PowerSaver functions."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_f
    return-void

    .line 236
    :cond_10
    iget-object v3, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "google_music_is_playing"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_26

    .line 238
    const-string v3, "PowerSaverService"

    const-string v4, "Google Music is detected playing/buffering. Not scheduling PowerSaver functions"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 243
    :cond_26
    iget-boolean v3, p0, Landroid/server/PowerSaverService;->isCharging:Z

    if-eqz v3, :cond_32

    .line 244
    const-string v3, "PowerSaverService"

    const-string v4, "Phone is on power, not scheduling PowerSaver functions."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 248
    :cond_32
    iget-object v3, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 250
    .local v1, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4a

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-ne v3, v5, :cond_52

    .line 252
    :cond_4a
    const-string v3, "PowerSaverService"

    const-string v4, "Phone is ringing or in a phone call, not enabling power saver"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 256
    :cond_52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 257
    .local v2, timeToStart:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 258
    const/16 v3, 0xd

    iget v4, p0, Landroid/server/PowerSaverService;->mDataScreenOffSecondDelay:I

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.service.PowerSaverService.ACTION_SCREEN_OFF"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, i:Landroid/content/Intent;
    iget-object v3, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Landroid/server/PowerSaverService;->scheduleScreenOffPendingIntent:Landroid/app/PendingIntent;

    .line 262
    iget-object v3, p0, Landroid/server/PowerSaverService;->alarms:Landroid/app/AlarmManager;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Landroid/server/PowerSaverService;->scheduleScreenOffPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 265
    const-string v3, "PowerSaverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scheduleScreenOffTask() with delay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/server/PowerSaverService;->mDataScreenOffSecondDelay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f
.end method

.method private scheduleScreenOffTaskWithBackoff()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 216
    .local v1, timeToStart:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 217
    const/16 v2, 0xd

    iget v3, p0, Landroid/server/PowerSaverService;->mDataScreenOffSecondDelay:I

    iget v4, p0, Landroid/server/PowerSaverService;->screenOffScheduleAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/server/PowerSaverService;->screenOffScheduleAttempts:I

    mul-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.service.PowerSaverService.ACTION_SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/server/PowerSaverService;->scheduleScreenOffPendingIntent:Landroid/app/PendingIntent;

    .line 222
    iget-object v2, p0, Landroid/server/PowerSaverService;->alarms:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object v5, p0, Landroid/server/PowerSaverService;->scheduleScreenOffPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 225
    const-string v2, "PowerSaverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleScreenOffTask() with multiplicative delay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/server/PowerSaverService;->mDataScreenOffSecondDelay:I

    iget v5, p0, Landroid/server/PowerSaverService;->screenOffScheduleAttempts:I

    mul-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method

.method private scheduleScreenOnTask()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 270
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 271
    .local v1, timeToStart:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 272
    const/16 v2, 0xd

    iget v3, p0, Landroid/server/PowerSaverService;->mDataScreenOnSecondDelay:I

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.service.PowerSaverService.ACTION_SCREEN_ON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/server/PowerSaverService;->scheduleScreenOnPendingIntent:Landroid/app/PendingIntent;

    .line 276
    iget-object v2, p0, Landroid/server/PowerSaverService;->alarms:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object v5, p0, Landroid/server/PowerSaverService;->scheduleScreenOnPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 279
    const-string v2, "PowerSaverService"

    const-string/jumbo v3, "scheduleScreenOnask()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method private scheduleSyncTask()V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 285
    .local v10, timeToStart:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 286
    const/16 v0, 0xd

    iget v2, p0, Landroid/server/PowerSaverService;->mSyncScreenOffSecondInterval:I

    invoke-virtual {v10, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 288
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v2, p0, Landroid/server/PowerSaverService;->mSyncScreenOffSecondInterval:I

    int-to-long v2, v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 291
    .local v4, interval:J
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.service.PowerSaverService.ACTION_SYNC"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v7, i:Landroid/content/Intent;
    iget-object v0, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/server/PowerSaverService;->scheduleSyncTaskPendingIntent:Landroid/app/PendingIntent;

    .line 293
    iget-object v0, p0, Landroid/server/PowerSaverService;->alarms:Landroid/app/AlarmManager;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v6, p0, Landroid/server/PowerSaverService;->scheduleSyncTaskPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 298
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 300
    .local v8, secondsInterval:J
    const-string v0, "PowerSaverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleSyncTask() with interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method private setLowerPowerPhoneMode(Z)V
    .registers 6
    .parameter "useLowerPower"

    .prologue
    const/4 v1, 0x1

    .line 626
    iget-object v2, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 628
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    .line 629
    if-nez p1, :cond_19

    :goto_15
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->toggleLTE(Z)V

    .line 633
    :cond_18
    :goto_18
    return-void

    .line 629
    :cond_19
    const/4 v1, 0x0

    goto :goto_15

    .line 630
    :cond_1b
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-ne v2, v1, :cond_18

    .line 631
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->toggle2G(Z)V

    goto :goto_18
.end method

.method private syncAllServices()V
    .registers 12

    .prologue
    .line 453
    const-string v9, "PowerSaverService"

    const-string v10, "Syncing all services"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v9, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 455
    .local v1, acm:Landroid/accounts/AccountManager;
    const/4 v0, 0x0

    .line 457
    .local v0, acct:[Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 458
    .local v8, types:[Landroid/content/SyncAdapterType;
    move-object v2, v8

    .local v2, arr$:[Landroid/content/SyncAdapterType;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_15
    if-ge v5, v6, :cond_41

    aget-object v7, v2, v5

    .line 460
    .local v7, type:Landroid/content/SyncAdapterType;
    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 462
    iget-object v9, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 463
    const/4 v4, 0x0

    .local v4, i:I
    :goto_26
    array-length v9, v0

    if-ge v4, v9, :cond_3e

    .line 464
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 465
    .local v3, extras:Landroid/os/Bundle;
    const-string v9, "force"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 466
    aget-object v9, v0, v4

    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v9, v10, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 463
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 458
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v4           #i:I
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 470
    .end local v7           #type:Landroid/content/SyncAdapterType;
    :cond_41
    return-void
.end method

.method private syncEnabledServices()V
    .registers 12

    .prologue
    .line 485
    iget-object v9, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 487
    .local v1, acm:Landroid/accounts/AccountManager;
    const/4 v0, 0x0

    .line 489
    .local v0, acct:[Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 490
    .local v8, types:[Landroid/content/SyncAdapterType;
    move-object v2, v8

    .local v2, arr$:[Landroid/content/SyncAdapterType;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_e
    if-ge v5, v6, :cond_44

    aget-object v7, v2, v5

    .line 491
    .local v7, type:Landroid/content/SyncAdapterType;
    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 493
    iget-object v9, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 495
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1f
    array-length v9, v0

    if-ge v4, v9, :cond_41

    .line 497
    aget-object v9, v0, v4

    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 498
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 499
    .local v3, extras:Landroid/os/Bundle;
    const-string v9, "force"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 500
    aget-object v9, v0, v4

    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v9, v10, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 495
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 490
    .end local v4           #i:I
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 505
    .end local v7           #type:Landroid/content/SyncAdapterType;
    :cond_44
    return-void
.end method

.method private updateSettings()V
    .registers 5

    .prologue
    const/16 v3, 0xa

    .line 696
    iget-object v1, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 698
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "power_saver_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/server/PowerSaverService;->mMode:I

    .line 700
    const-string/jumbo v1, "power_saver_sync_mode"

    const/16 v2, 0x23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/server/PowerSaverService;->mScreenOffSyncMode:I

    .line 702
    const-string/jumbo v1, "power_saver_sync_interval"

    const/16 v2, 0x384

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/server/PowerSaverService;->mSyncScreenOffSecondInterval:I

    .line 704
    const-string/jumbo v1, "power_saver_data_delay"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/server/PowerSaverService;->mDataScreenOffSecondDelay:I

    .line 706
    const-string/jumbo v1, "power_saver_data_mode"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/server/PowerSaverService;->mScreenOffDataMode:I

    .line 708
    const-string/jumbo v1, "power_saver_wifi_mode"

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/server/PowerSaverService;->mScreenOffWifiMode:I

    .line 710
    const-string/jumbo v1, "power_saver_sync_data_mode"

    const/16 v2, 0x36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/server/PowerSaverService;->mSyncDataMode:I

    .line 712
    const-string/jumbo v1, "power_saver_sync_mobile_preference"

    const/16 v2, 0x3f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/server/PowerSaverService;->mSyncMobileDataMode:I

    .line 716
    iget v1, p0, Landroid/server/PowerSaverService;->mMode:I

    if-ne v1, v3, :cond_64

    .line 717
    invoke-direct {p0}, Landroid/server/PowerSaverService;->cancelAllTasks()V

    .line 726
    :cond_64
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 131
    iget v4, p0, Landroid/server/PowerSaverService;->mMode:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_9

    .line 174
    :cond_8
    :goto_8
    return-void

    .line 134
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 137
    iput-boolean v3, p0, Landroid/server/PowerSaverService;->isScreenOn:Z

    .line 138
    invoke-direct {p0}, Landroid/server/PowerSaverService;->cancelAllTasks()V

    .line 139
    invoke-direct {p0}, Landroid/server/PowerSaverService;->scheduleScreenOffTask()V

    goto :goto_8

    .line 141
    :cond_1e
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 142
    iput-boolean v2, p0, Landroid/server/PowerSaverService;->isScreenOn:Z

    .line 143
    invoke-direct {p0}, Landroid/server/PowerSaverService;->cancelAllTasks()V

    .line 144
    invoke-direct {p0}, Landroid/server/PowerSaverService;->scheduleScreenOnTask()V

    goto :goto_8

    .line 146
    :cond_2f
    const-string v4, "com.android.internal.telephony.NETWORK_MODE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 149
    const-string v2, "PowerSaverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received network mode from intent (ignoring): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "networkMode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 153
    :cond_62
    const-string v4, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 154
    iget-boolean v2, p0, Landroid/server/PowerSaverService;->isScreenOn:Z

    if-nez v2, :cond_8

    .line 157
    const-string v2, "PowerSaverService"

    const-string v4, "Received sync changed intent"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v2, "active"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 159
    .local v1, isActive:Z
    if-nez v1, :cond_8

    .line 161
    invoke-direct {p0}, Landroid/server/PowerSaverService;->handleScreenOffData()V

    goto :goto_8

    .line 164
    .end local v1           #isActive:Z
    :cond_81
    const-string v4, "android.service.PowerSaverService.ACTION_SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 165
    iget-object v2, p0, Landroid/server/PowerSaverService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/server/PowerSaverService;->screenOffTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    .line 166
    :cond_92
    const-string v4, "android.service.PowerSaverService.ACTION_SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 167
    iget-object v2, p0, Landroid/server/PowerSaverService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/server/PowerSaverService;->screenOnTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    .line 168
    :cond_a3
    const-string v4, "android.service.PowerSaverService.ACTION_SYNC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 169
    iget-object v2, p0, Landroid/server/PowerSaverService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/server/PowerSaverService;->scheduledSyncTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    .line 170
    :cond_b4
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 171
    const-string v4, "level"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/server/PowerSaverService;->batteryLevel:I

    .line 172
    const-string/jumbo v4, "plugged"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_d1

    :goto_cd
    iput-boolean v2, p0, Landroid/server/PowerSaverService;->isCharging:Z

    goto/16 :goto_8

    :cond_d1
    move v2, v3

    goto :goto_cd
.end method

.method public systemReady()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 508
    iget-object v7, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    if-nez v7, :cond_c

    .line 509
    const-string v7, "PowerSaverService"

    const-string v8, "mContext is null!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_c
    iget-object v7, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Landroid/server/PowerSaverService;->connectivity:Landroid/net/ConnectivityManager;

    .line 513
    iget-object v7, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Landroid/server/PowerSaverService;->wifi:Landroid/net/wifi/WifiManager;

    .line 514
    iget-object v7, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Landroid/server/PowerSaverService;->telephony:Landroid/telephony/TelephonyManager;

    .line 515
    iget-object v7, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    iput-object v7, p0, Landroid/server/PowerSaverService;->alarms:Landroid/app/AlarmManager;

    .line 517
    new-instance v4, Landroid/server/PowerSaverService$SettingsObserver;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v7}, Landroid/server/PowerSaverService$SettingsObserver;-><init>(Landroid/server/PowerSaverService;Landroid/os/Handler;)V

    .line 518
    .local v4, settingsObserver:Landroid/server/PowerSaverService$SettingsObserver;
    invoke-virtual {v4}, Landroid/server/PowerSaverService$SettingsObserver;->observe()V

    .line 519
    invoke-direct {p0}, Landroid/server/PowerSaverService;->updateSettings()V

    .line 521
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 522
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const-string v7, "com.android.internal.telephony.NETWORK_MODE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v7, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v7, "android.service.PowerSaverService.ACTION_SCREEN_OFF"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v7, "android.service.PowerSaverService.ACTION_SCREEN_ON"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v7, "android.service.PowerSaverService.ACTION_SYNC"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    iget-object v7, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 532
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Landroid/server/PowerSaverService;->handler:Landroid/os/Handler;

    .line 534
    const-string v7, "PowerSaverService"

    const-string/jumbo v8, "system ready"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v7, p0, Landroid/server/PowerSaverService;->handler:Landroid/os/Handler;

    new-instance v8, Landroid/server/PowerSaverService$4;

    invoke-direct {v8, p0}, Landroid/server/PowerSaverService$4;-><init>(Landroid/server/PowerSaverService;)V

    const-wide/16 v9, 0x1388

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 546
    iget v7, p0, Landroid/server/PowerSaverService;->mMode:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_a2

    .line 602
    :cond_a1
    :goto_a1
    return-void

    .line 557
    :cond_a2
    :try_start_a2
    iget-object v7, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "power_saver_original_network_mode"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 560
    .local v2, powerSaverSavedNetworkMode:I
    iget-object v7, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "preferred_network_mode"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_bb
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a2 .. :try_end_bb} :catch_16f

    move-result v5

    .line 568
    .local v5, systemSavedNetworkMode:I
    if-eq v2, v5, :cond_102

    .line 569
    const-string v7, "PowerSaverService"

    const-string v8, "System and PowerSaver saved network modes mismatch. Caused by hardreboot or the like."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v7, "PowerSaverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "System mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and PowerSaver mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string v7, "PowerSaverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Going to request the phone mode at last screen shut-off: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-direct {p0, v2}, Landroid/server/PowerSaverService;->requestPhoneStateChange(I)V

    .line 578
    :cond_102
    iget-object v7, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "power_saver_original_network_on"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 580
    .local v3, powerSaverSavedNetworkOn:I
    iget-object v7, p0, Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "mobile_data"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 582
    .local v6, systemSavedNetworkOn:I
    if-eq v3, v6, :cond_a1

    .line 583
    const-string v7, "PowerSaverService"

    const-string v8, "System and PowerSaver saved mobile network state (on/off) mismatch. Caused by hardreboot or the like."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v7, "PowerSaverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "System mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and PowerSaver mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string v7, "PowerSaverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Going to request mobile data at last screen shut-off: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    if-ne v3, v11, :cond_a1

    .line 593
    iget-object v7, p0, Landroid/server/PowerSaverService;->handler:Landroid/os/Handler;

    new-instance v8, Landroid/server/PowerSaverService$5;

    invoke-direct {v8, p0}, Landroid/server/PowerSaverService$5;-><init>(Landroid/server/PowerSaverService;)V

    const-wide/16 v9, 0x2710

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a1

    .line 562
    .end local v2           #powerSaverSavedNetworkMode:I
    .end local v3           #powerSaverSavedNetworkOn:I
    .end local v5           #systemSavedNetworkMode:I
    .end local v6           #systemSavedNetworkOn:I
    :catch_16f
    move-exception v0

    .line 563
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v7, "PowerSaverService"

    const-string v8, "PREFERRED_NETWORK_MODE or powersaver saved network mode doesn\'t exist. Could be first boot. Could be wtf"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a1
.end method
