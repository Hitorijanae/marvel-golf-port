.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGEMENT_WIFI_CLIENT:Ljava/lang/String; = "android.net.hotspot.management_wifi_client"

.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final AKA_INVALID_SIM_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.AKA_INVALID_SIM"

.field public static final ASSOC_LIST_CHANGE_ACTION:Ljava/lang/String; = "android.net.hotspot.ASSOCLIST"

.field public static final CMD_CHECK_IMEI_VALUE:I = 0x2a

.field public static final CMD_CONNECT_NETWORK:I = 0x1

.field public static final CMD_DISABLE_NETWORK:I = 0x5

.field public static final CMD_ENABLE_CHECK_IMEI_VALUE:I = 0x29

.field public static final CMD_ENABLE_TRAFFIC_STATS_POLL:I = 0x15

.field public static final CMD_FORGET_NETWORK:I = 0x2

.field public static final CMD_SAVE_NETWORK:I = 0x3

.field public static final CMD_START_ACCESS_POINT_MHS:I = 0x1f

.field public static final CMD_START_WPS:I = 0x4

.field public static final CMD_START_WPS_REGISTRAR:I = 0x7

.field public static final CMD_STOP_ACCESS_POINT_MHS:I = 0x20

.field public static final CMD_STOP_WPS:I = 0x6

.field public static final CMD_STOP_WPS_REGISTRAR:I = 0x8

.field public static final CMD_TRAFFIC_STATS_POLL:I = 0x16

.field public static final CMD_WPS_COMPLETED:I = 0xb

.field public static final CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

.field public static final CW_NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CW_STATE_CHANGE"

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DONGLE_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.DONGLE_SCAN_RESULTS"

.field public static final EAP_NOTIFICATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.EAP_NOTIFICATION"

.field public static final ERROR_ACTION:Ljava/lang/String; = "android.net.wifi.ERROR"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BLOCK_MAC:Ljava/lang/String; = "hotspot_block_mac"

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final EXTRA_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final EXTRA_LATEST_TIME_CONNECTION_REQUEST:Ljava/lang/String; = "hotspot_lastest_time_of_request"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_TYPE_DATA:Ljava/lang/String; = "typeData"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final HOTSPOT_CONNECTION_REQUEST_NOTIFY:Ljava/lang/String; = "android.net.hotspot.connecitonrequest"

.field public static final L2PE_FAIL:Ljava/lang/String; = "android.net.hotspot.L2PE_FAIL"

.field public static final L2PE_SUCCESSFUL:Ljava/lang/String; = "android.net.hotspot.L2PE_SUCCESSFUL"

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final SMART_WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.SMART_WIFI_STATE_CHANGED"

.field public static final SMART_WIFI_STATE_START:I = 0x1

.field public static final SMART_WIFI_STATE_STOP:I = 0x0

.field public static final SMART_WIFI_STATUS_IDEL:I = 0x0

.field public static final SMART_WIFI_STATUS_READY:I = 0x1

.field public static final SMART_WIFI_STATUS_RUNNING:I = 0x2

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WEP_ERROR:I = 0x2

.field public static final WIFIDISPLAY_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe

.field public static final WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final WIFI_FREQUENCY_BAND_AUTO:I = 0x0

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WPS_FAIL_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WPS_FAIL"

.field public static final WPS_OVERLAP_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WPS_OVERLAP"

.field public static final WPS_OVERLAP_ERROR:I = 0x1

.field public static final WPS_REGISTRAR_FAIL:Ljava/lang/String; = "android.net.hotspot.WPS_REGISTRAR_FAIL"

.field public static final WPS_REGISTRAR_START:Ljava/lang/String; = "android.net.hotspot.WPS_REGISTRAR_START"

.field public static final WPS_REGISTRAR_SUCCESSFUL:Ljava/lang/String; = "android.net.hotspot.WPS_REGISTRAR_SUCCESSFUL"

.field public static final WPS_SUCCESS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WPS_SUCCESS"

.field public static final cw_ssid_key:Ljava/lang/String; = "cw_ssid_key"


# instance fields
.field private mActiveLockCount:I

.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V
    .registers 4
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 585
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 586
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mHandler:Landroid/os/Handler;

    .line 587
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$008(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$010(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4
    .parameter "config"

    .prologue
    .line 669
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 671
    :goto_6
    return v1

    .line 670
    :catch_7
    move-exception v0

    .line 671
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public static calculateSignalLevel(II)I
    .registers 9
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    const/4 v6, 0x5

    const/16 v5, -0x46

    const/16 v4, -0x50

    .line 1135
    const/4 v1, 0x0

    .line 1136
    .local v1, level:I
    const/4 v3, 0x4

    if-eq p1, v3, :cond_b

    if-ne p1, v6, :cond_23

    .line 1137
    :cond_b
    if-lt p0, v5, :cond_13

    .line 1138
    const/4 v1, 0x3

    .line 1146
    :goto_e
    if-ne p1, v6, :cond_12

    add-int/lit8 v1, v1, 0x1

    .line 1158
    :cond_12
    :goto_12
    return v1

    .line 1139
    :cond_13
    if-ge p0, v5, :cond_19

    if-lt p0, v4, :cond_19

    .line 1140
    const/4 v1, 0x2

    goto :goto_e

    .line 1141
    :cond_19
    if-ge p0, v4, :cond_21

    const/16 v3, -0x55

    if-lt p0, v3, :cond_21

    .line 1142
    const/4 v1, 0x1

    goto :goto_e

    .line 1144
    :cond_21
    const/4 v1, 0x0

    goto :goto_e

    .line 1148
    :cond_23
    const/16 v3, -0x64

    if-gt p0, v3, :cond_29

    .line 1149
    const/4 v1, 0x0

    goto :goto_12

    .line 1150
    :cond_29
    const/16 v3, -0x37

    if-lt p0, v3, :cond_30

    .line 1151
    add-int/lit8 v1, p1, -0x1

    goto :goto_12

    .line 1153
    :cond_30
    const/high16 v0, 0x4234

    .line 1154
    .local v0, inputRange:F
    add-int/lit8 v3, p1, -0x1

    int-to-float v2, v3

    .line 1155
    .local v2, outputRange:F
    add-int/lit8 v3, p0, 0x64

    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v0

    float-to-int v1, v3

    goto :goto_12
.end method

.method public static calculateSignalLevel(III)I
    .registers 4
    .parameter "rssi"
    .parameter "numLevels"
    .parameter "frequency"

    .prologue
    .line 2286
    invoke-static {p0, p1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method public static compareSignalLevel(II)I
    .registers 3
    .parameter "rssiA"
    .parameter "rssiB"

    .prologue
    .line 1172
    sub-int v0, p0, p1

    return v0
.end method


# virtual methods
.method public NotifyWifiPhoneCallComeIn()Z
    .registers 3

    .prologue
    .line 2002
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->NotifyWifiPhoneCallComeIn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2004
    :goto_6
    return v1

    .line 2003
    :catch_7
    move-exception v0

    .line 2004
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public NotifyWifiPhoneCallEnd()Z
    .registers 3

    .prologue
    .line 2010
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->NotifyWifiPhoneCallEnd()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2012
    :goto_6
    return v1

    .line 2011
    :catch_7
    move-exception v0

    .line 2012
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    const/4 v0, -0x1

    .line 630
    if-nez p1, :cond_4

    .line 634
    :goto_3
    return v0

    .line 633
    :cond_4
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 634
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_3
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .registers 4
    .parameter "bssid"

    .prologue
    .line 1342
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addToBlacklist(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1343
    const/4 v1, 0x1

    .line 1345
    :goto_6
    return v1

    .line 1344
    :catch_7
    move-exception v0

    .line 1345
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .parameter "srcContext"
    .parameter "srcHandler"

    .prologue
    .line 1416
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 1417
    return-void
.end method

.method public checkWifiApEnabledMhsRequest()I
    .registers 3

    .prologue
    .line 2315
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->checkWifiApEnabledMhsRequest()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2317
    :goto_6
    return v1

    .line 2316
    :catch_7
    move-exception v0

    .line 2317
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public clearBlacklist()Z
    .registers 3

    .prologue
    .line 1359
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->clearBlacklist()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1360
    const/4 v1, 0x1

    .line 1362
    :goto_6
    return v1

    .line 1361
    :catch_7
    move-exception v0

    .line 1362
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public connectNetwork(I)V
    .registers 5
    .parameter "networkId"

    .prologue
    .line 1457
    if-gez p1, :cond_3

    .line 1467
    :goto_2
    return-void

    .line 1460
    :cond_3
    :try_start_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_e

    .line 1461
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->tryTostartCWDeRegister()V

    .line 1463
    :cond_e
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_15

    goto :goto_2

    .line 1464
    :catch_15
    move-exception v0

    .line 1465
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public connectNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 5
    .parameter "config"

    .prologue
    .line 1433
    if-nez p1, :cond_3

    .line 1443
    :goto_2
    return-void

    .line 1436
    :cond_3
    :try_start_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_e

    .line 1437
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->tryTostartCWDeRegister()V

    .line 1439
    :cond_e
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_15

    goto :goto_2

    .line 1440
    :catch_15
    move-exception v0

    .line 1441
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .registers 4
    .parameter "tag"

    .prologue
    .line 1810
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 1776
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .parameter "tag"

    .prologue
    .line 1792
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disableNetwork(II)V
    .registers 5
    .parameter "netId"
    .parameter "reason"

    .prologue
    .line 734
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 735
    return-void
.end method

.method public disableNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 720
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 722
    :goto_6
    return v1

    .line 721
    :catch_7
    move-exception v0

    .line 722
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disableSsdpPacket()Z
    .registers 3

    .prologue
    .line 2026
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disableSsdpPacket()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2028
    :goto_6
    return v1

    .line 2027
    :catch_7
    move-exception v0

    .line 2028
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disconnect()Z
    .registers 3

    .prologue
    .line 744
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 745
    const/4 v1, 0x1

    .line 747
    :goto_6
    return v1

    .line 746
    :catch_7
    move-exception v0

    .line 747
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableAutoIP(I)Z
    .registers 4
    .parameter "state"

    .prologue
    .line 2034
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableAutoIP(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2036
    :goto_6
    return v1

    .line 2035
    :catch_7
    move-exception v0

    .line 2036
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableNetwork(IZ)Z
    .registers 5
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 705
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 707
    :goto_6
    return v1

    .line 706
    :catch_7
    move-exception v0

    .line 707
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enablePowerActiveForFotaDownload(Z)Z
    .registers 4
    .parameter "enable"

    .prologue
    .line 2079
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enablePowerActiveForFotaDownload(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2081
    :goto_6
    return v1

    .line 2080
    :catch_7
    move-exception v0

    .line 2081
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enablePowerActiveMode(Z)Z
    .registers 4
    .parameter "enable"

    .prologue
    .line 2071
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enablePowerActiveMode(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2073
    :goto_6
    return v1

    .line 2072
    :catch_7
    move-exception v0

    .line 2073
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableSsdpPacket()Z
    .registers 3

    .prologue
    .line 2018
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->enableSsdpPacket()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2020
    :goto_6
    return v1

    .line 2019
    :catch_7
    move-exception v0

    .line 2020
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public forgetNetwork(I)V
    .registers 4
    .parameter "netId"

    .prologue
    .line 1503
    if-gez p1, :cond_3

    .line 1508
    :goto_2
    return-void

    .line 1507
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_2
.end method

.method public getAssocListStr()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2216
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAssocListStr()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2218
    :goto_6
    return-object v1

    .line 2217
    :catch_7
    move-exception v0

    .line 2218
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAssociationManual()I
    .registers 3

    .prologue
    .line 781
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAssociationManual()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 783
    :goto_6
    return v1

    .line 782
    :catch_7
    move-exception v0

    .line 783
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getClientInfo()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2224
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getClientInfo()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2226
    :goto_6
    return-object v1

    .line 2225
    :catch_7
    move-exception v0

    .line 2226
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConfigFile()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1572
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfigFile()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1574
    :goto_6
    return-object v1

    .line 1573
    :catch_7
    move-exception v0

    .line 1574
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 611
    :goto_6
    return-object v1

    .line 610
    :catch_7
    move-exception v0

    .line 611
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .prologue
    .line 856
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 858
    :goto_6
    return-object v1

    .line 857
    :catch_7
    move-exception v0

    .line 858
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectionPolicyEnabled()Z
    .registers 3

    .prologue
    .line 2299
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionPolicyEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2301
    :goto_6
    return v1

    .line 2300
    :catch_7
    move-exception v0

    .line 2301
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 956
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 958
    :goto_6
    return-object v1

    .line 957
    :catch_7
    move-exception v0

    .line 958
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDockWifiApAutoEnabled()Z
    .registers 3

    .prologue
    .line 2111
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDockWifiApAutoEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2113
    :goto_6
    return v1

    .line 2112
    :catch_7
    move-exception v0

    .line 2113
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDockWifiAutoEnabled()Z
    .registers 3

    .prologue
    .line 2127
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDockWifiAutoEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2129
    :goto_6
    return v1

    .line 2128
    :catch_7
    move-exception v0

    .line 2129
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDongleScanList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1044
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDongleScanList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1046
    :goto_6
    return-object v1

    .line 1045
    :catch_7
    move-exception v0

    .line 1046
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getFrequencyBand()I
    .registers 3

    .prologue
    .line 930
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFrequencyBand()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 932
    :goto_6
    return v1

    .line 931
    :catch_7
    move-exception v0

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getHotspotNumAllowedChannels()I
    .registers 3

    .prologue
    .line 2232
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getHotspotNumAllowedChannels()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2234
    :goto_6
    return v1

    .line 2233
    :catch_7
    move-exception v0

    .line 2234
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getMessenger()Landroid/os/Messenger;
    .registers 3

    .prologue
    .line 1560
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getMessenger()Landroid/os/Messenger;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1562
    :goto_6
    return-object v1

    .line 1561
    :catch_7
    move-exception v0

    .line 1562
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMostPreferredNetwork()I
    .registers 3

    .prologue
    .line 2200
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getMostPreferredNetwork()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2202
    :goto_6
    return v1

    .line 2201
    :catch_7
    move-exception v0

    .line 2202
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getRequestedList()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2240
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRequestedList()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2242
    :goto_6
    return-object v1

    .line 2241
    :catch_7
    move-exception v0

    .line 2242
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getScanResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 868
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getScanResults()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 870
    :goto_6
    return-object v1

    .line 869
    :catch_7
    move-exception v0

    .line 870
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSmartWifiState()I
    .registers 3

    .prologue
    .line 2047
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getSmartWifiEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2049
    :goto_6
    return v1

    .line 2048
    :catch_7
    move-exception v0

    .line 2049
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getTetheringDhcpRange()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 2323
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getTetheringDhcpRange()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2325
    :goto_6
    return-object v1

    .line 2324
    :catch_7
    move-exception v0

    .line 2325
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWagAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2176
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWagAddress()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2178
    :goto_6
    return-object v1

    .line 2177
    :catch_7
    move-exception v0

    .line 2178
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWagAsUserDefined()Z
    .registers 3

    .prologue
    .line 2168
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWagAsUserDefined()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2170
    :goto_6
    return v1

    .line 2169
    :catch_7
    move-exception v0

    .line 2170
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .prologue
    .line 1265
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1267
    :goto_6
    return-object v1

    .line 1266
    :catch_7
    move-exception v0

    .line 1267
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApState()I
    .registers 4

    .prologue
    .line 1210
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1212
    const-string v1, "WifiManager"

    const-string v2, "WifiDisplay: WiFi Display On, return WIFI_AP_STATE_DISABLED to getWifiApState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_12

    .line 1213
    const/16 v1, 0xb

    .line 1225
    :goto_11
    return v1

    .line 1216
    :catch_12
    move-exception v0

    .line 1217
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v2, "WifiDisplay: Got exception from getWifidisplayApEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_21

    move-result v1

    goto :goto_11

    .line 1224
    :catch_21
    move-exception v0

    .line 1225
    .restart local v0       #e:Landroid/os/RemoteException;
    const/16 v1, 0xe

    goto :goto_11
.end method

.method public getWifiOffloadEnabled()Z
    .registers 3

    .prologue
    .line 2095
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiOffloadEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2097
    :goto_6
    return v1

    .line 2096
    :catch_7
    move-exception v0

    .line 2097
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiState()I
    .registers 3

    .prologue
    .line 1108
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1110
    :goto_6
    return v1

    .line 1109
    :catch_7
    move-exception v0

    .line 1110
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public getWifidisplayApEnabled()Z
    .registers 3

    .prologue
    .line 988
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 990
    :goto_6
    return v1

    .line 989
    :catch_7
    move-exception v0

    .line 990
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifidisplayApState()I
    .registers 3

    .prologue
    .line 980
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifidisplayApState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 982
    :goto_6
    return v1

    .line 981
    :catch_7
    move-exception v0

    .line 982
    .local v0, e:Landroid/os/RemoteException;
    const/16 v1, 0xe

    goto :goto_6
.end method

.method public initializeMulticastFiltering()Z
    .registers 3

    .prologue
    .line 1992
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1993
    const/4 v1, 0x1

    .line 1995
    :goto_6
    return v1

    .line 1994
    :catch_7
    move-exception v0

    .line 1995
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isDualBandSupported()Z
    .registers 3

    .prologue
    .line 943
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 945
    :goto_6
    return v1

    .line 944
    :catch_7
    move-exception v0

    .line 945
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 1980
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1982
    :goto_6
    return v1

    .line 1981
    :catch_7
    move-exception v0

    .line 1982
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isWifiApEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1240
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1242
    const-string v2, "WifiManager"

    const-string v3, "WifiDisplay: WiFi Display On, return false to isWifiApEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_10
    :goto_10
    return v1

    .line 1246
    :cond_11
    const-string v2, "WifiManager"

    const-string v3, "WifiDisplay: isWifiApEnabled=FALSE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_22

    .line 1254
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_10

    const/4 v1, 0x1

    goto :goto_10

    .line 1248
    :catch_22
    move-exception v0

    .line 1249
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_10
.end method

.method public isWifiEnabled()Z
    .registers 3

    .prologue
    .line 1120
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isWifiPowerModeNormal()Z
    .registers 3

    .prologue
    .line 2063
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isWifiPowerModeNormal()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2065
    :goto_6
    return v1

    .line 2064
    :catch_7
    move-exception v0

    .line 2065
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public pingSupplicant()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 807
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_6

    .line 812
    :goto_5
    return v1

    .line 810
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 811
    :catch_d
    move-exception v0

    .line 812
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    .line 794
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 795
    const/4 v1, 0x1

    .line 797
    :goto_6
    return v1

    .line 796
    :catch_7
    move-exception v0

    .line 797
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reconnect()Z
    .registers 3

    .prologue
    .line 759
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 760
    const/4 v1, 0x1

    .line 762
    :goto_6
    return v1

    .line 761
    :catch_7
    move-exception v0

    .line 762
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public removeNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 685
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 687
    :goto_6
    return v1

    .line 686
    :catch_7
    move-exception v0

    .line 687
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public resetDhcpConfig()V
    .registers 2

    .prologue
    .line 2248
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->resetDhcpConfig()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2251
    :goto_5
    return-void

    .line 2249
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public saveConfiguration()Z
    .registers 3

    .prologue
    .line 885
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 887
    :goto_6
    return v1

    .line 886
    :catch_7
    move-exception v0

    .line 887
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public saveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 1485
    if-nez p1, :cond_3

    .line 1490
    :goto_2
    return-void

    .line 1489
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public setAssociationManual(I)Z
    .registers 4
    .parameter "isManual"

    .prologue
    .line 770
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setAssociationManual(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 771
    const/4 v1, 0x1

    .line 773
    :goto_6
    return v1

    .line 772
    :catch_7
    move-exception v0

    .line 773
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setConnectionPolicyEnabled(Z)Z
    .registers 4
    .parameter "enable"

    .prologue
    .line 2291
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setConnectionPolicyEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2293
    :goto_6
    return v1

    .line 2292
    :catch_7
    move-exception v0

    .line 2293
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .registers 4
    .parameter "country"
    .parameter "persist"

    .prologue
    .line 900
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 902
    :goto_5
    return-void

    .line 901
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setDockWifiApAutoEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 2103
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setDockWifiApAutoEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2105
    :goto_6
    return v1

    .line 2104
    :catch_7
    move-exception v0

    .line 2105
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setDockWifiAutoEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 2119
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setDockWifiAutoEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2121
    :goto_6
    return v1

    .line 2120
    :catch_7
    move-exception v0

    .line 2121
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setFrequencyBand(IZ)V
    .registers 4
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 915
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setFrequencyBand(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 917
    :goto_5
    return-void

    .line 916
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setHotspotAutoChannel(I)V
    .registers 3
    .parameter "autoChannel"

    .prologue
    .line 2135
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setHotspotAutoChannel(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2138
    :goto_5
    return-void

    .line 2136
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setMostPreferredNetwork(I)Z
    .registers 4
    .parameter "networkId"

    .prologue
    .line 2208
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setMostPreferredNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2210
    :goto_6
    return v1

    .line 2209
    :catch_7
    move-exception v0

    .line 2210
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWagAddress(Ljava/lang/String;)Z
    .registers 4
    .parameter "addr"

    .prologue
    .line 2184
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWagAddress(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2186
    :goto_6
    return v1

    .line 2185
    :catch_7
    move-exception v0

    .line 2186
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWagAsUserDefined(Z)Z
    .registers 4
    .parameter "set"

    .prologue
    .line 2192
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWagAsUserDefined(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2194
    :goto_6
    return v1

    .line 2193
    :catch_7
    move-exception v0

    .line 2194
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4
    .parameter "config"

    .prologue
    .line 2255
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2257
    :goto_6
    return v1

    .line 2256
    :catch_7
    move-exception v0

    .line 2257
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4
    .parameter "wifiConfig"

    .prologue
    .line 1279
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1280
    const/4 v1, 0x1

    .line 1282
    :goto_6
    return v1

    .line 1281
    :catch_7
    move-exception v0

    .line 1282
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 5
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 1189
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1190
    const/4 v1, 0x1

    .line 1192
    :goto_6
    return v1

    .line 1191
    :catch_7
    move-exception v0

    .line 1192
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 5
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 2307
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2309
    :goto_6
    return v1

    .line 2308
    :catch_7
    move-exception v0

    .line 2309
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4
    .parameter "config"

    .prologue
    .line 2263
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2265
    :goto_6
    return v1

    .line 2264
    :catch_7
    move-exception v0

    .line 2265
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public setWifiDisplayConfigure(ILjava/lang/String;)Z
    .registers 6
    .parameter "channel"
    .parameter "BSSID"

    .prologue
    const/4 v1, 0x0

    .line 1068
    if-nez p2, :cond_4

    .line 1074
    :goto_3
    return v1

    .line 1072
    :cond_4
    :try_start_4
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiDisplayConfigure(ILjava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    goto :goto_3

    .line 1073
    :catch_b
    move-exception v0

    .line 1074
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_3
.end method

.method public setWifiDisplayUnscan(Z)Z
    .registers 4
    .parameter "disabled"

    .prologue
    .line 1089
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiDisplayUnscan(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1090
    const/4 v1, 0x1

    .line 1092
    :goto_6
    return v1

    .line 1091
    :catch_7
    move-exception v0

    .line 1092
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 971
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 973
    :goto_6
    return v1

    .line 972
    :catch_7
    move-exception v0

    .line 973
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiEnabledPersist(ZZ)Z
    .registers 5
    .parameter "enabled"
    .parameter "persist"

    .prologue
    .line 1017
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiEnabledPersist(ZZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1019
    :goto_6
    return v1

    .line 1018
    :catch_7
    move-exception v0

    .line 1019
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiOffloadEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 2087
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiOffloadEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2089
    :goto_6
    return v1

    .line 2088
    :catch_7
    move-exception v0

    .line 2089
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiPowerSavingMode(I)Z
    .registers 4
    .parameter "status"

    .prologue
    .line 2055
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiPowerSavingMode(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2057
    :goto_6
    return v1

    .line 2056
    :catch_7
    move-exception v0

    .line 2057
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 7
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 1005
    :try_start_0
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiDisplay: setWifidisplayApEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1f

    .line 1007
    const/4 v1, 0x1

    .line 1009
    :goto_1e
    return v1

    .line 1008
    :catch_1f
    move-exception v0

    .line 1009
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public setWifidisplayEnabled(Z)Z
    .registers 6
    .parameter "enabled"

    .prologue
    .line 996
    :try_start_0
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiDisplay: setWifidisplayEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifidisplayEnabled(Z)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v1

    .line 999
    :goto_1e
    return v1

    .line 998
    :catch_1f
    move-exception v0

    .line 999
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public setWpsPbcMode()Z
    .registers 3

    .prologue
    .line 2152
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->setWpsPbc()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2154
    :goto_6
    return v1

    .line 2153
    :catch_7
    move-exception v0

    .line 2154
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWpsPinMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "bssid"

    .prologue
    .line 2160
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWpsPin(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2162
    :goto_6
    return-object v1

    .line 2161
    :catch_7
    move-exception v0

    .line 2162
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startDongleScan()Z
    .registers 3

    .prologue
    .line 1026
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startDongleScan()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1027
    const/4 v1, 0x1

    .line 1029
    :goto_6
    return v1

    .line 1028
    :catch_7
    move-exception v0

    .line 1029
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startDongleSingleCscan(I)Z
    .registers 4
    .parameter "channel"

    .prologue
    .line 1035
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startDongleSingleCscan(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1036
    const/4 v1, 0x1

    .line 1038
    :goto_6
    return v1

    .line 1037
    :catch_7
    move-exception v0

    .line 1038
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startDongleWakeUp(Ljava/lang/String;)Z
    .registers 4
    .parameter "bssid"

    .prologue
    .line 1052
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startDongleWakeUp(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1053
    const/4 v1, 0x1

    .line 1055
    :goto_6
    return v1

    .line 1054
    :catch_7
    move-exception v0

    .line 1055
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startScan()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 824
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 825
    const/4 v1, 0x1

    .line 827
    :goto_8
    return v1

    .line 826
    :catch_9
    move-exception v0

    .line 827
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_8
.end method

.method public startScanActive()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 843
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    .line 846
    :goto_7
    return v1

    .line 845
    :catch_8
    move-exception v0

    .line 846
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public startWifi()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1300
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_e

    .line 1301
    const-string v2, "WifiManager"

    const-string/jumbo v3, "startWiFi() called when mService = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :goto_d
    return v1

    .line 1305
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->startWifi()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    .line 1306
    const/4 v1, 0x1

    goto :goto_d

    .line 1307
    :catch_15
    move-exception v0

    .line 1308
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_d
.end method

.method public startWps(Landroid/net/wifi/WpsInfo;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 1544
    if-nez p1, :cond_3

    .line 1549
    :goto_2
    return-void

    .line 1548
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 1518
    if-nez p1, :cond_3

    .line 1523
    :goto_2
    return-void

    .line 1522
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public stopWifi()Z
    .registers 3

    .prologue
    .line 1325
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWifi()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1326
    const/4 v1, 0x1

    .line 1328
    :goto_6
    return v1

    .line 1327
    :catch_7
    move-exception v0

    .line 1328
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public stopWps()V
    .registers 3

    .prologue
    .line 2147
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2148
    return-void
.end method

.method public stopWpsRegistrar()V
    .registers 3

    .prologue
    .line 1533
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1534
    return-void
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    .line 653
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_8

    .line 654
    :cond_6
    const/4 v0, -0x1

    .line 656
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_7
.end method
