.class public Landroid/net/wifi/WifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;,
        Landroid/net/wifi/WifiStateMachine$TetheredState;,
        Landroid/net/wifi/WifiStateMachine$TetheringState;,
        Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartedState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartingState;,
        Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectedState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectingState;,
        Landroid/net/wifi/WifiStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$ConnectingState;,
        Landroid/net/wifi/WifiStateMachine$ConnectModeState;,
        Landroid/net/wifi/WifiStateMachine$ScanModeState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppingState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;,
        Landroid/net/wifi/WifiStateMachine$DriverFailedState;,
        Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;,
        Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;,
        Landroid/net/wifi/WifiStateMachine$DriverLoadedState;,
        Landroid/net/wifi/WifiStateMachine$DriverLoadingState;,
        Landroid/net/wifi/WifiStateMachine$InitialState;,
        Landroid/net/wifi/WifiStateMachine$DefaultState;,
        Landroid/net/wifi/WifiStateMachine$CwHandler;,
        Landroid/net/wifi/WifiStateMachine$TetherStateChange;,
        Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;
    }
.end annotation


# static fields
.field private static final ACTION_START_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.START_SCAN"

.field private static final ACTION_WIFI_AP_CONN_REQ_TIMEOUT:Ljava/lang/String; = "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

.field static final ARP_FILTER:I = 0x5

.field static final AUTHENTICATION_FAILURE_EVENT:I = 0x20028

.field static final BASE:I = 0x20000

.field private static final BLACK_LIST_SIZE:I = 0x10

.field static final BROADCAST_FILTER:I = 0x1

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field static final CMD_ASSOC_LIST_CHANGE:I = 0x2007c

.field static final CMD_BLACKLIST_NETWORK:I = 0x20039

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field static final CMD_CLEAR_BLACKLIST:I = 0x2003a

.field static final CMD_CONNECTION_REQUESTS:I = 0x2007b

.field static final CMD_CONNECT_NETWORK:I = 0x20056

.field static final CMD_DELAYED_STOP_DRIVER:I = 0x20012

.field static final CMD_DISABLE_NETWORK:I = 0x20038

.field static final CMD_DISCONNECT:I = 0x2004a

.field static final CMD_ENABLE_ALL_NETWORKS:I = 0x20037

.field static final CMD_ENABLE_BACKGROUND_SCAN:I = 0x2005b

.field static final CMD_ENABLE_NETWORK:I = 0x20036

.field static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field static final CMD_FORGET_NETWORK:I = 0x20058

.field static final CMD_LOAD_DRIVER:I = 0x20001

.field static final CMD_LOAD_DRIVER_FAILURE:I = 0x20004

.field static final CMD_LOAD_DRIVER_SUCCESS:I = 0x20003

.field static final CMD_MAC_LIST_PROFILE_CHANGE:I = 0x2007d

.field static final CMD_PING_SUPPLICANT:I = 0x20033

.field static final CMD_REASSOCIATE:I = 0x2004c

.field static final CMD_RECONNECT:I = 0x2004b

.field static final CMD_REMOVE_NETWORK:I = 0x20035

.field static final CMD_REQUEST_AP_CONFIG:I = 0x2001b

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field static final CMD_RESET_WPS_STATE:I = 0x2007a

.field static final CMD_RESPONSE_AP_CONFIG:I = 0x2001c

.field static final CMD_RSSI_POLL:I = 0x20053

.field static final CMD_SAVE_CONFIG:I = 0x2003b

.field static final CMD_SAVE_NETWORK:I = 0x20057

.field static final CMD_SET_AP_CONFIG:I = 0x20019

.field static final CMD_SET_AP_CONFIG_COMPLETED:I = 0x2001a

.field static final CMD_SET_COUNTRY_CODE:I = 0x20050

.field static final CMD_SET_FREQUENCY_BAND:I = 0x2005a

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field static final CMD_SET_SCAN_MODE:I = 0x20048

.field static final CMD_SET_SCAN_TYPE:I = 0x20049

.field static final CMD_SET_SCREEN_ON:I = 0x2007e

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20017

.field static final CMD_START_AP_SUCCESS:I = 0x20016

.field static final CMD_START_DONGLE_SCAN:I = 0x20068

.field static final CMD_START_DONGLE_SINGLE_CSCAN:I = 0x20069

.field static final CMD_START_DONGLE_WAKEUP:I = 0x2006a

.field static final CMD_START_DRIVER:I = 0x2000d

.field static final CMD_START_PACKET_FILTERING:I = 0x20054

.field static final CMD_START_SCAN:I = 0x20047

.field static final CMD_START_SUPPLICANT:I = 0x2000b

.field static final CMD_START_WPS:I = 0x20059

.field static final CMD_START_WPS_REGISTRAR:I = 0x20061

.field static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field static final CMD_STOP_AP:I = 0x20018

.field static final CMD_STOP_DRIVER:I = 0x2000e

.field static final CMD_STOP_PACKET_FILTERING:I = 0x20055

.field static final CMD_STOP_SUPPLICANT:I = 0x2000c

.field static final CMD_STOP_SUPPLICANT_FAILED:I = 0x20011

.field static final CMD_STOP_WPS:I = 0x2005d

.field static final CMD_STOP_WPS_REGISTRAR:I = 0x20062

.field static final CMD_TETHER_NOTIFICATION_TIMED_OUT:I = 0x2001e

.field static final CMD_TETHER_STATE_CHANGE:I = 0x2001d

.field static final CMD_UNLOAD_DRIVER:I = 0x20002

.field static final CMD_UNLOAD_DRIVER_FAILURE:I = 0x20006

.field static final CMD_UNLOAD_DRIVER_SUCCESS:I = 0x20005

.field private static final CONNECT_MODE:I = 0x1

.field private static final DBG:Z = false

.field private static final DBG_DETAIL:Z = false

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DELAYED_DRIVER_STOP_MS:I = 0x1d4c0

.field static final DHCPOFFER_FILTER:I = 0x4

.field private static final DRIVER_POWER_MODE_ACTIVE:I = 0x1

.field private static final DRIVER_POWER_MODE_AUTO:I = 0x0

.field private static final DRIVER_WIFI_BEST_PERFORMANCE_DISABLE:I = 0x14

.field private static final DRIVER_WIFI_BEST_PERFORMANCE_ENABLE:I = 0x15

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_WIFI_EVENT_HANDLED:I = 0xc366

.field private static final EVENTLOG_WIFI_STATE_CHANGED:I = 0xc365

.field private static final EVENT_CW_DEREGISTER_START:I = 0x3ea

.field private static final EVENT_CW_REGISTER_START:I = 0x3e9

.field static final EVENT_EAP_NOTIFICATION:I = 0x20021

.field static final EVENT_GET_AIRPLANE_MODE:I = 0x20020

.field private static final EVENT_HTC_BASE:I = 0x12c

.field public static final EVENT_HTC_STATE_UPDATE:I = 0x131

.field public static final EVENT_STATE_CHANGED:I = 0x1

.field private static final EXPLICIT_CONNECT_ALLOWED_DELAY_MS:J = 0x1d4c0L

.field private static final FAILURE:I = -0x1

.field private static final FLASHLIGHT_FILE:Ljava/lang/String; = "/sys/camera_led_status/led_hotspot_status"

.field static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final HOTSPOT_REQUESTED_MILLIS:J = 0x1d4c0L

.field private static final ICON_WIFI_CONNECTION_REQUEST:I = 0x10804f4

.field private static final IN_ECM_STATE:I = 0x1

.field static final L2PE_FAIL_EVENT:I = 0x20067

.field static final L2PE_SUCCESSFUL_EVENT:I = 0x20066

.field private static final MAX_REQUESTED_NUMBER:I = 0x10

.field private static final MAX_RSSI:I = 0x100

.field private static final MIN_INTERVAL_ENABLE_ALL_NETWORKS_MS:I = 0x927c0

.field private static final MIN_RSSI:I = -0xc8

.field static final MULTICAST_V4:I = 0x2

.field static final MULTICAST_V6:I = 0x3

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final NOT_IN_ECM_STATE:I = 0x0

.field public static final P2P_ENABLE_PROCEED:I = 0x20084

.field private static final POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field static final POWER_MODE_ACTIVE:I = 0x1

.field static final POWER_MODE_AUTO:I = 0x0

.field private static final SCAN_ACTIVE:I = 0x1

.field private static final SCAN_ONLY_MODE:I = 0x2

.field private static final SCAN_PASSIVE:I = 0x2

.field private static final SCAN_REQUEST:I = 0x0

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field static final SELF_FILTER:I = 0x0

.field private static final SOFTAP_IFACE:Ljava/lang/String; = "wlan0"

.field static final SSDP_FILTER:I = 0x6

.field private static final SUCCESS:I = 0x1

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x20027

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field private static final VZW_STATUS_AP_DETECTED_BUT_NOT_CONNECTED:I = 0x2

.field private static final VZW_STATUS_CONNECTED:I = 0x3

.field private static final VZW_STATUS_NO_AP_DETECTED:I = 0x1

.field private static final VZW_STATUS_WIFI_OFF:I = 0x0

.field private static final WHITE_LIST_SIZE:I = 0x10

.field private static final WIFI_AP_CONN_REQ_TIMEOUT:I = 0x4

.field private static final WIFI_AP_IDLE:Ljava/lang/String; = "com.android.server.HotspotManager.action.DEVICE_IDLE"

.field public static final WIFI_ENABLE_PENDING:I = 0x20083

.field private static final WIIF_AP_IDLE_REQUEST:I = 0x1

.field static final WIVU_FILTER:I = 0x7

.field static final WPS_COMPLETED_EVENT:I = 0x20079

.field static final WPS_REGISTRAR_FAIL_EVENT:I = 0x20065

.field static final WPS_REGISTRAR_START_EVENT:I = 0x20063

.field static final WPS_REGISTRAR_SUCCESSFUL_EVENT:I = 0x20064

.field private static mIsSupplicantActived:Z

.field private static mNeedConfig:Z

.field private static mSetAutoChannel:Z

.field private static mWifidisplayApEnable:Z

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final PROPERTY_SIM_ENABLED:Ljava/lang/String;

.field private final RESOURCE_PACKAGENAME:Ljava/lang/String;

.field private SameSignalLevelCount:I

.field private cw_ssid_key:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAssociateManual:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field private final mCTFinalPreConfigSsidList:[Ljava/lang/String;

.field private mCTPreConfigSsidList:[Ljava/lang/String;

.field private mCWRemoteConnection:Landroid/content/ServiceConnection;

.field private mCWService:Landroid/os/IBinder;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mConnectModeState:Lcom/android/internal/util/State;

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mConnectingState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mCtNetworkInfo:Landroid/net/NetworkInfo;

.field private mCwRegisterCapability:Z

.field private mCwRegistered:Z

.field private mCwRetryCounter:I

.field private mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

.field private final mDefaultFrameworkScanIntervalMs:I

.field private mDefaultState:Lcom/android/internal/util/State;

.field private final mDefaultSupplicantScanIntervalMs:I

.field private mDelayedStopCounter:I

.field private mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mDongleScanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mDriverFailedState:Lcom/android/internal/util/State;

.field private mDriverLoadedState:Lcom/android/internal/util/State;

.field private mDriverLoadingState:Lcom/android/internal/util/State;

.field private mDriverStartedState:Lcom/android/internal/util/State;

.field private mDriverStartingState:Lcom/android/internal/util/State;

.field private mDriverStoppedState:Lcom/android/internal/util/State;

.field private mDriverStoppingState:Lcom/android/internal/util/State;

.field private mDriverUnloadedState:Lcom/android/internal/util/State;

.field private mDriverUnloadingState:Lcom/android/internal/util/State;

.field private mEnableBackgroundScan:Z

.field private mEnableImeiPassword:Z

.field private mEnableImeiSsid:Z

.field private mEnableMdnPassword:Z

.field private mEnableRssiPolling:Z

.field private mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFinalPreConfigSsidList:[Ljava/lang/String;

.field private mFirstCustomizeSSID:Z

.field private mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mHaveIpAddress:Z

.field private mInDelayedStop:Z

.field private mIndicateWepError:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsDongleScan:Z

.field private mIsRunning:Z

.field private mIsScanMode:Z

.field private mIsSsdpFilterRuleEnabled:Z

.field private final mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastBssid:Ljava/lang/String;

.field private mLastEnableAllNetworksTime:J

.field private final mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastExplicitNetworkId:I

.field private mLastNetworkChoiceTime:J

.field private mLastNetworkId:I

.field private mLastRSSI:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSignalLevel:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMulticastEnabled:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNextWifiActionExplicit:Z

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPowerMode:I

.field private mPowerModeRefCount:I

.field private mPreConfigSsidList:[Ljava/lang/String;

.field private mReconnectCount:I

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mReqConnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;",
            ">;"
        }
    .end annotation
.end field

.field private mRes:Landroid/content/res/Resources;

.field private mResetWifiApSleepPolicy:Z

.field private mRssiPollToken:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mScanIntent:Landroid/app/PendingIntent;

.field private mScanModeState:Lcom/android/internal/util/State;

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResultIsPending:Z

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftApStartedState:Lcom/android/internal/util/State;

.field private mSoftApStartingState:Lcom/android/internal/util/State;

.field private mSoftApStoppingState:Lcom/android/internal/util/State;

.field private mSoftapMonitor:Landroid/net/hotspot/SoftapMonitor;

.field private mSupplicantRestartCount:I

.field private mSupplicantStartedState:Lcom/android/internal/util/State;

.field private mSupplicantStartingState:Lcom/android/internal/util/State;

.field private mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

.field private mSupplicantStopFailureToken:I

.field private mSupplicantStoppingState:Lcom/android/internal/util/State;

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mTetheringState:Lcom/android/internal/util/State;

.field private mUser:I

.field private mVzwWifiStatus:I

.field private mVzwWifiStatusFeature:Z

.field private mWaitForP2pDisableState:Lcom/android/internal/util/State;

.field private mWaitForWpsCompletionState:Lcom/android/internal/util/State;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

.field private mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiApConnReqTimeout:Landroid/app/PendingIntent;

.field private mWifiApNotification:Landroid/app/Notification;

.field private mWifiApNotificationShown:Z

.field private mWifiApSleepIntent:Landroid/app/PendingIntent;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConnected:Z

.field private mWifiDisplayUnscan:Z

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiWepErrorNotification:Landroid/app/Notification;

.field private mWifiWepErrorNotificationShown:Z

.field private final mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 193
    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    .line 214
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 215
    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->mSetAutoChannel:Z

    .line 304
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14
    .parameter "context"
    .parameter "wlanInterface"

    .prologue
    .line 881
    const-string v6, "WifiStateMachine"

    invoke-direct {p0, v6}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v7, 0xb

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 197
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    .line 202
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayUnscan:Z

    .line 205
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 207
    const/4 v6, 0x0

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    .line 209
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mMulticastEnabled:Z

    .line 210
    const/4 v6, 0x0

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    .line 221
    const-string v6, "com.htc"

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->RESOURCE_PACKAGENAME:Ljava/lang/String;

    .line 225
    const/4 v6, 0x0

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    .line 227
    const-string/jumbo v6, "wlan.sim.enabled"

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->PROPERTY_SIM_ENABLED:Ljava/lang/String;

    .line 234
    const/4 v6, 0x0

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    .line 235
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    .line 236
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    .line 239
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    .line 256
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    .line 259
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID:Z

    .line 260
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    .line 261
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z

    .line 262
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    .line 312
    const/4 v6, -0x1

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 313
    const/16 v6, -0xc8

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    .line 316
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    .line 317
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    .line 318
    const/4 v6, 0x0

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    .line 319
    const/4 v6, 0x0

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 320
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    .line 321
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    .line 323
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    .line 341
    const/4 v6, 0x0

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    .line 343
    const/4 v6, 0x0

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    .line 351
    const/4 v6, 0x0

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    .line 372
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 375
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 378
    new-instance v6, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v6}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 382
    new-instance v6, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v6}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    .line 383
    new-instance v6, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v6}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    .line 638
    const/4 v6, 0x0

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    .line 669
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    .line 675
    new-instance v6, Landroid/net/wifi/WifiStateMachine$DefaultState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 677
    new-instance v6, Landroid/net/wifi/WifiStateMachine$InitialState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$InitialState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 679
    new-instance v6, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    .line 681
    new-instance v6, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    .line 683
    new-instance v6, Landroid/net/wifi/WifiStateMachine$DriverFailedState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$DriverFailedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    .line 685
    new-instance v6, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    .line 687
    new-instance v6, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    .line 689
    new-instance v6, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    .line 691
    new-instance v6, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    .line 693
    new-instance v6, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    .line 695
    new-instance v6, Landroid/net/wifi/WifiStateMachine$DriverStartingState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    .line 697
    new-instance v6, Landroid/net/wifi/WifiStateMachine$DriverStartedState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    .line 699
    new-instance v6, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    .line 701
    new-instance v6, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    .line 703
    new-instance v6, Landroid/net/wifi/WifiStateMachine$ScanModeState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$ScanModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    .line 705
    new-instance v6, Landroid/net/wifi/WifiStateMachine$ConnectModeState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    .line 707
    new-instance v6, Landroid/net/wifi/WifiStateMachine$ConnectingState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$ConnectingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/State;

    .line 709
    new-instance v6, Landroid/net/wifi/WifiStateMachine$ConnectedState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    .line 711
    new-instance v6, Landroid/net/wifi/WifiStateMachine$DisconnectingState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 713
    new-instance v6, Landroid/net/wifi/WifiStateMachine$DisconnectedState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 715
    new-instance v6, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForWpsCompletionState:Lcom/android/internal/util/State;

    .line 718
    new-instance v6, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    .line 720
    new-instance v6, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    .line 722
    new-instance v6, Landroid/net/wifi/WifiStateMachine$TetheringState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$TetheringState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    .line 724
    new-instance v6, Landroid/net/wifi/WifiStateMachine$TetheredState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    .line 726
    new-instance v6, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    .line 729
    new-instance v6, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    .line 732
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\"CMCC\""

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v6, v7

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    .line 733
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\"CMCC\""

    aput-object v8, v6, v7

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mFinalPreConfigSsidList:[Ljava/lang/String;

    .line 734
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\"ChinaNet\""

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "\"ChinaNet_CW\""

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "\"ChinaNet_HomeCW\""

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, v6, v7

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mCTPreConfigSsidList:[Ljava/lang/String;

    .line 735
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ChinaNet"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "ChinaNet_CW"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "ChinaNet_HomeCW"

    aput-object v8, v6, v7

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mCTFinalPreConfigSsidList:[Ljava/lang/String;

    .line 736
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mCwRegistered:Z

    .line 738
    const/4 v6, 0x0

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->cw_ssid_key:I

    .line 742
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mCwRegisterCapability:Z

    .line 743
    const/4 v6, 0x0

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    .line 747
    new-instance v6, Landroid/net/wifi/WifiStateMachine$1;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiStateMachine$1;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    .line 811
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 821
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v7, 0xb

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 823
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 824
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 833
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    .line 838
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 843
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6}, Landroid/os/WorkSource;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 848
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6}, Landroid/os/WorkSource;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 851
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mNextWifiActionExplicit:Z

    .line 882
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 883
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 884
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mHaveIpAddress:Z

    .line 886
    new-instance v6, Landroid/net/NetworkInfo;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "WIFI"

    const-string v10, ""

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 887
    const-string v6, "batteryinfo"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 889
    const-string/jumbo v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 890
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    .line 892
    new-instance v6, Landroid/net/wifi/WifiMonitor;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 894
    new-instance v6, Landroid/net/hotspot/SoftapMonitor;

    invoke-direct {v6, p0}, Landroid/net/hotspot/SoftapMonitor;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSoftapMonitor:Landroid/net/hotspot/SoftapMonitor;

    .line 896
    :try_start_228
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.htc"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mRes:Landroid/content/res/Resources;
    :try_end_234
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_228 .. :try_end_234} :catch_484

    .line 899
    :goto_234
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.server.HotspotManager.action.DEVICE_IDLE"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 900
    .local v5, wifiApStopIntent:Landroid/content/Intent;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    .line 901
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 902
    .local v4, wifiApConnReqTimeout:Landroid/content/Intent;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {v6, v7, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConnReqTimeout:Landroid/app/PendingIntent;

    .line 904
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    .line 906
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_auto_ip_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_468

    .line 907
    const-string v6, "dhcp.wlan0.autoip"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :goto_273
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xa8

    if-ne v6, v7, :cond_27c

    .line 914
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    .line 917
    :cond_27c
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x9b

    if-eq v6, v7, :cond_288

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x40

    if-ne v6, v7, :cond_471

    .line 918
    :cond_288
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    .line 919
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z

    .line 924
    :cond_28e
    :goto_28e
    new-instance v6, Landroid/net/DhcpInfoInternal;

    invoke-direct {v6}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 925
    new-instance v6, Landroid/net/wifi/WifiInfo;

    invoke-direct {v6}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 926
    new-instance v6, Landroid/net/wifi/SupplicantStateTracker;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v6, p1, p0, v7}, Landroid/net/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    .line 927
    new-instance v6, Landroid/net/wifi/WpsStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v6, p1, p0, v7}, Landroid/net/wifi/WpsStateMachine;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;

    .line 928
    new-instance v6, Landroid/net/LinkProperties;

    invoke-direct {v6}, Landroid/net/LinkProperties;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 930
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/net/wifi/WifiApConfigStore;->makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/wifi/WifiApConfigStore;

    move-result-object v3

    .line 932
    .local v3, wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    invoke-virtual {v3}, Landroid/net/wifi/WifiApConfigStore;->loadApConfiguration()V

    .line 933
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v3}, Landroid/net/wifi/WifiApConfigStore;->getMessenger()Landroid/os/Messenger;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 935
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 936
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->clear()V

    .line 937
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 938
    const/4 v6, -0x1

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 939
    const/4 v6, -0x1

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 940
    const/16 v6, -0xc8

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    .line 942
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 943
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.server.WifiManager.action.START_SCAN"

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 944
    .local v2, scanIntent:Landroid/content/Intent;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    .line 946
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    .line 949
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultSupplicantScanIntervalMs:I

    .line 952
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$2;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$2;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 967
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$3;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$3;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.android.server.WifiManager.action.START_SCAN"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 985
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$4;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$4;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1010
    new-instance v6, Landroid/util/LruCache;

    const/16 v7, 0x50

    invoke-direct {v6, v7}, Landroid/util/LruCache;-><init>(I)V

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    .line 1012
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1013
    .local v1, powerManager:Landroid/os/PowerManager;
    const/4 v6, 0x1

    const-string v7, "WifiStateMachine"

    invoke-virtual {v1, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1015
    const/4 v6, 0x1

    const-string v7, "WifiStateMachine"

    invoke-virtual {v1, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    .line 1020
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1021
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1022
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1023
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1024
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1025
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1026
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1027
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1028
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1029
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1030
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1031
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1032
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1033
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1034
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1035
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1036
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1037
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForWpsCompletionState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1038
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1039
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1040
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1041
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1042
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1043
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1044
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1045
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1046
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1079
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1081
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd8

    if-ne v6, v7, :cond_45b

    .line 1082
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mCTPreConfigSsidList:[Ljava/lang/String;

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    .line 1083
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mCTFinalPreConfigSsidList:[Ljava/lang/String;

    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mFinalPreConfigSsidList:[Ljava/lang/String;

    .line 1084
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->bindCWService()Z

    move-result v6

    if-nez v6, :cond_47c

    .line 1085
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W]bindCWService failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_45b
    :goto_45b
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0xe5

    if-eq v6, v7, :cond_464

    .line 1096
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    .line 1098
    :cond_464
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->start()V

    .line 1099
    return-void

    .line 909
    .end local v1           #powerManager:Landroid/os/PowerManager;
    .end local v2           #scanIntent:Landroid/content/Intent;
    .end local v3           #wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    :cond_468
    const-string v6, "dhcp.wlan0.autoip"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_273

    .line 920
    :cond_471
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xa8

    if-ne v6, v7, :cond_28e

    .line 921
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    goto/16 :goto_28e

    .line 1087
    .restart local v1       #powerManager:Landroid/os/PowerManager;
    .restart local v2       #scanIntent:Landroid/content/Intent;
    .restart local v3       #wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    :cond_47c
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W]bindCWService successfully in StateMachie constructer!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45b

    .line 897
    .end local v1           #powerManager:Landroid/os/PowerManager;
    .end local v2           #scanIntent:Landroid/content/Intent;
    .end local v3           #wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    .end local v4           #wifiApConnReqTimeout:Landroid/content/Intent;
    .end local v5           #wifiApStopIntent:Landroid/content/Intent;
    :catch_484
    move-exception v6

    goto/16 :goto_234
.end method

.method private CustomizeSSIDbyCode()V
    .registers 12

    .prologue
    const/16 v10, 0xd

    const/4 v6, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x5

    const/4 v7, 0x4

    .line 7831
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x9b

    if-ne v4, v5, :cond_39

    .line 7832
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string/jumbo v5, "myTouch 4G Hotspot"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 7833
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_28

    .line 7834
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "HTC Sensation"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 7891
    :cond_27
    :goto_27
    return-void

    .line 7835
    :cond_28
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x89

    if-ne v4, v5, :cond_27

    .line 7836
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "HTC Amaze 4G"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_27

    .line 7838
    :cond_39
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x40

    if-ne v4, v5, :cond_4a

    .line 7839
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "Iusacell 3.5G"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_27

    .line 7841
    :cond_4a
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 7842
    .local v0, mac:Ljava/lang/String;
    if-eqz v0, :cond_27

    .line 7843
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7844
    .local v1, macFileds:[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x6

    if-ne v4, v5, :cond_27

    .line 7845
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x91

    if-ne v4, v5, :cond_9b

    .line 7846
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x51

    if-eq v4, v5, :cond_90

    .line 7847
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_27

    .line 7849
    :cond_90
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "HTC network"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_27

    .line 7851
    :cond_9b
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x93

    if-ne v4, v5, :cond_cc

    .line 7852
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC EVO Shift 4G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_27

    .line 7853
    :cond_cc
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x61

    if-ne v4, v5, :cond_f7

    .line 7854
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verizon ADR6400L "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_27

    .line 7855
    :cond_f7
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xad

    if-ne v4, v5, :cond_128

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_128

    .line 7856
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verizon ADR6425LVW "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_27

    .line 7857
    :cond_128
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xaa

    if-ne v4, v5, :cond_153

    .line 7858
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verizon ADR6350 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_27

    .line 7859
    :cond_153
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_17e

    .line 7860
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verizon ADR6410LVW "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_27

    .line 7861
    :cond_17e
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_1cf

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v6, :cond_1cf

    .line 7862
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "holiday"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7863
    .local v2, randomssid:Ljava/lang/String;
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v10, :cond_27

    .line 7864
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 7865
    .local v3, randomssid4:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC Vivid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_27

    .line 7867
    .end local v2           #randomssid:Ljava/lang/String;
    .end local v3           #randomssid4:Ljava/lang/String;
    :cond_1cf
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x24

    if-ne v4, v5, :cond_21f

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v6, :cond_21f

    .line 7868
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "evita"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7869
    .restart local v2       #randomssid:Ljava/lang/String;
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v10, :cond_27

    .line 7870
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 7871
    .restart local v3       #randomssid4:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC EVA_UL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_27

    .line 7873
    .end local v2           #randomssid:Ljava/lang/String;
    .end local v3           #randomssid4:Ljava/lang/String;
    :cond_21f
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x9f

    if-ne v4, v5, :cond_270

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v6, :cond_270

    .line 7874
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "totem"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7875
    .restart local v2       #randomssid:Ljava/lang/String;
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v10, :cond_27

    .line 7876
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 7877
    .restart local v3       #randomssid4:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC TOM_UL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_27

    .line 7879
    .end local v2           #randomssid:Ljava/lang/String;
    .end local v3           #randomssid4:Ljava/lang/String;
    :cond_270
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x95

    if-ne v4, v5, :cond_2a1

    .line 7880
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVO 3D "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_27

    .line 7881
    :cond_2a1
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x21

    if-ne v4, v5, :cond_2d2

    .line 7882
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVO View 4G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_27

    .line 7883
    :cond_2d2
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x50

    if-ne v4, v5, :cond_309

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-ne v4, v5, :cond_309

    .line 7884
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PH44100 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_27

    .line 7885
    :cond_309
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x49

    if-ne v4, v5, :cond_27

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-ne v4, v5, :cond_27

    .line 7886
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JEWEL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_27
.end method

.method private SupportConcurrentMode()Z
    .registers 3

    .prologue
    .line 3931
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe5

    if-ne v0, v1, :cond_8

    .line 3932
    const/4 v0, 0x0

    .line 3933
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private WifiRecover()V
    .registers 4

    .prologue
    .line 3225
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setCountryCode()V

    .line 3227
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V

    .line 3230
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_pwr_active_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 3232
    const/16 v0, 0x15

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    .line 3235
    :cond_1c
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 3237
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_wivu()V

    .line 3238
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_self()V

    .line 3239
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV6Packets()V

    .line 3240
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_dhcpoffer()V

    .line 3242
    :cond_2e
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiStateMachine;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayUnscan:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$10000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10100(Landroid/net/wifi/WifiStateMachine;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabledNative(Z)V

    return-void
.end method

.method static synthetic access$10200(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$10300(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$10308(Landroid/net/wifi/WifiStateMachine;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$10400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$10600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->WifiRecover()V

    return-void
.end method

.method static synthetic access$10802(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10902(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDongleScanList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$11100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$11800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->bindCWService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12000(Landroid/net/wifi/WifiStateMachine;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendErrorBroadcast(I)V

    return-void
.end method

.method static synthetic access$12100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12300(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastExplicitNetworkId:I

    return v0
.end method

.method static synthetic access$12302(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastExplicitNetworkId:I

    return p1
.end method

.method static synthetic access$12400(Landroid/net/wifi/WifiStateMachine;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 177
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkChoiceTime:J

    return-wide v0
.end method

.method static synthetic access$12402(Landroid/net/wifi/WifiStateMachine;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkChoiceTime:J

    return-wide p1
.end method

.method static synthetic access$12500(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mNextWifiActionExplicit:Z

    return v0
.end method

.method static synthetic access$12502(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mNextWifiActionExplicit:Z

    return p1
.end method

.method static synthetic access$12600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$12700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForWpsCompletionState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$12900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$13000(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendWPSSuccessBroadcast()V

    return-void
.end method

.method static synthetic access$13100(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendWPSFailBroadcast()V

    return-void
.end method

.method static synthetic access$13200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)[B
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13400(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V

    return-void
.end method

.method static synthetic access$13500(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$13600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return v0
.end method

.method static synthetic access$14000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$14002(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$1402(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method static synthetic access$14100(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V

    return-void
.end method

.method static synthetic access$14200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$14300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14400(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V

    return-void
.end method

.method static synthetic access$14500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$15000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$15100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$15200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$15302(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$15400(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    return v0
.end method

.method static synthetic access$15500(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    return v0
.end method

.method static synthetic access$15502(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    return p1
.end method

.method static synthetic access$15600(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$15700(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$15708(Landroid/net/wifi/WifiStateMachine;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$15800(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    return v0
.end method

.method static synthetic access$15900(Landroid/net/wifi/WifiStateMachine;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->triggerCWRegister(J)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return v0
.end method

.method static synthetic access$16000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method static synthetic access$16100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$16300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16400(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V

    return-void
.end method

.method static synthetic access$16500(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    return-void
.end method

.method static synthetic access$16600(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    return-void
.end method

.method static synthetic access$16700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$16800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$16900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return v0
.end method

.method static synthetic access$17000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return p1
.end method

.method static synthetic access$17100(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$17200(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$17300(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    return v0
.end method

.method static synthetic access$17400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$17800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$18000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$18200(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$18300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$18400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18500(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->SupportConcurrentMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$18600(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopTethering()V

    return-void
.end method

.method static synthetic access$18700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18800()Z
    .registers 1

    .prologue
    .line 177
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    return v0
.end method

.method static synthetic access$18802(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    sput-boolean p0, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    return p0
.end method

.method static synthetic access$18900()Z
    .registers 1

    .prologue
    .line 177
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mSetAutoChannel:Z

    return v0
.end method

.method static synthetic access$18902(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    sput-boolean p0, Landroid/net/wifi/WifiStateMachine;->mSetAutoChannel:Z

    return p0
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$19000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    sput-boolean p0, Landroid/net/wifi/WifiStateMachine;->mIsSupplicantActived:Z

    return p0
.end method

.method static synthetic access$19200(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$19300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$19400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$19600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$19800(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$19804(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$19900(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$20100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$20300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$20400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$2302(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/p2p/WifiP2pManager;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p1
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiStateMachine;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiStateMachine;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    return p1
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID:Z

    return v0
.end method

.method static synthetic access$4000(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    return v0
.end method

.method static synthetic access$4002(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    return p1
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID:Z

    return p1
.end method

.method static synthetic access$4100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V

    return-void
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiStateMachine;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->checkSSIDCustomization(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$5000(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$5002(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return p1
.end method

.method static synthetic access$5004(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$5100(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;

    return-object v0
.end method

.method static synthetic access$5400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$CwHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    return-object v0
.end method

.method static synthetic access$5402(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiStateMachine$CwHandler;)Landroid/net/wifi/WifiStateMachine$CwHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    return-object p1
.end method

.method static synthetic access$5500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5502(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5600(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return v0
.end method

.method static synthetic access$5602(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method static synthetic access$5702(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    return p1
.end method

.method static synthetic access$5802(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    return p1
.end method

.method static synthetic access$5900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    return v0
.end method

.method static synthetic access$6000(Landroid/net/wifi/WifiStateMachine;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$6100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    return v0
.end method

.method static synthetic access$6602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    return p1
.end method

.method static synthetic access$6700(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultSupplicantScanIntervalMs:I

    return v0
.end method

.method static synthetic access$6800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    return v0
.end method

.method static synthetic access$7000(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic access$7100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    return v0
.end method

.method static synthetic access$7202(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    return p1
.end method

.method static synthetic access$7300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setDongleScanList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendDongleScanResultsAvailableBroadcast()V

    return-void
.end method

.method static synthetic access$7500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setScanResults(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V

    return-void
.end method

.method static synthetic access$7700(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return v0
.end method

.method static synthetic access$7702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return p1
.end method

.method static synthetic access$7800(Landroid/net/wifi/WifiStateMachine;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 177
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide v0
.end method

.method static synthetic access$7802(Landroid/net/wifi/WifiStateMachine;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide p1
.end method

.method static synthetic access$7900()Z
    .registers 1

    .prologue
    .line 177
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    return v0
.end method

.method static synthetic access$7902(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    sput-boolean p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    return p0
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z

    return v0
.end method

.method static synthetic access$8000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8100(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$8104(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$8202(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mHaveIpAddress:Z

    return p1
.end method

.method static synthetic access$8300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$9002(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$9100(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return v0
.end method

.method static synthetic access$9102(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return p1
.end method

.method static synthetic access$9200(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setCountryCode()V

    return-void
.end method

.method static synthetic access$9300(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V

    return-void
.end method

.method static synthetic access$9400(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$9500(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9600(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    return v0
.end method

.method static synthetic access$9700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$9800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private bindCWService()Z
    .registers 7

    .prologue
    .line 767
    const/4 v1, 0x0

    .line 768
    .local v1, ret:Z
    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W] bind CW service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :try_start_8
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.cw.CWService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 771
    if-nez v1, :cond_21

    .line 772
    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W] fail to bind CW service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_21
    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W] bind CW service successfully!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_28} :catch_29

    .line 778
    :goto_28
    return v1

    .line 775
    :catch_29
    move-exception v0

    .line 776
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W] no permission to bind CW service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private byte2String([B)Ljava/lang/String;
    .registers 9
    .parameter "byteArray"

    .prologue
    .line 3202
    if-nez p1, :cond_4

    const/4 v4, 0x0

    .line 3211
    :goto_3
    return-object v4

    .line 3204
    :cond_4
    const-string v0, "0123456789ABCDEF"

    .line 3205
    .local v0, HEX:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3207
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    array-length v4, p1

    if-ge v2, v4, :cond_30

    .line 3208
    aget-byte v1, p1, v2

    .line 3209
    .local v1, b:B
    const-string v4, "0123456789ABCDEF"

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v6, v1, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3207
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 3211
    .end local v1           #b:B
    :cond_30
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .registers 6
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 7771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7772
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 7773
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7774
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7775
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_15

    const/4 v0, 0x0

    .line 7777
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_14
    return-object v0

    .line 7776
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_15
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_14
.end method

.method private checkAndSetConnectivityInstance()V
    .registers 3

    .prologue
    .line 3307
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 3308
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    .line 3310
    :cond_10
    return-void
.end method

.method private checkSSIDCustomization(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 7709
    const-string v1, "content://customization_settings/SettingTable/application_HotspotName"

    .line 7711
    .local v1, customize_uri:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 7712
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7713
    if-eqz v0, :cond_24

    .line 7714
    invoke-direct {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 7718
    :goto_23
    return-void

    .line 7716
    :cond_24
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->CustomizeSSIDbyCode()V

    goto :goto_23
.end method

.method private checkSleepPolicy()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3077
    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    if-nez v3, :cond_79

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_79

    .line 3078
    const-string v3, "WifiStateMachine"

    const-string/jumbo v4, "set sleep policy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    if-eqz v3, :cond_60

    .line 3080
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3082
    const/4 v0, 0x0

    .line 3083
    .local v0, idleTimeMin:I
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    if-nez v3, :cond_63

    .line 3084
    const/4 v0, 0x5

    .line 3088
    :cond_2d
    :goto_2d
    if-eqz v0, :cond_70

    .line 3089
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set SoftAP sleep policy for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mins"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit8 v5, v0, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long v1, v3, v5

    .line 3091
    .local v1, triggerTime:J
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v7, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3096
    .end local v0           #idleTimeMin:I
    .end local v1           #triggerTime:J
    :cond_60
    :goto_60
    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    .line 3102
    :goto_62
    return-void

    .line 3085
    .restart local v0       #idleTimeMin:I
    :cond_63
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    if-ne v3, v6, :cond_2d

    .line 3086
    const/16 v0, 0xa

    goto :goto_2d

    .line 3093
    :cond_70
    const-string v3, "WifiStateMachine"

    const-string/jumbo v4, "set SoftAP sleep policy to always on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 3098
    .end local v0           #idleTimeMin:I
    :cond_79
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel SoftAP sleep policy: mUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", syncGetWifiApState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3100
    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    goto :goto_62
.end method

.method private configureLinkProperties()V
    .registers 3

    .prologue
    .line 3851
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3852
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3859
    :goto_10
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 3864
    return-void

    .line 3854
    :cond_18
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v1

    .line 3855
    :try_start_1b
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3856
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_30

    .line 3857
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto :goto_10

    .line 3856
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private fetchFrequency()I
    .registers 5

    .prologue
    .line 3745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3746
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 3747
    .local v1, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_2a

    .line 3748
    iget v2, v1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 3750
    :goto_29
    return v2

    :cond_2a
    const/4 v2, -0x1

    goto :goto_29
.end method

.method private fetchRssiAndLinkSpeedNative()V
    .registers 16

    .prologue
    .line 3758
    const/4 v8, -0x1

    .line 3759
    .local v8, newRssi:I
    const/4 v7, -0x1

    .line 3761
    .local v7, newLinkSpeed:I
    invoke-static {}, Landroid/net/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v11

    .line 3763
    .local v11, signalPoll:Ljava/lang/String;
    if-eqz v11, :cond_51

    .line 3764
    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3765
    .local v6, lines:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_11
    if-ge v3, v4, :cond_51

    aget-object v5, v0, v3

    .line 3766
    .local v5, line:Ljava/lang/String;
    const-string v12, "="

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 3767
    .local v10, prop:[Ljava/lang/String;
    array-length v12, v10

    const/4 v13, 0x2

    if-ge v12, v13, :cond_22

    .line 3765
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 3769
    :cond_22
    const/4 v12, 0x0

    :try_start_23
    aget-object v12, v10, v12

    const-string v13, "RSSI"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    .line 3770
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1f

    .line 3771
    :cond_35
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const-string v13, "LINKSPEED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 3772
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_46} :catch_48

    move-result v7

    goto :goto_1f

    .line 3774
    :catch_48
    move-exception v1

    .line 3776
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v12, "WifiStateMachine"

    const-string v13, "fetchRssiAndLinkSpeedNative NumberFormatException"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 3781
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #lines:[Ljava/lang/String;
    .end local v10           #prop:[Ljava/lang/String;
    :cond_51
    const-string v12, "WifiStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fetchRssiAndLinkSpeedNative RSSI = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    const/4 v12, -0x1

    if-eq v8, v12, :cond_125

    const/16 v12, -0xc8

    if-ge v12, v8, :cond_125

    const/16 v12, 0x100

    if-ge v8, v12, :cond_125

    .line 3786
    if-lez v8, :cond_78

    add-int/lit16 v8, v8, -0x100

    .line 3787
    :cond_78
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v12, v8}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 3802
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    .line 3803
    .local v2, frequency:I
    const/4 v12, 0x4

    invoke-static {v8, v12, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(III)I

    move-result v9

    .line 3804
    .local v9, newSignalLevel:I
    iget v12, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    invoke-direct {p0, v8, v12}, Landroid/net/wifi/WifiStateMachine;->shouldBroadcastRSSIForIMS(II)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c8

    .line 3805
    const-string v12, "WifiStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BroadcastRSSIForIMS, newrssi ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , oldRssi= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3806
    const/4 v12, 0x0

    iput v12, p0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    .line 3807
    invoke-direct {p0, v8, v2}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(II)V

    .line 3824
    :cond_bb
    :goto_bb
    iput v9, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 3825
    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    .line 3830
    .end local v2           #frequency:I
    .end local v9           #newSignalLevel:I
    :goto_bf
    const/4 v12, -0x1

    if-eq v7, v12, :cond_c7

    .line 3831
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v12, v7}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 3833
    :cond_c7
    return-void

    .line 3809
    .restart local v2       #frequency:I
    .restart local v9       #newSignalLevel:I
    :cond_c8
    iget v12, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-eq v9, v12, :cond_f8

    .line 3811
    const-string v12, "WifiStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fetchRssiAndLinkSpeedNative send RSSIChange intent, newSignalLevel ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "mLastSignalLevel = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    const/4 v12, 0x0

    iput v12, p0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    .line 3814
    invoke-direct {p0, v8, v2}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(II)V

    goto :goto_bb

    .line 3816
    :cond_f8
    iget v12, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-ne v9, v12, :cond_bb

    .line 3817
    iget v12, p0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    .line 3818
    iget v12, p0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    const/4 v13, 0x3

    if-ge v12, v13, :cond_bb

    .line 3819
    const-string v12, "WifiStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fetchRssiAndLinkSpeedNative send RSSIChange intent, SameSignalLevelCount ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    invoke-direct {p0, v8, v2}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(II)V

    goto :goto_bb

    .line 3827
    .end local v2           #frequency:I
    .end local v9           #newSignalLevel:I
    :cond_125
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v13, -0xc8

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    goto :goto_bf
.end method

.method private fetchSSID()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v9, 0x0

    .line 3711
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;

    move-result-object v7

    .line 3712
    .local v7, status:Ljava/lang/String;
    if-nez v7, :cond_9

    move-object v8, v9

    .line 3724
    :goto_8
    return-object v8

    .line 3716
    :cond_9
    const-string v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3717
    .local v4, lines:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_12
    if-ge v1, v2, :cond_33

    aget-object v3, v0, v1

    .line 3718
    .local v3, line:Ljava/lang/String;
    const-string v10, " *= *"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3719
    .local v6, prop:[Ljava/lang/String;
    array-length v10, v6

    const/4 v11, 0x2

    if-ge v10, v11, :cond_23

    .line 3717
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 3720
    :cond_23
    const/4 v10, 0x0

    aget-object v5, v6, v10

    .line 3721
    .local v5, name:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v8, v6, v10

    .line 3722
    .local v8, value:Ljava/lang/String;
    const-string/jumbo v10, "ssid"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    goto :goto_8

    .end local v3           #line:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #prop:[Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_33
    move-object v8, v9

    .line 3724
    goto :goto_8
.end method

.method private static findEndIP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "addrString"
    .parameter "maskString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    .line 3132
    if-nez p0, :cond_9

    .line 3133
    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3135
    :cond_9
    if-nez p1, :cond_11

    .line 3136
    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3140
    :cond_11
    :try_start_11
    const-string v12, "\\."

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 3141
    .local v10, parts:[Ljava/lang/String;
    array-length v12, v10

    if-eq v12, v13, :cond_27

    .line 3142
    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_20} :catch_20

    .line 3163
    .end local v10           #parts:[Ljava/lang/String;
    :catch_20
    move-exception v5

    .line 3164
    .local v5, ex:Ljava/lang/NumberFormatException;
    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3144
    .end local v5           #ex:Ljava/lang/NumberFormatException;
    .restart local v10       #parts:[Ljava/lang/String;
    :cond_27
    :try_start_27
    const-string v12, "\\."

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3145
    .local v11, parts2:[Ljava/lang/String;
    array-length v12, v11

    if-eq v12, v13, :cond_36

    .line 3146
    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3148
    :cond_36
    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3149
    .local v0, addr1:I
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3150
    .local v1, addr2:I
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3151
    .local v2, addr3:I
    const/4 v12, 0x3

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3152
    .local v3, addr4:I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3153
    .local v6, mask1:I
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3154
    .local v7, mask2:I
    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3155
    .local v8, mask3:I
    const/4 v12, 0x3

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 3156
    .local v9, mask4:I
    xor-int/lit16 v12, v6, 0xff

    or-int/2addr v0, v12

    .line 3157
    xor-int/lit16 v12, v7, 0xff

    or-int/2addr v1, v12

    .line 3158
    xor-int/lit16 v12, v8, 0xff

    or-int/2addr v2, v12

    .line 3159
    xor-int/lit16 v12, v9, 0xff

    or-int/2addr v3, v12

    .line 3160
    if-eqz v3, :cond_7e

    add-int/lit8 v3, v3, -0x1

    .line 3161
    :cond_7e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b8
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_b8} :catch_20

    move-result-object v4

    .line 3162
    .local v4, endingIP:Ljava/lang/String;
    return-object v4
.end method

.method private getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 5
    .parameter "config"

    .prologue
    .line 3048
    if-nez p1, :cond_4

    const/4 v2, 0x0

    .line 3058
    :goto_3
    return-object v2

    .line 3050
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3051
    .local v1, sbuilder:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2b

    .line 3052
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_28

    .line 3054
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3051
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3058
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method private getConvertedNetworkInfo()Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 4295
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4296
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_22

    .line 4297
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->cwhtcStateUpdate(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    .line 4300
    :cond_22
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    .line 4302
    :goto_24
    return-object v0

    :cond_25
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_24
.end method

.method private getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 14
    .parameter "context"
    .parameter "uriString"

    .prologue
    const/4 v2, 0x0

    .line 7721
    const/4 v1, 0x0

    .line 7722
    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 7767
    :cond_6
    :goto_6
    return-object v2

    .line 7725
    :cond_7
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7727
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7728
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_20

    .line 7729
    const-string v0, "WifiStateMachine"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 7732
    :cond_20
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_38

    .line 7733
    const-string v0, "WifiStateMachine"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7734
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_36

    .line 7735
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7737
    :cond_36
    const/4 v7, 0x0

    .line 7738
    goto :goto_6

    .line 7740
    :cond_38
    const-string/jumbo v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 7741
    .local v10, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_55

    .line 7742
    const-string v0, "WifiStateMachine"

    const-string/jumbo v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7743
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_53

    .line 7744
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7746
    :cond_53
    const/4 v7, 0x0

    .line 7747
    goto :goto_6

    .line 7749
    :cond_55
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7750
    const/4 v8, 0x0

    .line 7751
    .local v8, data:[B
    const/4 v6, 0x0

    .line 7754
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_5a
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 7755
    invoke-direct {p0, v8}, Landroid/net/wifi/WifiStateMachine;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_a1
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_61} :catch_70

    move-result-object v6

    .line 7760
    if-eqz v7, :cond_6e

    .line 7761
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 7762
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7764
    :cond_6d
    :goto_6d
    const/4 v7, 0x0

    :cond_6e
    move-object v2, v6

    .line 7767
    goto :goto_6

    .line 7756
    :catch_70
    move-exception v9

    .line 7757
    .local v9, ex:Ljava/lang/Exception;
    :try_start_71
    const-string v0, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_71 .. :try_end_94} :catchall_a1

    .line 7758
    const/4 v6, 0x0

    .line 7760
    if-eqz v7, :cond_6e

    .line 7761
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 7762
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6d

    .line 7760
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_a1
    move-exception v0

    if-eqz v7, :cond_ae

    .line 7761
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_ad

    .line 7762
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7764
    :cond_ad
    const/4 v7, 0x0

    .line 7760
    :cond_ae
    throw v0
.end method

.method private getKey([B)[B
    .registers 8
    .parameter "seed"

    .prologue
    .line 3190
    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 3191
    .local v1, keyGen:Ljavax/crypto/KeyGenerator;
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    .line 3192
    .local v2, random:Ljava/security/SecureRandom;
    invoke-virtual {v2, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 3193
    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 3194
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v3

    .line 3197
    .end local v1           #keyGen:Ljavax/crypto/KeyGenerator;
    .end local v2           #random:Ljava/security/SecureRandom;
    :goto_1c
    return-object v3

    .line 3195
    :catch_1d
    move-exception v0

    .line 3196
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKey() ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method private getMaxDhcpRetries()I
    .registers 4

    .prologue
    .line 3867
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .registers 2

    .prologue
    .line 3967
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private getRandomKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "seed"

    .prologue
    .line 3169
    if-nez p1, :cond_b

    .line 3170
    const-string v2, "WifiStateMachine"

    const-string v3, "getRandomKey() ERROR: using default mac = 00:11:22:33:44:55"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    const-string p1, "00:11:22:33:44:55"

    .line 3175
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->getKey([B)[B

    move-result-object v1

    .line 3176
    .local v1, key:[B
    if-nez v1, :cond_1f

    .line 3177
    const-string v2, "WifiStateMachine"

    const-string v3, "() ERROR: getKey() fails!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    const-string v2, "1234567890123"

    .line 3184
    .end local v1           #key:[B
    :goto_1e
    return-object v2

    .line 3181
    .restart local v1       #key:[B
    :cond_1f
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->byte2String([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_29} :catch_2b

    move-result-object v2

    goto :goto_1e

    .line 3182
    .end local v1           #key:[B
    :catch_2b
    move-exception v0

    .line 3183
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRandomKey() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    const-string v2, "1234567890123"

    goto :goto_1e
.end method

.method private getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 5
    .parameter "config"

    .prologue
    .line 3063
    if-nez p1, :cond_4

    const/4 v2, 0x0

    .line 3073
    :goto_3
    return-object v2

    .line 3065
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3066
    .local v1, sbuilder:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2b

    .line 3067
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_28

    .line 3069
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3070
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3066
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3073
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method private handleFailedIpConfiguration()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4181
    const-string v0, "IP configuration failed"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4183
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 4188
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getMaxDhcpRetries()I

    move-result v1

    if-le v0, v1, :cond_45

    .line 4189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " times, Disabling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4191
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v0, v3}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 4193
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 4199
    :cond_45
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 4200
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 4202
    invoke-static {}, Landroid/net/wifi/WifiNative;->getIsWepCommand()Z

    move-result v0

    if-ne v0, v2, :cond_63

    .line 4203
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    if-nez v0, :cond_60

    .line 4205
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->setWepErrorNotificationVisible(Z)V

    .line 4206
    const-string/jumbo v0, "set WEP_ERROR icon"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4207
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    .line 4209
    :cond_60
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->sendErrorBroadcast(I)V

    .line 4212
    :cond_63
    return-void
.end method

.method private handleNetworkDisconnect()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 4006
    const-string v1, "WifiStateMachine"

    const-string v2, "Reset connections and stopping DHCP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v1, :cond_1c

    .line 4013
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v2, 0x30002

    invoke-virtual {v1, v2}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 4014
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v1}, Landroid/net/DhcpStateMachine;->quit()V

    .line 4015
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 4019
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 4020
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_76

    .line 4026
    :goto_2a
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 4027
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 4028
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 4029
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 4030
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 4031
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 4033
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 4035
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setExplicitConnect(Z)V

    .line 4038
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 4039
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 4042
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    .line 4044
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v1

    if-nez v1, :cond_71

    .line 4045
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->clearIpConfiguration(I)V

    .line 4048
    :cond_71
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 4049
    iput v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 4050
    return-void

    .line 4021
    :catch_76
    move-exception v0

    .line 4022
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clear addresses or disable ipv6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    .registers 11
    .parameter "dhcpInfoInternal"

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 4115
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v4

    .line 4116
    :try_start_8
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 4117
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_de

    .line 4118
    const/4 v3, -0x1

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 4119
    const/16 v3, -0xc8

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    .line 4120
    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 4122
    :try_start_14
    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v3, p1}, Landroid/net/wifi/WifiConfigStore;->setIpConfiguration(ILandroid/net/DhcpInfoInternal;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_e1

    .line 4126
    :goto_19
    iget-object v3, p1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 4127
    .local v0, addr:Ljava/net/InetAddress;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 4131
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v3

    if-eq v3, v8, :cond_96

    .line 4132
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiDisplay: STA IP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v5, v5, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  ,Hotspot IP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4133
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v3, v3, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v8, :cond_96

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v3, v3, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 4134
    const-string v3, "WifiStateMachine"

    const-string v4, "STA got IP address and IP conflicts with hotspot setting, neet to reconfigure hotspot in APSTA concurrent case!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    const v3, 0x20018

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4136
    const v3, 0x20015

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {p0, v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 4143
    :cond_96
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->clearWepErrorNotification()V

    .line 4146
    monitor-enter p0

    .line 4147
    :try_start_9a
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v3}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v3

    iget v3, v3, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->addGatewayCommand(I)Z

    .line 4148
    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_9a .. :try_end_a6} :catchall_fa

    .line 4152
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v3

    if-nez v3, :cond_b6

    .line 4153
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_arp()V

    .line 4154
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    if-eqz v3, :cond_b6

    .line 4155
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_ssdp(Z)V

    .line 4160
    :cond_b6
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_fd

    .line 4162
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 4163
    .local v2, linkProperties:Landroid/net/LinkProperties;
    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v3}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 4164
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 4165
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dd

    .line 4170
    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 4171
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    .line 4178
    .end local v2           #linkProperties:Landroid/net/LinkProperties;
    :cond_dd
    :goto_dd
    return-void

    .line 4117
    .end local v0           #addr:Ljava/net/InetAddress;
    :catchall_de
    move-exception v3

    :try_start_df
    monitor-exit v4
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw v3

    .line 4123
    :catch_e1
    move-exception v1

    .line 4124
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to setIpConfiguration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 4148
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #addr:Ljava/net/InetAddress;
    :catchall_fa
    move-exception v3

    :try_start_fb
    monitor-exit p0
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v3

    .line 4174
    :cond_fd
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V

    .line 4175
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 4176
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    goto :goto_dd
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .registers 6
    .parameter "message"

    .prologue
    .line 3972
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    .line 3973
    .local v1, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v0, v1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 3978
    .local v0, state:Landroid/net/wifi/SupplicantState;
    const v2, 0xc367

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3979
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 3981
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 3982
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget v3, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 3987
    :goto_22
    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-ne v0, v2, :cond_2d

    .line 3989
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, v1, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 3992
    :cond_2d
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 3993
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WpsStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3995
    return-object v0

    .line 3984
    :cond_40
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    goto :goto_22
.end method

.method private hexStringToByteArray(Ljava/lang/String;)[B
    .registers 9
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    .line 7688
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 7689
    .local v2, len:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 7690
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v2, :cond_2a

    .line 7691
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 7690
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    .line 7693
    :cond_2a
    return-object v0
.end method

.method private isCT_CDMA_WIFI_SSID()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 4270
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 4271
    .local v1, ssid:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 4280
    :cond_9
    :goto_9
    return v2

    .line 4274
    :cond_a
    const/4 v0, 0x0

    .local v0, j:I
    :goto_b
    const/4 v3, 0x3

    if-ge v0, v3, :cond_9

    .line 4275
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mCTFinalPreConfigSsidList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 4276
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C+W] match Ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    const/4 v2, 0x1

    goto :goto_9

    .line 4274
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private isMulticastEnabled()Z
    .registers 2

    .prologue
    .line 2706
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mMulticastEnabled:Z

    return v0
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3400
    .local p1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3402
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 3403
    .local v6, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3404
    .local v3, intf:Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1c
    if-ge v2, v4, :cond_d

    aget-object v5, v0, v2

    .line 3405
    .local v5, regex:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 3406
    const/4 v7, 0x1

    .line 3411
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intf:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #regex:Ljava/lang/String;
    :goto_27
    return v7

    .line 3404
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #intf:Ljava/lang/String;
    .restart local v4       #len$:I
    .restart local v5       #regex:Ljava/lang/String;
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 3411
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intf:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #regex:Ljava/lang/String;
    :cond_2b
    const/4 v7, 0x0

    goto :goto_27
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 7679
    const-string v0, "WifiStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7680
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 7683
    const-string v0, "WifiStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7684
    return-void
.end method

.method private parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V
    .registers 17
    .parameter "bundle"
    .parameter "context"

    .prologue
    .line 7781
    const-string v2, "device_name"

    .line 7782
    .local v2, DEVICE_NAME:Ljava/lang/String;
    const-string v1, "additional_string"

    .line 7783
    .local v1, ADDITIONAL_STRING:Ljava/lang/String;
    const-string v0, "additional_count"

    .line 7787
    .local v0, ADDITIONAL_COUNT:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_fe

    .line 7788
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2122

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 7789
    .local v5, device_name:Ljava/lang/String;
    const-string v11, "WifiStateMachine"

    const-string v12, "get device_name"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7790
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_87

    .line 7791
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7792
    .local v4, additional_string:Ljava/lang/String;
    const-string v11, "WifiStateMachine"

    const-string v12, "get additional_string"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7793
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    .line 7794
    .local v7, mac:Ljava/lang/String;
    if-eqz v7, :cond_87

    .line 7795
    const-string v11, ":"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 7796
    .local v8, macFileds:[Ljava/lang/String;
    array-length v11, v8

    const/4 v12, 0x6

    if-ne v11, v12, :cond_87

    .line 7797
    const-string/jumbo v11, "mac_address"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_90

    .line 7798
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_80

    .line 7799
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 7800
    .local v3, additional_count:I
    const-string v11, "WifiStateMachine"

    const-string v12, "get additional_count"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7801
    move v6, v3

    .local v6, i:I
    :goto_5e
    if-lez v6, :cond_87

    .line 7802
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    rsub-int/lit8 v12, v6, 0x5

    add-int/lit8 v12, v12, 0x1

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7801
    add-int/lit8 v6, v6, -0x1

    goto :goto_5e

    .line 7804
    .end local v3           #additional_count:I
    .end local v6           #i:I
    :cond_80
    const-string v11, "WifiStateMachine"

    const-string v12, "Can\'t get additional_count"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7824
    .end local v4           #additional_string:Ljava/lang/String;
    .end local v7           #mac:Ljava/lang/String;
    .end local v8           #macFileds:[Ljava/lang/String;
    :cond_87
    :goto_87
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v11

    iput-object v5, v11, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 7829
    .end local v5           #device_name:Ljava/lang/String;
    :goto_8f
    return-void

    .line 7806
    .restart local v4       #additional_string:Ljava/lang/String;
    .restart local v5       #device_name:Ljava/lang/String;
    .restart local v7       #mac:Ljava/lang/String;
    .restart local v8       #macFileds:[Ljava/lang/String;
    :cond_90
    const-string/jumbo v11, "random"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f6

    .line 7807
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ee

    .line 7808
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 7809
    .restart local v3       #additional_count:I
    const-string v11, "WifiStateMachine"

    const-string v12, "get additional_count"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7810
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 7811
    .local v9, randomssid:Ljava/lang/String;
    if-eqz v9, :cond_87

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_87

    .line 7812
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 7813
    .local v10, randomssidf:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_87

    .line 7816
    .end local v3           #additional_count:I
    .end local v9           #randomssid:Ljava/lang/String;
    .end local v10           #randomssidf:Ljava/lang/String;
    :cond_ee
    const-string v11, "WifiStateMachine"

    const-string v12, "Can\'t get additional_count"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 7819
    :cond_f6
    const-string v11, "WifiStateMachine"

    const-string v12, "Can\'t get additional_string or IMEI"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 7826
    .end local v4           #additional_string:Ljava/lang/String;
    .end local v5           #device_name:Ljava/lang/String;
    .end local v7           #mac:Ljava/lang/String;
    .end local v8           #macFileds:[Ljava/lang/String;
    :cond_fe
    const-string v11, "WifiStateMachine"

    const-string v12, "Can\'t get device_name"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7827
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->CustomizeSSIDbyCode()V

    goto :goto_8f
.end method

.method private parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .registers 15
    .parameter "line"

    .prologue
    .line 3567
    const/4 v0, 0x0

    .line 3568
    .local v0, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_63

    .line 3573
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v11

    .line 3574
    :try_start_6
    sget-object v10, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    .line 3575
    .local v8, result:[Ljava/lang/String;
    const/4 v10, 0x3

    array-length v12, v8

    if-gt v10, v12, :cond_96

    array-length v10, v8

    const/4 v12, 0x5

    if-gt v10, v12, :cond_96

    .line 3576
    const/4 v10, 0x0

    aget-object v2, v8, v10
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_93

    .line 3581
    .local v2, bssid:Ljava/lang/String;
    const/4 v10, 0x1

    :try_start_18
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3582
    .local v5, frequency:I
    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_93
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_24} :catch_64

    move-result v4

    .line 3586
    .local v4, level:I
    if-lez v4, :cond_29

    add-int/lit16 v4, v4, -0x100

    .line 3602
    :cond_29
    :goto_29
    :try_start_29
    array-length v10, v8

    const/4 v12, 0x4

    if-ne v10, v12, :cond_6e

    .line 3603
    const/4 v10, 0x3

    aget-object v10, v8, v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x5b

    if-ne v10, v12, :cond_68

    .line 3604
    const/4 v10, 0x3

    aget-object v3, v8, v10

    .line 3605
    .local v3, flags:Ljava/lang/String;
    const-string v1, ""

    .line 3621
    .local v1, ssid:Ljava/lang/String;
    :goto_3e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3622
    .local v7, key:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v10, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;
    :try_end_57
    .catchall {:try_start_29 .. :try_end_57} :catchall_93

    .line 3623
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .local v9, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v9, :cond_7e

    .line 3624
    :try_start_59
    iput v4, v9, Landroid/net/wifi/ScanResult;->level:I

    .line 3625
    iput-object v1, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 3626
    iput-object v3, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 3627
    iput v5, v9, Landroid/net/wifi/ScanResult;->frequency:I
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_b8

    move-object v0, v9

    .line 3641
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :goto_62
    :try_start_62
    monitor-exit v11

    .line 3644
    .end local v8           #result:[Ljava/lang/String;
    :cond_63
    return-object v0

    .line 3587
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v8       #result:[Ljava/lang/String;
    :catch_64
    move-exception v6

    .line 3588
    .local v6, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    .line 3589
    .restart local v5       #frequency:I
    const/4 v4, 0x0

    .restart local v4       #level:I
    goto :goto_29

    .line 3607
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_68
    const-string v3, ""

    .line 3608
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v10, 0x3

    aget-object v1, v8, v10

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_3e

    .line 3610
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_6e
    array-length v10, v8

    const/4 v12, 0x5

    if-ne v10, v12, :cond_79

    .line 3611
    const/4 v10, 0x3

    aget-object v3, v8, v10

    .line 3612
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v10, 0x4

    aget-object v1, v8, v10

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_3e

    .line 3616
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_79
    const-string v3, ""

    .line 3617
    .restart local v3       #flags:Ljava/lang/String;
    const-string v1, ""
    :try_end_7d
    .catchall {:try_start_62 .. :try_end_7d} :catchall_93

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_3e

    .line 3630
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_7e
    :try_start_7e
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_bb

    .line 3631
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_8d
    .catchall {:try_start_7e .. :try_end_8d} :catchall_b8

    .line 3634
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :try_start_8d
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v10, v7, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 3641
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #result:[Ljava/lang/String;
    :catchall_93
    move-exception v10

    :goto_94
    monitor-exit v11
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_93

    throw v10

    .line 3638
    .restart local v8       #result:[Ljava/lang/String;
    :cond_96
    :try_start_96
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Misformatted scan result text with "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v12, v8

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " fields: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_96 .. :try_end_b7} :catchall_93

    goto :goto_62

    .line 3641
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v1       #ssid:Ljava/lang/String;
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v3       #flags:Ljava/lang/String;
    .restart local v4       #level:I
    .restart local v5       #frequency:I
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :catchall_b8
    move-exception v10

    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_94

    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_bb
    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_62
.end method

.method private persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 6
    .parameter "wifiConfig"

    .prologue
    .line 1288
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1289
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "WifiStateMachine"

    const-string/jumbo v2, "persistApConfiguration..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 1292
    :cond_16
    const-string v1, "WifiStateMachine"

    const-string/jumbo v2, "wificonfig is null..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :goto_1e
    return-void

    .line 1295
    :cond_1f
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->updateApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1297
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 1298
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_ssid"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1302
    :cond_40
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hotspot_hidden"

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    if-eqz v1, :cond_19f

    const/4 v1, 0x1

    :goto_54
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1305
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    if-eqz v1, :cond_75

    .line 1306
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_security_type"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1310
    :cond_75
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-eqz v1, :cond_93

    .line 1311
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_password"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1315
    :cond_93
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_macfilter_on"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1318
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_max_connection"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1321
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_connection_array"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1324
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_channel"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1327
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_dhcp_on"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1330
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_dhcp_max_connection"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1333
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    if-eqz v1, :cond_129

    .line 1334
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_dhcp_start_ip"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1338
    :cond_129
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    if-eqz v1, :cond_147

    .line 1339
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_subnet_mask"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1343
    :cond_147
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    if-eqz v1, :cond_165

    .line 1344
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_id_address"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1348
    :cond_165
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_sleep_policy"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1350
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_black_list"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1351
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_white_list"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1e

    .line 1302
    :cond_19f
    const/4 v1, 0x0

    goto/16 :goto_54
.end method

.method private sendDongleScanResultsAvailableBroadcast()V
    .registers 3

    .prologue
    .line 2111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.DONGLE_SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2112
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2113
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2114
    return-void
.end method

.method private sendErrorBroadcast(I)V
    .registers 4
    .parameter "errorCode"

    .prologue
    .line 3911
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3912
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3913
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3914
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3915
    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .registers 5

    .prologue
    .line 3938
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3939
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3940
    const-string/jumbo v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3941
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3942
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .registers 6
    .parameter "bssid"

    .prologue
    .line 3887
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3888
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before WifiStateMachine send networkInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3897
    const-string/jumbo v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3899
    const-string/jumbo v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3900
    if-eqz p1, :cond_45

    .line 3901
    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3902
    :cond_45
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_6c

    .line 3903
    const-string/jumbo v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3904
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v1

    if-eqz v1, :cond_72

    const/4 v1, 0x1

    :goto_63
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->cw_ssid_key:I

    .line 3905
    const-string v1, "cw_ssid_key"

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->cw_ssid_key:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3907
    :cond_6c
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3908
    return-void

    .line 3904
    :cond_72
    const/4 v1, 0x0

    goto :goto_63
.end method

.method private sendRssiChangeBroadcast(II)V
    .registers 5
    .parameter "newRssi"
    .parameter "frequency"

    .prologue
    .line 3879
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3880
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3881
    const-string/jumbo v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3882
    const-string v1, "frequency"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3883
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3884
    return-void
.end method

.method private sendScanResultsAvailableBroadcast()V
    .registers 3

    .prologue
    .line 3873
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3874
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3875
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3876
    return-void
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .registers 4
    .parameter "connected"

    .prologue
    .line 3945
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3946
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3947
    const-string v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3948
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3949
    return-void
.end method

.method private sendVzwStatusNotification(I)I
    .registers 16
    .parameter "iVzwStatus"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3255
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 3260
    .local v3, nm:Landroid/app/NotificationManager;
    const v0, 0x4020014

    .line 3261
    .local v0, iID:I
    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendVzwStatusNotification iVzwStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    if-nez p1, :cond_95

    .line 3264
    const v1, 0x4020014

    .line 3265
    .local v1, iVzwStatusIcon:I
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4040001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3266
    .local v5, sTitle:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4040002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3285
    .local v4, sText:Ljava/lang/String;
    :goto_4a
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v10, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 3294
    .local v2, n:Landroid/app/Notification;
    iput v12, v2, Landroid/app/Notification;->flags:I

    .line 3295
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v7, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v5, v4, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3296
    if-ne p1, v13, :cond_91

    .line 3297
    iget-object v6, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v7, "vzw_wifi_hide_notification_icon"

    invoke-virtual {v6, v7, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3300
    :cond_91
    invoke-virtual {v3, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3302
    return v10

    .line 3267
    .end local v1           #iVzwStatusIcon:I
    .end local v2           #n:Landroid/app/Notification;
    .end local v4           #sText:Ljava/lang/String;
    .end local v5           #sTitle:Ljava/lang/String;
    :cond_95
    if-ne p1, v11, :cond_b5

    .line 3268
    const v1, 0x4020016

    .line 3269
    .restart local v1       #iVzwStatusIcon:I
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4040003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3270
    .restart local v5       #sTitle:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4040004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #sText:Ljava/lang/String;
    goto :goto_4a

    .line 3271
    .end local v1           #iVzwStatusIcon:I
    .end local v4           #sText:Ljava/lang/String;
    .end local v5           #sTitle:Ljava/lang/String;
    :cond_b5
    if-ne p1, v12, :cond_d6

    .line 3272
    const v1, 0x4020013

    .line 3273
    .restart local v1       #iVzwStatusIcon:I
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4040005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3274
    .restart local v5       #sTitle:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4040006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #sText:Ljava/lang/String;
    goto/16 :goto_4a

    .line 3275
    .end local v1           #iVzwStatusIcon:I
    .end local v4           #sText:Ljava/lang/String;
    .end local v5           #sTitle:Ljava/lang/String;
    :cond_d6
    if-ne p1, v13, :cond_10e

    .line 3276
    const v1, 0x4020017

    .line 3277
    .restart local v1       #iVzwStatusIcon:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x4040007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3278
    .restart local v5       #sTitle:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4040008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #sText:Ljava/lang/String;
    goto/16 :goto_4a

    .line 3280
    .end local v1           #iVzwStatusIcon:I
    .end local v4           #sText:Ljava/lang/String;
    .end local v5           #sTitle:Ljava/lang/String;
    :cond_10e
    const/4 v1, 0x0

    .line 3281
    .restart local v1       #iVzwStatusIcon:I
    const-string v5, "Title Error"

    .line 3282
    .restart local v5       #sTitle:Ljava/lang/String;
    const-string v4, "Text Error"

    .restart local v4       #sText:Ljava/lang/String;
    goto/16 :goto_4a
.end method

.method private sendWPSFailBroadcast()V
    .registers 4

    .prologue
    .line 3925
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WPS_FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3926
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3927
    const-string v1, "WifiStateMachine"

    const-string v2, "WPS: set intent WPS_FAIL_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    return-void
.end method

.method private sendWPSSuccessBroadcast()V
    .registers 4

    .prologue
    .line 3919
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WPS_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3920
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3921
    const-string v1, "WifiStateMachine"

    const-string v2, "WPS: set intent WPS_SUCCESS_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3922
    return-void
.end method

.method private setCountryCode()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3418
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3420
    .local v0, countryCode:Ljava/lang/String;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 3421
    invoke-virtual {p0, v0, v3}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 3426
    :goto_19
    return-void

    .line 3424
    :cond_1a
    const-string v1, "NONE"

    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_19
.end method

.method private setDongleScanList(Ljava/lang/String;)V
    .registers 11
    .parameter "scanResults"

    .prologue
    .line 2076
    if-nez p1, :cond_3

    .line 2108
    :goto_2
    return-void

    .line 2079
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2081
    .local v4, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .line 2083
    .local v2, lineCount:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 2086
    .local v6, scanResultsLen:I
    const/4 v1, 0x0

    .local v1, lineBeg:I
    const/4 v3, 0x0

    .local v3, lineEnd:I
    :goto_f
    if-gt v3, v6, :cond_37

    .line 2087
    if-eq v3, v6, :cond_1b

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_22

    .line 2088
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    .line 2090
    const/4 v7, 0x1

    if-ne v2, v7, :cond_25

    .line 2091
    add-int/lit8 v1, v3, 0x1

    .line 2086
    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2094
    :cond_25
    if-le v3, v1, :cond_34

    .line 2095
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2096
    .local v0, line:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    .line 2097
    .local v5, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v5, :cond_34

    .line 2098
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2103
    .end local v0           #line:Ljava/lang/String;
    .end local v5           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_34
    add-int/lit8 v1, v3, 0x1

    goto :goto_22

    .line 2107
    :cond_37
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDongleScanList:Ljava/util/List;

    goto :goto_2
.end method

.method private setFrequencyBand()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3432
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_frequency_band"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3434
    .local v0, band:I
    invoke-virtual {p0, v0, v3}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    .line 3435
    return-void
.end method

.method private setHighPerfModeEnabledNative(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3836
    if-nez p1, :cond_20

    move v0, v1

    :goto_5
    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setSuspendOptimizationsCommand(Z)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3837
    const-string/jumbo v0, "set suspend optimizations failed!"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3839
    :cond_11
    if-eqz p1, :cond_22

    .line 3840
    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3841
    const-string/jumbo v0, "set power mode active failed!"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3848
    :cond_1f
    :goto_1f
    return-void

    :cond_20
    move v0, v2

    .line 3836
    goto :goto_5

    .line 3844
    :cond_22
    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3845
    const-string/jumbo v0, "set power mode auto failed!"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 3961
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq p1, v0, :cond_e

    .line 3962
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 3964
    :cond_e
    return-void
.end method

.method private setPreConfigAPHigherPriority()V
    .registers 18

    .prologue
    .line 4528
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks()Ljava/util/List;

    move-result-object v12

    .line 4529
    .local v12, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v14, 0x4

    new-array v11, v14, [Landroid/net/wifi/WifiConfiguration;

    .line 4530
    .local v11, updatedwifiConfig:[Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    .line 4531
    .local v4, maxPriority:I
    const/4 v1, 0x0

    .line 4532
    .local v1, bMatch:Z
    const/4 v3, 0x0

    .line 4533
    .local v3, j:I
    const/4 v8, 0x1

    .line 4534
    .local v8, preConfigSsidListNum:I
    const/4 v6, -0x1

    .line 4535
    .local v6, mostPreferredSsidPriority:I
    const/4 v10, 0x1

    .line 4538
    .local v10, totalListNum:I
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0xd8

    if-ne v14, v15, :cond_15

    .line 4539
    const/4 v8, 0x3

    .line 4540
    const/4 v10, 0x3

    .line 4544
    :cond_15
    const-string/jumbo v14, "persist.sys.cw.ssid"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4545
    .local v5, mostPreferredSsid:Ljava/lang/String;
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] mostPreferredSsid is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    const-string/jumbo v14, "persist.sys.cw.security"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4547
    .local v7, mostPreferredSsidSecurity:Ljava/lang/String;
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] mostPreferredSsidSecurity is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    const-string v14, ""

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_96

    const-string v14, ""

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_96

    .line 4550
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    aput-object v5, v14, v8

    .line 4551
    add-int/lit8 v10, v8, 0x1

    .line 4552
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mostPreferredSsid = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " security = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4555
    :cond_96
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v13

    .line 4556
    .local v13, wifiState:I
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] wifiState is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4557
    const/4 v14, 0x3

    if-eq v13, v14, :cond_cf

    .line 4558
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "wifi state not enabled : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4727
    :cond_ce
    :goto_ce
    return-void

    .line 4562
    :cond_cf
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v2, v14, -0x1

    .local v2, i:I
    :goto_d5
    if-ltz v2, :cond_23d

    .line 4563
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 4564
    .local v9, tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] tmpWifiConfig is:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    if-eqz v9, :cond_fb

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v14, :cond_105

    .line 4566
    :cond_fb
    const-string v14, "WifiStateMachine"

    const-string v15, "get null wifi configuration"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4562
    :cond_102
    :goto_102
    add-int/lit8 v2, v2, -0x1

    goto :goto_d5

    .line 4569
    :cond_105
    const/4 v3, 0x0

    :goto_106
    if-ge v3, v10, :cond_150

    .line 4570
    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    aget-object v15, v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17f

    .line 4571
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "match preConfigSsidList = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    const/4 v1, 0x1

    .line 4573
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bMatch is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4577
    :cond_150
    if-eqz v1, :cond_21b

    .line 4578
    const-string v14, "WifiStateMachine"

    const-string v15, "[C+W] enter set maxPriority loop>>>>>>>>>>>"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    if-ne v3, v8, :cond_189

    .line 4580
    const-string/jumbo v14, "open"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18e

    .line 4581
    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_175

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-eqz v14, :cond_182

    .line 4583
    :cond_175
    const/4 v1, 0x0

    .line 4584
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_102

    .line 4585
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    goto :goto_102

    .line 4569
    :cond_17f
    add-int/lit8 v3, v3, 0x1

    goto :goto_106

    .line 4588
    :cond_182
    const-string v14, "WifiStateMachine"

    const-string v15, "[open] mostPreferredSsid matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    :cond_189
    :goto_189
    aput-object v9, v11, v3

    .line 4624
    const/4 v1, 0x0

    goto/16 :goto_102

    .line 4590
    :cond_18e
    const-string/jumbo v14, "wep"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1bb

    .line 4591
    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1a8

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-nez v14, :cond_1b3

    .line 4593
    :cond_1a8
    const/4 v1, 0x0

    .line 4594
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_102

    .line 4595
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    goto/16 :goto_102

    .line 4598
    :cond_1b3
    const-string v14, "WifiStateMachine"

    const-string v15, "[wep] mostPreferredSsid matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_189

    .line 4600
    :cond_1bb
    const-string/jumbo v14, "wpapsk"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e1

    .line 4601
    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1d9

    .line 4602
    const/4 v1, 0x0

    .line 4603
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_102

    .line 4604
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    goto/16 :goto_102

    .line 4607
    :cond_1d9
    const-string v14, "WifiStateMachine"

    const-string v15, "[wpapsk] mostPreferredSsid matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_189

    .line 4609
    :cond_1e1
    const-string v14, "eap"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_211

    .line 4610
    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_208

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_208

    .line 4612
    const/4 v1, 0x0

    .line 4613
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_102

    .line 4614
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    goto/16 :goto_102

    .line 4617
    :cond_208
    const-string v14, "WifiStateMachine"

    const-string v15, "[eap] mostPreferredSsid matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_189

    .line 4620
    :cond_211
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "no matched mostPreferredSsidSecurity"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_189

    .line 4626
    :cond_21b
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_223

    .line 4627
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    .line 4628
    :cond_223
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] maxPriority is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_102

    .line 4633
    .end local v9           #tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_23d
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0xd8

    if-ne v14, v15, :cond_432

    .line 4634
    const/4 v14, 0x0

    aget-object v14, v11, v14

    if-eqz v14, :cond_428

    const/4 v14, 0x1

    aget-object v14, v11, v14

    if-eqz v14, :cond_428

    const/4 v14, 0x2

    aget-object v14, v11, v14

    if-eqz v14, :cond_428

    .line 4635
    const/4 v14, 0x2

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-lt v14, v4, :cond_2c8

    const/4 v14, 0x1

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/4 v15, 0x0

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v14, v15, :cond_2c8

    const/4 v14, 0x2

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/4 v15, 0x1

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v14, v15, :cond_2c8

    .line 4638
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "no need to update ssids priority"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    :goto_279
    const/4 v14, 0x3

    aget-object v14, v11, v14

    if-eqz v14, :cond_ce

    const/4 v14, 0x2

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/4 v15, 0x3

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-lt v14, v15, :cond_ce

    .line 4662
    const/4 v14, 0x3

    aget-object v14, v11, v14

    const/4 v15, 0x2

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 4663
    const/4 v14, 0x3

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_41e

    .line 4664
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "user saved ssid priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x3

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_ce

    .line 4641
    :cond_2c8
    const/4 v14, 0x0

    aget-object v14, v11, v14

    iput v4, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 4642
    const/4 v14, 0x1

    aget-object v14, v11, v14

    add-int/lit8 v15, v4, 0x1

    iput v15, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 4643
    const/4 v14, 0x2

    aget-object v14, v11, v14

    add-int/lit8 v15, v4, 0x2

    iput v15, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 4644
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] after update updatedwifiConfig[0].priority is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "updatedwifiConfig[1].priority is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "updatedwifiConfig[2].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4646
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_414

    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_414

    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_414

    .line 4649
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] after update updated>>>>updatedwifiConfig[0].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "updatedwifiConfig[1].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "updatedwifiConfig[2].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4651
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "preconfig ssids priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4652
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    .line 4653
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] after saved configure>>>>updatedwifiConfig[0].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "updatedwifiConfig[1].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "updatedwifiConfig[2].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4655
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "preconfig ssids priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_279

    .line 4658
    :cond_414
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "mWM.saveConfiguration failed#1"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_279

    .line 4668
    :cond_41e
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "mWM.saveConfiguration failed#2"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ce

    .line 4673
    :cond_428
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "miss some preconfig ssids"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ce

    .line 4676
    :cond_432
    const/4 v14, 0x0

    aget-object v14, v11, v14

    if-eqz v14, :cond_550

    .line 4677
    const/4 v14, 0x0

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-lt v14, v4, :cond_495

    .line 4678
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "no need to update ssids priority"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    :goto_446
    const/4 v14, 0x1

    aget-object v14, v11, v14

    if-eqz v14, :cond_ce

    .line 4702
    const/4 v14, 0x1

    aget-object v14, v11, v14

    const/4 v15, 0x0

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 4703
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v15, 0xe5

    if-ne v14, v15, :cond_514

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    if-eqz v14, :cond_514

    .line 4704
    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork_CMCC(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_50a

    .line 4705
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "user saved ssid priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4706
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_ce

    .line 4681
    :cond_495
    const/4 v14, 0x0

    aget-object v14, v11, v14

    iput v4, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 4682
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v15, 0xe5

    if-ne v14, v15, :cond_4d8

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    if-eqz v14, :cond_4d8

    .line 4683
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork_CMCC(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4ce

    .line 4684
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "preconfig ssids priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4685
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_446

    .line 4688
    :cond_4ce
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "mWM.saveConfiguration failed#1"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 4692
    :cond_4d8
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_500

    .line 4693
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "preconfig ssids priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4694
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_446

    .line 4697
    :cond_500
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "mWM.saveConfiguration failed#1"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_446

    .line 4709
    :cond_50a
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "mWM.saveConfiguration failed#2"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ce

    .line 4713
    :cond_514
    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_546

    .line 4714
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "user saved ssid priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4715
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_ce

    .line 4718
    :cond_546
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "mWM.saveConfiguration failed#2"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ce

    .line 4724
    :cond_550
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "miss some preconfig ssids"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ce
.end method

.method private setScanResults(Ljava/lang/String;)V
    .registers 13
    .parameter "scanResults"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 3653
    if-nez p1, :cond_1d

    .line 3655
    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v7, :cond_1c

    iget v7, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-eq v7, v9, :cond_1c

    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    if-nez v7, :cond_1c

    .line 3656
    const-string v7, "WifiStateMachine"

    const-string v8, "VzwStatus[No APs detected]"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    iput v9, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    .line 3658
    invoke-direct {p0, v9}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    .line 3708
    :cond_1c
    :goto_1c
    return-void

    .line 3663
    :cond_1d
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xe5

    if-ne v7, v8, :cond_2e

    .line 3664
    const-string v7, "CMCC"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2e

    .line 3665
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V

    .line 3668
    :cond_2e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3670
    .local v4, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .line 3672
    .local v2, lineCount:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 3675
    .local v6, scanResultsLen:I
    const/4 v1, 0x0

    .local v1, lineBeg:I
    const/4 v3, 0x0

    .local v3, lineEnd:I
    :goto_3a
    if-gt v3, v6, :cond_61

    .line 3676
    if-eq v3, v6, :cond_46

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_4c

    .line 3677
    :cond_46
    add-int/lit8 v2, v2, 0x1

    .line 3679
    if-ne v2, v9, :cond_4f

    .line 3680
    add-int/lit8 v1, v3, 0x1

    .line 3675
    :cond_4c
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 3683
    :cond_4f
    if-le v3, v1, :cond_5e

    .line 3684
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3685
    .local v0, line:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    .line 3686
    .local v5, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v5, :cond_5e

    .line 3687
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3692
    .end local v0           #line:Ljava/lang/String;
    .end local v5           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_5e
    add-int/lit8 v1, v3, 0x1

    goto :goto_4c

    .line 3697
    :cond_61
    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v7, :cond_82

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_82

    iget v7, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-eq v7, v9, :cond_82

    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    if-nez v7, :cond_82

    .line 3698
    const-string v7, "WifiStateMachine"

    const-string v8, "VzwStatus[No APs detected]"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    iput v9, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    .line 3700
    invoke-direct {p0, v9}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    .line 3707
    :cond_7f
    :goto_7f
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    goto :goto_1c

    .line 3701
    :cond_82
    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v7, :cond_7f

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7f

    iget v7, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-eq v7, v10, :cond_7f

    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    if-nez v7, :cond_7f

    .line 3702
    const-string v7, "WifiStateMachine"

    const-string v8, "VzwStatus[AP detected but not connected]"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    iput v10, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    .line 3704
    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    goto :goto_7f
.end method

.method private setTetheringSetting(Landroid/net/wifi/WifiConfiguration;)I
    .registers 11
    .parameter "config"

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 3105
    const-string v7, "WifiStateMachine"

    const-string/jumbo v8, "setTetheringSetting"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    if-ne v7, v0, :cond_23

    .line 3107
    .local v0, dhcpEnable:Z
    :goto_13
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v4, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 3108
    .local v4, startingIP:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v2, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 3109
    .local v2, dhcpSubnetMask:Ljava/lang/String;
    if-nez p1, :cond_25

    move v5, v6

    .line 3128
    :cond_22
    :goto_22
    return v5

    .end local v0           #dhcpEnable:Z
    .end local v2           #dhcpSubnetMask:Ljava/lang/String;
    .end local v4           #startingIP:Ljava/lang/String;
    :cond_23
    move v0, v5

    .line 3106
    goto :goto_13

    .line 3113
    .restart local v0       #dhcpEnable:Z
    .restart local v2       #dhcpSubnetMask:Ljava/lang/String;
    .restart local v4       #startingIP:Ljava/lang/String;
    :cond_25
    :try_start_25
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v0}, Landroid/os/INetworkManagementService;->setTetheringDhcpEnabled(Z)V

    .line 3114
    if-eqz v4, :cond_45

    if-eqz v2, :cond_45

    .line 3115
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/lang/String;

    .line 3116
    .local v1, dhcpRange:[Ljava/lang/String;
    const/4 v6, 0x0

    aput-object v4, v1, v6

    .line 3117
    const/4 v6, 0x1

    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->findEndIP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 3119
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v6, v1}, Landroid/os/INetworkManagementService;->setTetheringHtcDhcpRange([Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_40} :catch_47

    move-result v6

    if-eqz v6, :cond_22

    .line 3120
    const/4 v5, -0x2

    goto :goto_22

    .end local v1           #dhcpRange:[Ljava/lang/String;
    :cond_45
    move v5, v6

    .line 3122
    goto :goto_22

    .line 3124
    :catch_47
    move-exception v3

    .line 3125
    .local v3, ee:Ljava/lang/Exception;
    const-string v5, "WifiStateMachine"

    const-string/jumbo v6, "setTetheringSetting failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    const/4 v5, -0x3

    goto :goto_22
.end method

.method private setWifiApState(I)V
    .registers 9
    .parameter "wifiApState"

    .prologue
    const/high16 v6, 0x1000

    const/16 v4, 0xd

    const/4 v5, 0x0

    .line 3470
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 3473
    .local v2, previousWifiApState:I
    if-ne p1, v4, :cond_84

    .line 3474
    :try_start_d
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V

    .line 3476
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->writeWifiApStatusForFlashlight(Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_92

    .line 3489
    :cond_16
    :goto_16
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3491
    const/16 v3, 0xc

    if-ne p1, v3, :cond_9a

    .line 3492
    :try_start_1f
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setHotspotEnabled(Z)V

    .line 3496
    :cond_25
    :goto_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHotspotEnabled: get value= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->getHotspotEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_42} :catch_a3

    .line 3504
    :goto_42
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    if-eqz v3, :cond_a5

    .line 3505
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3506
    const-string/jumbo v3, "send WIFIDISPLAY_AP_STATE_CHANGED_ACTION intent"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3507
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3508
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3509
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3510
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3511
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3521
    :goto_6c
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    if-eqz v3, :cond_83

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "disabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 3522
    const-string v3, "WiFiDisplay: Got disabled state in concurrent, set mWifidisplayApEnable =false "

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3523
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    .line 3535
    :cond_83
    return-void

    .line 3478
    .end local v1           #intent:Landroid/content/Intent;
    :cond_84
    const/16 v3, 0xb

    if-ne p1, v3, :cond_16

    .line 3479
    :try_start_88
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V

    .line 3481
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->writeWifiApStatusForFlashlight(Z)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_91} :catch_92

    goto :goto_16

    .line 3484
    :catch_92
    move-exception v0

    .line 3485
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 3493
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_9a
    if-eq p1, v4, :cond_25

    .line 3494
    :try_start_9c
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setHotspotEnabled(Z)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a2} :catch_a3

    goto :goto_25

    .line 3497
    :catch_a3
    move-exception v3

    goto :goto_42

    .line 3513
    :cond_a5
    const-string/jumbo v3, "send WIFI_AP_STATE_CHANGED_ACTION intent"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3514
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3515
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3516
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3517
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3518
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_6c
.end method

.method private setWifiState(I)V
    .registers 7
    .parameter "wifiState"

    .prologue
    .line 3438
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 3441
    .local v2, previousWifiState:I
    const/4 v3, 0x3

    if-ne p1, v3, :cond_31

    .line 3442
    :try_start_9
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_53

    .line 3458
    :cond_e
    :goto_e
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3462
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3463
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3464
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3465
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3466
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3467
    return-void

    .line 3443
    .end local v1           #intent:Landroid/content/Intent;
    :cond_31
    const/4 v3, 0x1

    if-ne p1, v3, :cond_e

    .line 3444
    :try_start_34
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V

    .line 3446
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v3, :cond_e

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-eqz v3, :cond_e

    .line 3447
    const-string v3, "WifiStateMachine"

    const-string v4, "VzwStatus[Wifi_off]"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    const/4 v3, 0x0

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    .line 3449
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    .line 3450
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_52} :catch_53

    goto :goto_e

    .line 3454
    :catch_53
    move-exception v0

    .line 3455
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_e
.end method

.method private shouldBroadcastRSSIForIMS(II)Z
    .registers 9
    .parameter "newRSSI"
    .parameter "lastRSSI"

    .prologue
    const/4 v1, 0x0

    const/16 v5, -0x4b

    const/16 v4, -0x50

    const/16 v3, -0x55

    const/4 v0, 0x1

    .line 3728
    if-eq p1, p2, :cond_1d

    .line 3729
    const/16 v2, -0xc8

    if-ne p2, v2, :cond_f

    .line 3740
    :cond_e
    :goto_e
    return v0

    .line 3731
    :cond_f
    if-le p1, v5, :cond_13

    if-le p2, v5, :cond_e

    .line 3733
    :cond_13
    if-gt p1, v4, :cond_17

    if-gt p2, v4, :cond_e

    .line 3735
    :cond_17
    if-gt p1, v3, :cond_1b

    if-gt p2, v3, :cond_e

    :cond_1b
    move v0, v1

    .line 3738
    goto :goto_e

    :cond_1d
    move v0, v1

    .line 3740
    goto :goto_e
.end method

.method private startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 4232
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$5;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiStateMachine$5;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4259
    return-void
.end method

.method private startTethering(Ljava/util/ArrayList;)Z
    .registers 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3314
    .local p1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 3317
    .local v10, wifiAvailable:Z
    new-instance v9, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3318
    .local v9, wifiAPConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 3320
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3322
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v11

    .line 3324
    .local v11, wifiRegexs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ea

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3325
    .local v5, intf:Ljava/lang/String;
    move-object v0, v11

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_26
    if-ge v3, v7, :cond_17

    aget-object v8, v0, v3

    .line 3326
    .local v8, regex:Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e6

    .line 3328
    const/4 v4, 0x0

    .line 3330
    .local v4, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_31
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v12, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    .line 3331
    if-eqz v4, :cond_88

    .line 3334
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v12

    iget-object v12, v12, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    if-eqz v12, :cond_a8

    .line 3335
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v12

    iget-object v6, v12, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 3336
    .local v6, ipAddress:Ljava/lang/String;
    const-string v12, "WifiStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "starting Ipaddress = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    new-instance v12, Landroid/net/LinkAddress;

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    const/16 v14, 0x18

    invoke-direct {v12, v13, v14}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v12, v4, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 3348
    .end local v6           #ipAddress:Ljava/lang/String;
    :goto_6d
    const-string v12, "[up]"

    iput-object v12, v4, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 3350
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v12, v5, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 3352
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v12, v9}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V

    .line 3353
    invoke-static {}, Landroid/net/wifi/WifiNative;->setApCountry()Z

    move-result v12

    if-nez v12, :cond_88

    .line 3354
    const-string v12, "WifiStateMachine"

    const-string v13, "Set AP Country failed"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_88} :catch_bf

    .line 3362
    :cond_88
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v12, v5}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_e2

    .line 3363
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error tethering on "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3364
    const/4 v12, 0x0

    .line 3372
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v5           #intf:Ljava/lang/String;
    .end local v7           #len$:I
    .end local v8           #regex:Ljava/lang/String;
    :goto_a7
    return v12

    .line 3342
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v5       #intf:Ljava/lang/String;
    .restart local v7       #len$:I
    .restart local v8       #regex:Ljava/lang/String;
    :cond_a8
    :try_start_a8
    const-string v12, "WifiStateMachine"

    const-string v13, "Ipaddress = 192.168.43.1"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    new-instance v12, Landroid/net/LinkAddress;

    const-string v13, "192.168.43.1"

    invoke-static {v13}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    const/16 v14, 0x18

    invoke-direct {v12, v13, v14}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v12, v4, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_be} :catch_bf

    goto :goto_6d

    .line 3357
    :catch_bf
    move-exception v1

    .line 3358
    .local v1, e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error configuring interface "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3359
    const/4 v12, 0x0

    goto :goto_a7

    .line 3366
    .end local v1           #e:Ljava/lang/Exception;
    :cond_e2
    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    .line 3367
    const/4 v12, 0x1

    goto :goto_a7

    .line 3325
    .end local v4           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_e6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_26

    .line 3372
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #intf:Ljava/lang/String;
    .end local v7           #len$:I
    .end local v8           #regex:Ljava/lang/String;
    :cond_ea
    const/4 v12, 0x0

    goto :goto_a7
.end method

.method private stopTethering()V
    .registers 6

    .prologue
    .line 3377
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3381
    const/4 v1, 0x0

    .line 3383
    .local v1, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 3384
    if-eqz v1, :cond_23

    .line 3385
    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, v1, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 3387
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_33

    .line 3393
    :cond_23
    :goto_23
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_32

    .line 3394
    const-string v2, "Untether initiate failed!"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3396
    :cond_32
    return-void

    .line 3389
    :catch_33
    move-exception v0

    .line 3390
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error resetting interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_23
.end method

.method private string2Byte(Ljava/lang/String;)[B
    .registers 7
    .parameter "hexString"

    .prologue
    .line 3215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 3216
    .local v2, len:I
    new-array v0, v2, [B

    .line 3217
    .local v0, byteArray:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v2, :cond_24

    .line 3218
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 3217
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3220
    :cond_24
    return-object v0
.end method

.method private triggerCWDeRegister()V
    .registers 3

    .prologue
    .line 788
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W De-Register+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine$CwHandler;->sendEmptyMessage(I)Z

    .line 790
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W De-Register-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void
.end method

.method private triggerCWRegister(J)V
    .registers 5
    .parameter "delayMillis"

    .prologue
    .line 782
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W register+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine$CwHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 784
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W register-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-void
.end method

.method private updateApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 10
    .parameter "config"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1366
    sput-boolean v6, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1367
    const-string v3, "WifiStateMachine"

    const-string/jumbo v4, "updateApConfiguration..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    if-nez v3, :cond_22

    .line 1370
    :cond_1a
    const-string v3, "WifiStateMachine"

    const-string v4, "[updateApConfiguration]mConfig is null..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_21
    :goto_21
    return-void

    .line 1374
    :cond_22
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 1375
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 1376
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1379
    :cond_4e
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    if-eq v3, v4, :cond_6e

    .line 1380
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    iput-boolean v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 1381
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1384
    :cond_6e
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    if-eqz v3, :cond_9a

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 1385
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 1386
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1389
    :cond_9a
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-eqz v3, :cond_c0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d0

    .line 1390
    :cond_c0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 1391
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1395
    :cond_d0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    if-lt v3, v5, :cond_100

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    if-gt v3, v7, :cond_100

    .line 1396
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    if-eq v3, v4, :cond_100

    .line 1397
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 1398
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1402
    :cond_100
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    if-lt v3, v5, :cond_130

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    if-gt v3, v7, :cond_130

    .line 1403
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    if-eq v3, v4, :cond_130

    .line 1404
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 1405
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1409
    :cond_130
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    if-eq v3, v4, :cond_150

    .line 1410
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 1411
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1414
    :cond_150
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    if-eq v3, v4, :cond_170

    .line 1415
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 1416
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1419
    :cond_170
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    if-eq v3, v4, :cond_190

    .line 1420
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    .line 1421
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1424
    :cond_190
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    if-eqz v3, :cond_1bc

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1bc

    .line 1425
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 1426
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1429
    :cond_1bc
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    if-eqz v3, :cond_1e8

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 1430
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 1431
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1434
    :cond_1e8
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    if-eqz v3, :cond_214

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_214

    .line 1435
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 1436
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1439
    :cond_214
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    if-eqz v3, :cond_240

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_240

    .line 1440
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    .line 1441
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1444
    :cond_240
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    if-eqz v3, :cond_26c

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26c

    .line 1445
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    .line 1446
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1449
    :cond_26c
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    if-eq v3, v4, :cond_28c

    .line 1450
    iput-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    .line 1451
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    .line 1454
    :cond_28c
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    if-eq v3, v4, :cond_2ac

    .line 1455
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    .line 1456
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1460
    :cond_2ac
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    .line 1461
    .local v1, originalBlackList:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2b3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2d1

    .line 1462
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 1461
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b3

    .line 1464
    :cond_2d1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 1465
    .local v2, originalWhiteList:Ljava/lang/String;
    const/4 v0, 0x0

    :goto_2d8
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2f6

    .line 1466
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 1465
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d8

    .line 1468
    :cond_2f6
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30e

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_310

    .line 1469
    :cond_30e
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1473
    :cond_310
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    if-eq v3, v5, :cond_324

    .line 1474
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    .line 1475
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    if-eqz v3, :cond_324

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1478
    :cond_324
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getPendingRequestedList()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_21

    .line 1479
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    .line 1480
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->CancelNotifyWIFIAPreqtimer()V

    goto/16 :goto_21
.end method

.method private updateBlackList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .registers 8
    .parameter "macStr"
    .parameter "config"

    .prologue
    .line 1794
    const/4 v0, 0x0

    .line 1795
    .local v0, count:I
    if-nez p1, :cond_4

    .line 1815
    :cond_3
    return-void

    .line 1797
    :cond_4
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1799
    .local v1, index:I
    if-ltz v1, :cond_3

    .line 1801
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1803
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 1804
    :goto_1d
    if-lez v1, :cond_3

    .line 1805
    const-string v3, ","

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1807
    .local v2, lastindex:I
    if-ltz v2, :cond_3

    const/16 v3, 0xf

    if-gt v0, v3, :cond_3

    .line 1809
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1810
    add-int/lit8 v0, v0, 0x1

    .line 1811
    add-int/lit8 v2, v2, 0x1

    .line 1812
    move v1, v2

    goto :goto_1d
.end method

.method private updateWhiteList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .registers 8
    .parameter "macStr"
    .parameter "config"

    .prologue
    .line 1768
    const/4 v0, 0x0

    .line 1769
    .local v0, count:I
    if-nez p1, :cond_4

    .line 1788
    :cond_3
    return-void

    .line 1771
    :cond_4
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1773
    .local v1, index:I
    if-ltz v1, :cond_3

    .line 1775
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1777
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 1778
    :goto_1d
    if-lez v1, :cond_3

    .line 1779
    const-string v3, ","

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1781
    .local v2, lastindex:I
    if-ltz v2, :cond_3

    const/16 v3, 0xf

    if-gt v0, v3, :cond_3

    .line 1783
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1784
    add-int/lit8 v0, v0, 0x1

    .line 1785
    add-int/lit8 v2, v2, 0x1

    .line 1786
    move v1, v2

    goto :goto_1d
.end method

.method private writeWifiApStatusForFlashlight(Z)V
    .registers 10
    .parameter "enable"

    .prologue
    .line 3539
    const/4 v2, 0x0

    .line 3541
    .local v2, fWriter:Ljava/io/FileWriter;
    :try_start_1
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/camera_led_status/led_hotspot_status"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_83
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_d7

    .line 3542
    .end local v2           #fWriter:Ljava/io/FileWriter;
    .local v3, fWriter:Ljava/io/FileWriter;
    :try_start_8
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    if-eqz p1, :cond_2f

    .line 3544
    const-string v4, "1\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_d4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_28} :catch_35

    .line 3552
    :goto_28
    if-eqz v3, :cond_2d

    :try_start_2a
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_af

    .line 3556
    .end local v3           #fWriter:Ljava/io/FileWriter;
    :cond_2d
    :goto_2d
    const/4 v2, 0x0

    .line 3558
    .restart local v2       #fWriter:Ljava/io/FileWriter;
    return-void

    .line 3546
    .end local v2           #fWriter:Ljava/io/FileWriter;
    .restart local v3       #fWriter:Ljava/io/FileWriter;
    :cond_2f
    :try_start_2f
    const-string v4, "0\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_d4
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_35

    goto :goto_28

    .line 3548
    :catch_35
    move-exception v0

    move-object v2, v3

    .line 3549
    .end local v3           #fWriter:Ljava/io/FileWriter;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #fWriter:Ljava/io/FileWriter;
    :goto_37
    :try_start_37
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_37 .. :try_end_59} :catchall_83

    .line 3552
    if-eqz v2, :cond_2d

    :try_start_5b
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_2d

    .line 3553
    :catch_5f
    move-exception v1

    .line 3554
    .local v1, exception:Ljava/io/IOException;
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2.set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 3551
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #exception:Ljava/io/IOException;
    :catchall_83
    move-exception v4

    .line 3552
    :goto_84
    if-eqz v2, :cond_89

    :try_start_86
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8b

    .line 3556
    :cond_89
    :goto_89
    const/4 v2, 0x0

    .line 3551
    throw v4

    .line 3553
    :catch_8b
    move-exception v1

    .line 3554
    .restart local v1       #exception:Ljava/io/IOException;
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2.set flash flag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 3553
    .end local v1           #exception:Ljava/io/IOException;
    .end local v2           #fWriter:Ljava/io/FileWriter;
    .restart local v3       #fWriter:Ljava/io/FileWriter;
    :catch_af
    move-exception v1

    .line 3554
    .restart local v1       #exception:Ljava/io/IOException;
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2.set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 3551
    .end local v1           #exception:Ljava/io/IOException;
    :catchall_d4
    move-exception v4

    move-object v2, v3

    .end local v3           #fWriter:Ljava/io/FileWriter;
    .restart local v2       #fWriter:Ljava/io/FileWriter;
    goto :goto_84

    .line 3548
    :catch_d7
    move-exception v0

    goto/16 :goto_37
.end method


# virtual methods
.method public CancelNotifyWIFIAPreqtimer()V
    .registers 3

    .prologue
    .line 1491
    const-string v0, "WifiStateMachine"

    const-string v1, "CancelNotifyWIFIAPreqtimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConnReqTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1493
    return-void
.end method

.method public declared-synchronized CtrlMsg(Ljava/lang/String;)Z
    .registers 4
    .parameter "MsgDetail"

    .prologue
    .line 862
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 863
    const/4 v0, 0x0

    .line 865
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->CtrlMsg(Ljava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 862
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public SetNotifyWIFIAPreqtimer()V
    .registers 7

    .prologue
    .line 1485
    const-string v2, "WifiStateMachine"

    const-string v3, "SetNotifyWIFIAPreqtimer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long v0, v2, v4

    .line 1487
    .local v0, triggerTime:J
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConnReqTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1488
    return-void
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .registers 3
    .parameter "bssid"

    .prologue
    .line 2495
    const v0, 0x20039

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2496
    return-void
.end method

.method public assignDongleIP(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "BSSID"

    .prologue
    const/4 v10, 0x1

    .line 1958
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 1959
    .local v5, hash:I
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "assignDongleIP, hash = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    const-string v2, "0.0.0.0"

    .line 1965
    .local v2, dongleIP:Ljava/lang/String;
    :try_start_1f
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_aa

    .line 1967
    const-string v7, "WifiStateMachine"

    const-string v8, "assignDongleIP, Hotspot is ON, Use hotspot DHCP range for dongle..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1970
    .local v1, IPStart:[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int v8, v8, 0xfe

    rem-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v5, v7, v8

    .line 1971
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_8f} :catch_23f

    move-result-object v2

    .line 2019
    :goto_90
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dongleIP = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 2046
    .end local v1           #IPStart:[Ljava/lang/String;
    .end local v2           #dongleIP:Ljava/lang/String;
    .local v3, dongleIP:Ljava/lang/String;
    :goto_a9
    return-object v3

    .line 1975
    .end local v3           #dongleIP:Ljava/lang/String;
    .restart local v2       #dongleIP:Ljava/lang/String;
    :cond_aa
    :try_start_aa
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v7

    if-eq v7, v10, :cond_1cb

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_1cb

    .line 1977
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v7, v7, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xb

    if-lt v7, v8, :cond_154

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v7, v7, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "192.168.6.10"

    const/4 v9, 0x0

    const/16 v10, 0xa

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_154

    .line 1980
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hotspot_dhcp_start_ip"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1981
    .local v6, startingIP:Ljava/lang/String;
    if-nez v6, :cond_f1

    .line 1982
    sget-object v6, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String;

    .line 1984
    :cond_f1
    const-string v7, "WifiStateMachine"

    const-string v8, "assignDongleIP, WiFi is connected and STA IP conflict with WiFi display IP, use original DHCP range for dongle..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1986
    .restart local v1       #IPStart:[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int v8, v8, 0xfe

    rem-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v5, v7, v8

    .line 1987
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1989
    goto/16 :goto_90

    .line 1992
    .end local v1           #IPStart:[Ljava/lang/String;
    .end local v6           #startingIP:Ljava/lang/String;
    :cond_154
    const-string v7, "WifiStateMachine"

    const-string v8, "assignDongleIP, WiFi is connected, use WIFIDISPLAY DHCP range for dongle..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    const-string v7, "192.168.6.10"

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1994
    .restart local v1       #IPStart:[Ljava/lang/String;
    const-string v7, "192.168.6.254"

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1995
    .local v0, IPEnd:[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    aget-object v9, v1, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v8, v9

    rem-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v5, v7, v8

    .line 1996
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1997
    goto/16 :goto_90

    .line 2002
    .end local v0           #IPEnd:[Ljava/lang/String;
    .end local v1           #IPStart:[Ljava/lang/String;
    :cond_1cb
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hotspot_dhcp_start_ip"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2003
    .restart local v6       #startingIP:Ljava/lang/String;
    if-nez v6, :cond_1dc

    .line 2004
    sget-object v6, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String;

    .line 2007
    :cond_1dc
    const-string v7, "WifiStateMachine"

    const-string v8, "assignDongleIP, WiFi is disconnected, use original DHCP range for dongle..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2009
    .restart local v1       #IPStart:[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int v8, v8, 0xfe

    rem-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v5, v7, v8

    .line 2011
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_23c
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_23c} :catch_23f

    move-result-object v2

    goto/16 :goto_90

    .line 2014
    .end local v1           #IPStart:[Ljava/lang/String;
    .end local v6           #startingIP:Ljava/lang/String;
    :catch_23f
    move-exception v4

    .line 2015
    .local v4, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error assign dongleIP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object v3, v2

    .line 2016
    .end local v2           #dongleIP:Ljava/lang/String;
    .restart local v3       #dongleIP:Ljava/lang/String;
    goto/16 :goto_a9
.end method

.method public byteArrayToHexString([B)Ljava/lang/String;
    .registers 10
    .parameter "raw"

    .prologue
    .line 7698
    if-nez p1, :cond_4

    .line 7699
    const/4 v5, 0x0

    .line 7705
    :goto_3
    return-object v5

    .line 7701
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7702
    .local v2, hex:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_f
    if-ge v3, v4, :cond_2f

    aget-byte v1, v0, v3

    .line 7703
    .local v1, b:B
    const-string v5, "0123456789ABCDEF"

    and-int/lit16 v6, v1, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0123456789ABCDEF"

    and-int/lit8 v7, v1, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7702
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 7705
    .end local v1           #b:B
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public cWsetDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 4308
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 4310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CW_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4311
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C+W][cW-fake wifi]Before WifiStateMachine send networkInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4324
    const-string/jumbo v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4325
    const-string/jumbo v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4326
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_58

    .line 4327
    const-string/jumbo v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4328
    :cond_58
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 4329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C+W][cW-fake wifi]after WifiStateMachine send intent action  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4330
    return-void
.end method

.method public checkWifiApPassword()V
    .registers 5

    .prologue
    .line 2626
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-nez v1, :cond_2c

    .line 2627
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCustomizedPassword()Ljava/lang/String;

    move-result-object v0

    .line 2628
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_2d

    .line 2629
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 2633
    :goto_18
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_password"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2635
    .end local v0           #key:Ljava/lang/String;
    :cond_2c
    return-void

    .line 2631
    .restart local v0       #key:Ljava/lang/String;
    :cond_2d
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    const-string v2, "1234567890"

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    goto :goto_18
.end method

.method public checkWifiApSsid()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 2638
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-nez v1, :cond_30

    .line 2639
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID:Z

    .line 2640
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCustomizedSsid()Ljava/lang/String;

    move-result-object v0

    .line 2641
    .local v0, ssidimei:Ljava/lang/String;
    if-eqz v0, :cond_2f

    .line 2642
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 2643
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_ssid"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2653
    .end local v0           #ssidimei:Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-void

    .line 2645
    :cond_30
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID:Z

    if-ne v1, v2, :cond_2f

    .line 2646
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID:Z

    .line 2647
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCustomizedSsid()Ljava/lang/String;

    move-result-object v0

    .line 2648
    .restart local v0       #ssidimei:Ljava/lang/String;
    if-eqz v0, :cond_2f

    .line 2649
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 2650
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_ssid"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2f
.end method

.method public clearBlacklist()V
    .registers 2

    .prologue
    .line 2503
    const v0, 0x2003a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2504
    return-void
.end method

.method clearWepErrorNotification()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1525
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1526
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->setWepErrorNotificationVisible(Z)V

    .line 1527
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    .line 1528
    const-string v0, "clear WEP_ERROR icon"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1530
    :cond_10
    return-void
.end method

.method public connectNetwork(I)V
    .registers 4
    .parameter "netId"

    .prologue
    .line 2507
    const v0, 0x20056

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2508
    return-void
.end method

.method public connectNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 5
    .parameter "wifiConfig"

    .prologue
    .line 2515
    const v0, 0x20056

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2517
    return-void
.end method

.method public cwhtcStateUpdate(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;
    .registers 7
    .parameter "detailedState"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 4284
    monitor-enter p0

    .line 4285
    :try_start_1
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 4286
    .local v0, netInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_14

    .line 4287
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] can not get networkInfo*********,the networkIfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4288
    const/4 v0, 0x0

    monitor-exit p0

    .line 4291
    .end local v0           #netInfo:Landroid/net/NetworkInfo;
    :goto_13
    return-object v0

    .line 4290
    .restart local v0       #netInfo:Landroid/net/NetworkInfo;
    :cond_14
    invoke-virtual {v0, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 4291
    monitor-exit p0

    goto :goto_13

    .line 4292
    .end local v0           #netInfo:Landroid/net/NetworkInfo;
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public disableNetwork(Landroid/os/Messenger;II)V
    .registers 6
    .parameter "replyTo"
    .parameter "netId"
    .parameter "reason"

    .prologue
    .line 2566
    const v1, 0x20038

    invoke-virtual {p0, v1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2567
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2568
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2569
    return-void
.end method

.method public disconnectCommand()V
    .registers 2

    .prologue
    .line 2414
    const v0, 0x2004a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2415
    return-void
.end method

.method public enableAllNetworks()V
    .registers 2

    .prologue
    .line 2667
    const v0, 0x20037

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2668
    return-void
.end method

.method public enableBackgroundScanCommand(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 2663
    const v2, 0x2005b

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2664
    return-void

    :cond_f
    move v0, v1

    .line 2663
    goto :goto_7
.end method

.method public enableRssiPolling(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 2659
    const v2, 0x20052

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2660
    return-void

    :cond_f
    move v0, v1

    .line 2659
    goto :goto_7
.end method

.method public forceUpdateRSSI()V
    .registers 2

    .prologue
    .line 2837
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 2838
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V

    .line 2839
    return-void
.end method

.method public forgetNetwork(I)V
    .registers 4
    .parameter "netId"

    .prologue
    .line 2524
    const v0, 0x20058

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2525
    return-void
.end method

.method public getAssocListStr()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1186
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_a

    .line 1194
    :goto_9
    return-object v0

    .line 1189
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getAssocList()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    .local v0, assoclist:Ljava/lang/String;
    goto :goto_9

    .line 1190
    .end local v0           #assoclist:Ljava/lang/String;
    :catch_11
    move-exception v1

    .line 1191
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getAssocListStr(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public getClientInfo()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1167
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_a

    .line 1178
    :goto_9
    return-object v0

    .line 1171
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getLeasesList()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_29

    move-result-object v0

    .line 1177
    .local v0, clientinfo:Ljava/lang/String;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clientInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1172
    .end local v0           #clientinfo:Ljava/lang/String;
    :catch_29
    move-exception v1

    .line 1173
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getClientInfo() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public getConfigFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2895
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomizedPassword()Ljava/lang/String;
    .registers 7

    .prologue
    .line 2587
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    if-eqz v3, :cond_39

    .line 2589
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2591
    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .line 2592
    .local v2, mdn:Ljava/lang/String;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 2593
    :cond_16
    if-eqz v2, :cond_52

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_52

    .line 2594
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomizedPassword mdn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    .end local v1           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .end local v2           #mdn:Ljava/lang/String;
    :goto_38
    return-object v2

    .line 2597
    :cond_39
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    if-eqz v3, :cond_52

    .line 2598
    const-string/jumbo v3, "ro.gsm.imei"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2599
    .local v0, imei:Ljava/lang/String;
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_52

    move-object v2, v0

    .line 2600
    goto :goto_38

    .line 2603
    .end local v0           #imei:Ljava/lang/String;
    :cond_52
    const/4 v2, 0x0

    goto :goto_38
.end method

.method public getCustomizedSsid()Ljava/lang/String;
    .registers 7

    .prologue
    .line 2607
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z

    if-eqz v3, :cond_6a

    .line 2608
    const-string/jumbo v3, "ro.gsm.imei"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2609
    .local v0, imei:Ljava/lang/String;
    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_6a

    .line 2610
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x9b

    if-ne v3, v4, :cond_40

    .line 2611
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2612
    .local v1, imei2:Ljava/lang/String;
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomizedSsid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    .end local v0           #imei:Ljava/lang/String;
    .end local v1           #imei2:Ljava/lang/String;
    :goto_3f
    return-object v1

    .line 2614
    .restart local v0       #imei:Ljava/lang/String;
    :cond_40
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 2615
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2616
    .local v2, imei4:Ljava/lang/String;
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomizedSsid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 2617
    goto :goto_3f

    .line 2621
    .end local v0           #imei:Ljava/lang/String;
    .end local v2           #imei4:Ljava/lang/String;
    :cond_6a
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method public getCwRegisterCapability()Z
    .registers 2

    .prologue
    .line 4265
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwRegisterCapability:Z

    return v0
.end method

.method public getCwRegisterState()Z
    .registers 2

    .prologue
    .line 2982
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwRegistered:Z

    return v0
.end method

.method public getDongleScanList()Ljava/util/List;
    .registers 2
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
    .line 1947
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDongleScanList:Ljava/util/List;

    return-object v0
.end method

.method public getFrequencyBand()I
    .registers 2

    .prologue
    .line 2888
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1144
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMacAddress()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v9, 0x0

    .line 1568
    monitor-enter p0

    const/4 v1, 0x0

    .line 1573
    .local v1, bufferReader:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/proc/calibration"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_e7

    .line 1574
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .local v2, bufferReader:Ljava/io/BufferedReader;
    if-nez v2, :cond_19

    .line 1631
    if-eqz v2, :cond_16

    .line 1632
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_109
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_100

    .line 1636
    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    :cond_16
    :goto_16
    const/4 v1, 0x0

    .line 1638
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    monitor-exit p0

    return-object v9

    .line 1576
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    :cond_19
    :try_start_19
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 1577
    .local v8, line:Ljava/lang/String;
    :goto_1d
    if-eqz v8, :cond_2d

    const-string/jumbo v10, "macaddr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2d

    .line 1578
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    goto :goto_1d

    .line 1585
    :cond_2d
    if-eqz v8, :cond_50

    const-string/jumbo v10, "macaddr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_50

    .line 1586
    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_19 .. :try_end_3d} :catchall_103
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3d} :catch_106

    move-result v6

    .line 1588
    .local v6, index:I
    if-gez v6, :cond_49

    .line 1590
    const/4 v9, 0x0

    .line 1631
    .end local v6           #index:I
    .local v9, tmpMac:Ljava/lang/String;
    :goto_41
    if-eqz v2, :cond_16

    .line 1632
    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_109
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_16

    .line 1633
    :catch_47
    move-exception v10

    goto :goto_16

    .line 1592
    .end local v9           #tmpMac:Ljava/lang/String;
    .restart local v6       #index:I
    :cond_49
    add-int/lit8 v6, v6, 0x1

    .line 1593
    :try_start_4b
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #tmpMac:Ljava/lang/String;
    goto :goto_41

    .line 1598
    .end local v6           #index:I
    .end local v9           #tmpMac:Ljava/lang/String;
    :cond_50
    const/16 v10, 0x20

    new-array v0, v10, [B

    .line 1600
    .local v0, buffer:[B
    new-instance v4, Ljava/io/File;

    const-string v10, "/proc/calibration"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1601
    .local v4, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 1603
    .local v5, in:Ljava/io/FileInputStream;
    if-nez v4, :cond_6d

    .line 1604
    const-string v10, "WifiStateMachine"

    const-string v11, "TI Open /proc/calibration fail, return MAC = NULL"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_103
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_65} :catch_106

    .line 1631
    if-eqz v2, :cond_16

    .line 1632
    :try_start_67
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_109
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_16

    .line 1633
    :catch_6b
    move-exception v10

    goto :goto_16

    .line 1608
    :cond_6d
    :try_start_6d
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #in:Ljava/io/FileInputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1609
    .restart local v5       #in:Ljava/io/FileInputStream;
    if-nez v5, :cond_83

    .line 1610
    const-string v10, "WifiStateMachine"

    const-string v11, "TI new FileInputStream fail, return MAC = NULL"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_6d .. :try_end_7b} :catchall_103
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_7b} :catch_106

    .line 1631
    if-eqz v2, :cond_16

    .line 1632
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_109
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_16

    .line 1633
    :catch_81
    move-exception v10

    goto :goto_16

    .line 1614
    :cond_83
    const/4 v10, 0x0

    const/16 v11, 0xf

    :try_start_86
    invoke-virtual {v5, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .line 1615
    .local v7, length:I
    const/4 v10, -0x1

    if-ne v7, v10, :cond_9e

    .line 1616
    const-string v10, "WifiStateMachine"

    const-string v11, "TI read file fail, return MAC = NULL"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_86 .. :try_end_94} :catchall_103
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_94} :catch_106

    .line 1631
    if-eqz v2, :cond_16

    .line 1632
    :try_start_96
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_109
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9b

    goto/16 :goto_16

    .line 1633
    :catch_9b
    move-exception v10

    goto/16 :goto_16

    .line 1620
    :cond_9e
    :try_start_9e
    const-string v10, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0xb

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0xa

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x6

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x5

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const/4 v13, 0x4

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const/4 v13, 0x3

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_e4
    .catchall {:try_start_9e .. :try_end_e4} :catchall_103
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_e4} :catch_106

    move-result-object v9

    .restart local v9       #tmpMac:Ljava/lang/String;
    goto/16 :goto_41

    .line 1627
    .end local v0           #buffer:[B
    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #in:Ljava/io/FileInputStream;
    .end local v7           #length:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #tmpMac:Ljava/lang/String;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    :catch_e7
    move-exception v3

    .line 1628
    .local v3, e:Ljava/io/IOException;
    :goto_e8
    const/4 v9, 0x0

    .line 1631
    .restart local v9       #tmpMac:Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 1632
    :try_start_eb
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_fb
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_f0

    goto/16 :goto_16

    .line 1633
    :catch_f0
    move-exception v10

    goto/16 :goto_16

    .line 1630
    .end local v3           #e:Ljava/io/IOException;
    .end local v9           #tmpMac:Ljava/lang/String;
    :catchall_f3
    move-exception v10

    .line 1631
    :goto_f4
    if-eqz v1, :cond_f9

    .line 1632
    :try_start_f6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_fb
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fe

    .line 1636
    :cond_f9
    :goto_f9
    const/4 v1, 0x0

    .line 1630
    :try_start_fa
    throw v10
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_fb

    .line 1568
    :catchall_fb
    move-exception v10

    :goto_fc
    monitor-exit p0

    throw v10

    .line 1633
    :catch_fe
    move-exception v11

    goto :goto_f9

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    :catch_100
    move-exception v10

    goto/16 :goto_16

    .line 1630
    :catchall_103
    move-exception v10

    move-object v1, v2

    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_f4

    .line 1627
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    :catch_106
    move-exception v3

    move-object v1, v2

    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_e8

    .line 1568
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    :catchall_109
    move-exception v10

    move-object v1, v2

    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_fc
.end method

.method public getMostPreferredNetwork()I
    .registers 11

    .prologue
    const/4 v5, -0x1

    const/4 v9, 0x0

    .line 4787
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 4789
    .local v4, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string/jumbo v6, "persist.sys.cw.ssid"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4790
    .local v1, mostPreferredSsid:Ljava/lang/String;
    const-string/jumbo v6, "persist.sys.cw.security"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4791
    .local v2, mostPreferredSsidSecurity:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b0

    .line 4792
    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mostPreferredSsid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " security = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_4d
    if-ltz v0, :cond_14d

    .line 4799
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 4800
    .local v3, tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_149

    .line 4801
    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mostPreferredSsid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " security = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    const-string/jumbo v6, "open"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 4803
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_149

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v9

    if-nez v6, :cond_149

    .line 4805
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[open] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    .end local v0           #i:I
    .end local v3           #tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :goto_af
    return v0

    :cond_b0
    move v0, v5

    .line 4795
    goto :goto_af

    .line 4809
    .restart local v0       #i:I
    .restart local v3       #tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_b2
    const-string/jumbo v6, "wep"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e2

    .line 4810
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_149

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v9

    if-eqz v6, :cond_149

    .line 4812
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[wep] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 4816
    :cond_e2
    const-string/jumbo v6, "wpapsk"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d

    .line 4817
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_149

    .line 4818
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[wpapsk] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 4822
    :cond_10d
    const-string v6, "eap"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_141

    .line 4823
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_127

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_149

    .line 4825
    :cond_127
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[[eap] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_af

    .line 4830
    :cond_141
    const-string v6, "WifiStateMachine"

    const-string/jumbo v7, "no matched mostPreferredNetworkSecurity this time"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    :cond_149
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4d

    .line 4834
    .end local v3           #tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_14d
    const-string v6, "WifiStateMachine"

    const-string/jumbo v7, "no matched mostPreferredNetworkSsid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 4835
    goto/16 :goto_af
.end method

.method public getPendingRequestedList()Ljava/lang/String;
    .registers 14

    .prologue
    const/16 v12, 0x10

    .line 1234
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1235
    .local v8, requestedlist:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1237
    .local v6, recentTime:J
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    if-nez v9, :cond_1a

    .line 1238
    const-string v9, "WifiStateMachine"

    const-string v10, "getPendingRequestedList null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const/4 v9, 0x0

    .line 1278
    :goto_19
    return-object v9

    .line 1242
    :cond_1a
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_38

    .line 1243
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v4

    .line 1244
    .local v4, mac:Ljava/lang/String;
    if-nez v4, :cond_55

    .line 1245
    const-string v9, "WifiStateMachine"

    const-string v10, "getPendingRequestedList should not go here"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    .end local v4           #mac:Ljava/lang/String;
    :cond_38
    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPendingRequestedList return: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_19

    .line 1248
    .restart local v4       #mac:Ljava/lang/String;
    :cond_55
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1250
    const/4 v5, 0x1

    .line 1252
    .local v5, pendingRequest:Z
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getTime()J

    move-result-wide v9

    sub-long v0, v6, v9

    .line 1253
    .local v0, diffTime:J
    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPendingRequestedList mac: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " diffTime: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const-wide/32 v9, 0x1d4c0

    cmp-long v9, v0, v9

    if-lez v9, :cond_9f

    .line 1255
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1256
    add-int/lit8 v2, v2, -0x1

    .line 1257
    const/4 v5, 0x0

    .line 1260
    :cond_9f
    const/4 v3, 0x0

    .local v3, j:I
    :goto_a0
    if-ge v3, v12, :cond_c8

    if-eqz v5, :cond_c8

    .line 1261
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v9, v9, v3

    if-eqz v9, :cond_c5

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 1263
    const/4 v5, 0x0

    .line 1260
    :cond_c5
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 1266
    :cond_c8
    const/4 v3, 0x0

    :goto_c9
    if-ge v3, v12, :cond_f1

    if-eqz v5, :cond_f1

    .line 1267
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v9, v9, v3

    if-eqz v9, :cond_ee

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ee

    .line 1269
    const/4 v5, 0x0

    .line 1266
    :cond_ee
    add-int/lit8 v3, v3, 0x1

    goto :goto_c9

    .line 1272
    :cond_f1
    if-eqz v5, :cond_109

    .line 1273
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1242
    :cond_109
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1b
.end method

.method public getRequestedList()Ljava/lang/String;
    .registers 11

    .prologue
    .line 1198
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1199
    .local v6, requestedlist:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1201
    .local v4, recentTime:J
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    if-nez v7, :cond_18

    .line 1202
    const-string v7, "WifiStateMachine"

    const-string v8, "getRequestedList null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v7, 0x0

    .line 1223
    :goto_17
    return-object v7

    .line 1206
    :cond_18
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_93

    .line 1207
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v3

    .line 1208
    .local v3, mac:Ljava/lang/String;
    if-eqz v3, :cond_8c

    .line 1209
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getTime()J

    move-result-wide v7

    sub-long v0, v4, v7

    .line 1210
    .local v0, diffTime:J
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRequestedList mac: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " diffTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const-wide/32 v7, 0x1d4c0

    cmp-long v7, v0, v7

    if-lez v7, :cond_73

    .line 1212
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1213
    add-int/lit8 v2, v2, -0x1

    .line 1215
    :cond_73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1206
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1217
    .end local v0           #diffTime:J
    :cond_8c
    const-string v7, "WifiStateMachine"

    const-string v8, "getRequestedList should not go here"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    .end local v3           #mac:Ljava/lang/String;
    :cond_93
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRequestedList return: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_17
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .registers 2

    .prologue
    .line 1887
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringDhcpRange()[Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1869
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v3, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 1870
    .local v3, startingIP:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 1871
    .local v1, dhcpSubnetMask:Ljava/lang/String;
    if-eqz v3, :cond_4f

    if-eqz v1, :cond_4f

    .line 1873
    const/4 v4, 0x2

    :try_start_16
    new-array v0, v4, [Ljava/lang/String;

    .line 1874
    .local v0, dhcpRange:[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 1875
    const/4 v4, 0x1

    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->findEndIP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 1876
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTetheringDhcpRange dhcpRange[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dhcpRange[1]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4a} :catch_4b

    .line 1882
    .end local v0           #dhcpRange:[Ljava/lang/String;
    :goto_4a
    return-object v0

    .line 1878
    :catch_4b
    move-exception v2

    .line 1879
    .local v2, e:Ljava/lang/Exception;
    new-array v0, v7, [Ljava/lang/String;

    goto :goto_4a

    .line 1882
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4f
    new-array v0, v7, [Ljava/lang/String;

    goto :goto_4a
.end method

.method public getWifiApClients()I
    .registers 2

    .prologue
    .line 1182
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    return v0
.end method

.method public declared-synchronized getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 4

    .prologue
    .line 1107
    monitor-enter p0

    :try_start_1
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiApConfiguration:mconfig.SSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const-string/jumbo v0, "wifi hotspot"

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 1109
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-object v0

    .line 1107
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWifidisplayApEnabled()Z
    .registers 4

    .prologue
    .line 2148
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFiDisplay: getWifidisplayApEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    return v0
.end method

.method handlePostDhcpSetup()V
    .registers 4

    .prologue
    .line 4097
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4098
    const-string v0, "WifiStateMachine"

    const-string v1, "handlePostDhcpSetup release wake lock during DHCP"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4099
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4101
    :cond_14
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 4102
    const-string v0, "WifiStateMachine"

    const-string v1, "handlePostDhcpSetup PoerMode is active"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    .line 4105
    :cond_23
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePostDhcpSetup setPowerModeCommand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4107
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    .line 4110
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceModeCommand(I)Z

    .line 4112
    return-void
.end method

.method handlePreDhcpSetup()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 4053
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_18

    .line 4054
    const-string v0, "WifiStateMachine"

    const-string v1, "handlePreDhcpSetup Held wake lock during DHCP"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4055
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4059
    :cond_18
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    if-nez v0, :cond_1f

    .line 4077
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceModeCommand(I)Z

    .line 4081
    :cond_1f
    invoke-static {}, Landroid/net/wifi/WifiNative;->getPowerModeCommand()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    .line 4082
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePreDhcpSetup getPowerModeCommand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    if-gez v0, :cond_46

    .line 4086
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    .line 4088
    :cond_46
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    if-eq v0, v3, :cond_4d

    .line 4089
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    .line 4091
    :cond_4d
    return-void
.end method

.method public hasIpAddress()Z
    .registers 2

    .prologue
    .line 3039
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mHaveIpAddress:Z

    return v0
.end method

.method public htcSetDetailedState(Landroid/net/NetworkInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "info"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4378
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 4381
    .local v1, state:Landroid/net/NetworkInfo$DetailedState;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    if-ne v1, v4, :cond_16

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    if-eq p2, v4, :cond_38

    .line 4382
    :cond_16
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_21

    move v2, v3

    .line 4383
    .local v2, wasConnecting:Z
    :cond_21
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 4389
    .local v0, lastReason:Ljava/lang/String;
    if-eqz v2, :cond_32

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_32

    if-nez p2, :cond_32

    if-eqz v0, :cond_32

    .line 4391
    move-object p2, v0

    .line 4392
    :cond_32
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 4402
    .end local v0           #lastReason:Ljava/lang/String;
    .end local v2           #wasConnecting:Z
    :cond_38
    return v2
.end method

.method public increseCwRetryCounter()I
    .registers 3

    .prologue
    .line 3008
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    .line 3009
    .local v0, currentValue:I
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    .line 3010
    return v0
.end method

.method public isConnectionCompleted()Z
    .registers 3

    .prologue
    .line 3031
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSsdpFilterRuleEnabled()Z
    .registers 2

    .prologue
    .line 2754
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    return v0
.end method

.method public notifyAssocListChange()V
    .registers 2

    .prologue
    .line 1136
    const v0, 0x2007c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1137
    return-void
.end method

.method public notifyConnectionRequest(Ljava/lang/String;)V
    .registers 3
    .parameter "mac"

    .prologue
    .line 1132
    const v0, 0x2007b

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1133
    return-void
.end method

.method public notifyEapNotification(Ljava/lang/String;)V
    .registers 3
    .parameter "MsgDetail"

    .prologue
    .line 4220
    const v0, 0x20021

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 4221
    return-void
.end method

.method public notifyGetAirPlaneMode()V
    .registers 2

    .prologue
    .line 4216
    const v0, 0x20020

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4217
    return-void
.end method

.method public notifyL2peFail()V
    .registers 2

    .prologue
    .line 2561
    const v0, 0x20067

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2562
    return-void
.end method

.method public notifyL2peSuccessful()V
    .registers 2

    .prologue
    .line 2557
    const v0, 0x20066

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2558
    return-void
.end method

.method public declared-synchronized notifyPhoneCallStatus(I)Z
    .registers 6
    .parameter "phoneStatus"

    .prologue
    .line 2810
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2c

    .line 2811
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyPhoneCallStatus: wifistate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_31

    .line 2812
    const/4 v0, 0x0

    .line 2815
    :goto_2a
    monitor-exit p0

    return v0

    .line 2814
    :cond_2c
    :try_start_2c
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->notifyPhoneCallStatus(I)Z
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_31

    move-result v0

    .line 2815
    .local v0, bRtn:Z
    goto :goto_2a

    .line 2810
    .end local v0           #bRtn:Z
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public notifyWpsRegistrarFail()V
    .registers 2

    .prologue
    .line 2552
    const v0, 0x20065

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2553
    return-void
.end method

.method public notifyWpsRegistrarStart()V
    .registers 2

    .prologue
    .line 2544
    const v0, 0x20063

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2545
    return-void
.end method

.method public notifyWpsRegistrarSuccessful()V
    .registers 2

    .prologue
    .line 2548
    const v0, 0x20064

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2549
    return-void
.end method

.method public printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .registers 6
    .parameter "tag"
    .parameter "profile"

    .prologue
    .line 1818
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hiddenSSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", secureType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enableMacFilter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxConns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dhcpEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxDhcpClients="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dhcpSubnetMask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startingIP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dhsIPAddr1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dnsIPAddr2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sleepPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    return-void
.end method

.method public reassociateCommand()V
    .registers 2

    .prologue
    .line 2428
    const v0, 0x2004c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2429
    return-void
.end method

.method public reconnectCommand()V
    .registers 2

    .prologue
    .line 2421
    const v0, 0x2004b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2422
    return-void
.end method

.method public resetCwRetryCounter()V
    .registers 2

    .prologue
    .line 3013
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    .line 3014
    return-void
.end method

.method public resetDhcpConfig()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1149
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 1150
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hotspot_dhcp_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1153
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    sget-object v1, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 1154
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hotspot_dhcp_start_ip"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1157
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "192.168.1.1"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 1158
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hotspot_id_address"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1161
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "255.255.255.0"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hotspot_subnet_mask"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1163
    return-void
.end method

.method public resetWifiDisplayDhcpConfig()V
    .registers 6

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 1903
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 1905
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetWifiDisplayDhcpConfig, STA IP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v2, v2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WIFIDISPLAY_IP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "192.168.6.10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v0, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5d

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v0, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "192.168.6.10"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1907
    const-string v0, "WifiStateMachine"

    const-string v1, "WiFi STA IP equals with WIFIDISPLAY_HOTSPOT_DEFAULT_DHCP_STARTING_IP, use original DHCP for hotspot!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :goto_5c
    return-void

    .line 1910
    :cond_5d
    const-string v0, "WifiStateMachine"

    const-string v1, "Use WIFIDISPLAY_HOTSPOT_DEFAULT_DHCP_STARTING_IP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "192.168.6.10"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 1914
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "192.168.6.1"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 1916
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "255.255.255.0"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    goto :goto_5c
.end method

.method public saveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3
    .parameter "wifiConfig"

    .prologue
    .line 2520
    const v0, 0x20057

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2521
    return-void
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 2902
    const v0, 0x2001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2903
    return-void
.end method

.method public declared-synchronized setAssociationManual(Z)Z
    .registers 3
    .parameter "isManual"

    .prologue
    .line 1283
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    .line 1284
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 1283
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConnectionReqNotificationVisible(Z)V
    .registers 11
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1533
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConnectionReqNotificationVisible visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v4, "zzzz_stat_notify_wifi_router_in_range"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1535
    .local v0, ICON_WIFI_AP_CLIENT_CONNECTED:I
    if-nez p1, :cond_2f

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotificationShown:Z

    if-nez v3, :cond_2f

    .line 1560
    :goto_2e
    return-void

    .line 1539
    :cond_2f
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1542
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_96

    .line 1543
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    if-nez v3, :cond_6e

    .line 1544
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.hotspot.management_wifi_client"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    .line 1549
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 1551
    :cond_6e
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20401bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1552
    .local v1, details:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iput-object v8, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1553
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v8, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1555
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1559
    .end local v1           #details:Ljava/lang/CharSequence;
    :goto_93
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotificationShown:Z

    goto :goto_2e

    .line 1557
    :cond_96
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_93
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .registers 5
    .parameter "countryCode"
    .parameter "persist"

    .prologue
    .line 2862
    if-eqz p2, :cond_e

    .line 2863
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_country_code"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2867
    :cond_e
    const v0, 0x20050

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2868
    return-void
.end method

.method public setCwRegisterCapability(Z)V
    .registers 2
    .parameter "capability"

    .prologue
    .line 4262
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mCwRegisterCapability:Z

    .line 4263
    return-void
.end method

.method public setCwRegisterState(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 2979
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mCwRegistered:Z

    .line 2980
    return-void
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 4333
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_67

    .line 4334
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 4335
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/wifi/WifiStateMachine;->cwhtcStateUpdate(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    .line 4337
    invoke-virtual {p0, p1, v2, v2}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 4338
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C+W] DetailedState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ExtranIffo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4348
    :goto_60
    return-void

    .line 4341
    :cond_61
    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    .line 4342
    invoke-virtual {p0, p1, v2, v2}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    .line 4346
    :cond_67
    invoke-virtual {p0, p1, v2, v2}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 4361
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->cwhtcStateUpdate(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4362
    .local v0, mUpdatedNetworkInfo:Landroid/net/NetworkInfo;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4365
    const/16 v1, 0x131

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 4366
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] for message error>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4373
    :cond_1c
    :goto_1c
    return-void

    .line 4369
    :cond_1d
    invoke-virtual {p0, v0, p2, p3}, Landroid/net/wifi/WifiStateMachine;->htcSetDetailedState(Landroid/net/NetworkInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4370
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_1c
.end method

.method public setDriverStart(ZZ)V
    .registers 6
    .parameter "enable"
    .parameter "ecm"

    .prologue
    const/4 v1, 0x0

    .line 2374
    if-eqz p1, :cond_a

    .line 2375
    const v0, 0x2000d

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2379
    :goto_9
    return-void

    .line 2377
    :cond_a
    const v2, 0x2000e

    if-eqz p2, :cond_18

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_9

    :cond_18
    move v0, v1

    goto :goto_10
.end method

.method public setFrequencyBand(IZ)V
    .registers 5
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 2876
    if-eqz p2, :cond_e

    .line 2877
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_frequency_band"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2881
    :cond_e
    const v0, 0x2005a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2882
    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 2853
    const v2, 0x2004d

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2854
    return-void

    :cond_f
    move v0, v1

    .line 2853
    goto :goto_7
.end method

.method public declared-synchronized setHotspotAutoChannel(I)V
    .registers 4
    .parameter "autoChannel"

    .prologue
    .line 2821
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    if-eq v0, p1, :cond_33

    .line 2822
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 2823
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_23

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_33

    .line 2825
    :cond_23
    const-string v0, "WifiStateMachine"

    const-string v1, "enable hotspot again for autoChannel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->mSetAutoChannel:Z

    .line 2827
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 2830
    :cond_33
    monitor-exit p0

    return-void

    .line 2821
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInitialVzwStatus()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3245
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v0, :cond_17

    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-nez v0, :cond_17

    .line 3246
    const-string v0, "WifiStateMachine"

    const-string v1, "VzwStatus[Initial Wifi_off]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    iput v2, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    .line 3248
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    .line 3249
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    .line 3251
    :cond_17
    return-void
.end method

.method public setMostPreferredNetwork(I)Z
    .registers 9
    .parameter "networkId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4737
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 4739
    .local v1, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_26

    .line 4740
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkId out of range, networkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    :goto_25
    return v2

    .line 4743
    :cond_26
    if-gez p1, :cond_44

    .line 4744
    const-string v2, "WifiStateMachine"

    const-string v4, "clear most preferred network"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4745
    const-string/jumbo v2, "persist.sys.cw.ssid"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4746
    const-string/jumbo v2, "persist.sys.cw.security"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4747
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V

    move v2, v3

    .line 4748
    goto :goto_25

    .line 4750
    :cond_44
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] networkId is :>>>>>>>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4751
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4752
    .local v0, updatedwifiConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] setMostPreferredNetwork networkId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ssid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    const-string/jumbo v4, "persist.sys.cw.ssid"

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4755
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] persist.sys.cw.ssid is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "persist.sys.cw.ssid"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4756
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 4757
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v4, v2

    if-nez v2, :cond_ca

    .line 4758
    const-string/jumbo v2, "persist.sys.cw.security"

    const-string/jumbo v4, "open"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4776
    :goto_c4
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V

    move v2, v3

    .line 4777
    goto/16 :goto_25

    .line 4761
    :cond_ca
    const-string/jumbo v2, "persist.sys.cw.security"

    const-string/jumbo v4, "wep"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c4

    .line 4764
    :cond_d4
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 4765
    const-string/jumbo v2, "persist.sys.cw.security"

    const-string/jumbo v4, "wpapsk"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c4

    .line 4767
    :cond_e6
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_f8

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 4769
    :cond_f8
    const-string/jumbo v2, "persist.sys.cw.security"

    const-string v4, "eap"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c4

    .line 4772
    :cond_101
    const-string v3, "WifiStateMachine"

    const-string/jumbo v4, "no matched security in setMostPreferredNetwork"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    const-string/jumbo v3, "persist.sys.cw.ssid"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25
.end method

.method public setMulticastEnabled(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 2702
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mMulticastEnabled:Z

    .line 2703
    return-void
.end method

.method public declared-synchronized setPowerMode(I)Z
    .registers 6
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 2787
    monitor-enter p0

    packed-switch p1, :pswitch_data_4c

    .line 2802
    :goto_5
    :try_start_5
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_47

    .line 2803
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPowerMode: wifistate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_36

    .line 2806
    :cond_2d
    :goto_2d
    monitor-exit p0

    return v0

    .line 2789
    :pswitch_2f
    :try_start_2f
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_36

    goto :goto_5

    .line 2787
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2792
    :pswitch_39
    :try_start_39
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    .line 2793
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    if-gtz v1, :cond_2d

    .line 2797
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    goto :goto_5

    .line 2806
    :cond_47
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_36

    move-result v0

    goto :goto_2d

    .line 2787
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_39
        :pswitch_2f
    .end packed-switch
.end method

.method public setScanOnlyMode(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    const v2, 0x20048

    const/4 v1, 0x0

    .line 2385
    if-eqz p1, :cond_f

    .line 2386
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2390
    :goto_e
    return-void

    .line 2388
    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_e
.end method

.method public setScanType(Z)V
    .registers 5
    .parameter "active"

    .prologue
    const v2, 0x20049

    const/4 v1, 0x0

    .line 2396
    if-eqz p1, :cond_f

    .line 2397
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2401
    :goto_e
    return-void

    .line 2399
    :cond_f
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_e
.end method

.method public setScreenOn(Z)V
    .registers 5
    .parameter "isScreenOn"

    .prologue
    const/4 v1, 0x0

    .line 2842
    const v2, 0x2007e

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2843
    return-void

    :cond_f
    move v0, v1

    .line 2842
    goto :goto_7
.end method

.method public setWepErrorNotificationVisible(Z)V
    .registers 10
    .parameter "visible"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWepErrorReqNotificationVisible visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1497
    if-nez p1, :cond_20

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotificationShown:Z

    if-nez v2, :cond_20

    .line 1522
    :goto_1f
    return-void

    .line 1501
    :cond_20
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1505
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_84

    .line 1506
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    if-nez v2, :cond_5c

    .line 1507
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    .line 1508
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 1509
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    const v3, 0x4020012

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 1510
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1511
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.WIFI_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1514
    :cond_5c
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040247

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, details:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iput-object v7, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1516
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v7, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1517
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1521
    .end local v0           #details:Ljava/lang/String;
    :goto_81
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotificationShown:Z

    goto :goto_1f

    .line 1519
    :cond_84
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_81
.end method

.method public declared-synchronized setWiFiSIMAuthenticationEnabled(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 869
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v0, :cond_1d

    .line 871
    if-eqz p1, :cond_1f

    const-string/jumbo v0, "wlan.sim.enabled"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :goto_f
    if-nez p1, :cond_1d

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 875
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectSIMAuthenticationAP()Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    .line 877
    :cond_1d
    monitor-exit p0

    return-void

    .line 872
    :cond_1f
    :try_start_1f
    const-string/jumbo v0, "wlan.sim.enabled"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_28

    goto :goto_f

    .line 869
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .registers 5
    .parameter "config"

    .prologue
    const/4 v0, 0x1

    .line 1117
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_9
    const/4 v0, -0x1

    .line 1128
    :cond_a
    :goto_a
    return v0

    .line 1119
    :cond_b
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1120
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_a

    .line 1121
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    if-ne v1, v0, :cond_1f

    .line 1122
    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1125
    :cond_1f
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V

    goto :goto_a
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 2284
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20019

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 2285
    return-void
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 6
    .parameter "wifiConfig"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 2266
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2267
    if-eqz p2, :cond_23

    .line 2268
    const v0, 0x20001

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2269
    const v0, 0x20015

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2281
    :goto_22
    return-void

    .line 2272
    :cond_23
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    if-eqz v0, :cond_32

    .line 2273
    const-string v0, "WifiStateMachine"

    const-string/jumbo v1, "setWifiApEnabled, WiFiDisplay: reset AP setting to original"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V

    .line 2277
    :cond_32
    const v0, 0x20018

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2279
    const v0, 0x20002

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_22
.end method

.method public setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4
    .parameter "config"

    .prologue
    .line 1227
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, -0x1

    .line 1230
    :goto_9
    return v0

    .line 1228
    :cond_a
    const-string v0, "WifiStateMachine"

    const-string/jumbo v1, "setWifiApMacList..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const v0, 0x2007d

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1230
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setWifiDisplayConfigure(ILjava/lang/String;)Z
    .registers 7
    .parameter "channel"
    .parameter "BSSID"

    .prologue
    .line 2059
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiStateMachine;->assignDongleIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2063
    .local v0, dongleIP:Ljava/lang/String;
    rem-int/lit16 v1, p1, 0x100

    if-nez v1, :cond_12

    .line 2065
    const-string v1, "WifiStateMachine"

    const-string/jumbo v2, "setWifiDisplayConfigure, Auto channel in QCT projects, changed to 2.4GHz channel 6"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    add-int/lit8 p1, p1, 0x6

    .line 2069
    :cond_12
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifiDisplayConfigure, device AP\'s channel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dongle\'s BSSID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,IP = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    invoke-static {p1, p2, v0}, Landroid/net/wifi/WifiNative;->setWifiDisplayConfigure(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setWifiDisplayUnscan(Z)Z
    .registers 6
    .parameter "disabled"

    .prologue
    const/4 v0, 0x0

    .line 2128
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_10

    .line 2129
    const-string v1, "WifiStateMachine"

    const-string v2, "[WFD] setWifiDisplayUnscan when WiFi is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :goto_f
    return v0

    .line 2133
    :cond_10
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifiDisplayUnscan( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setWifiDisplayUnscan(Z)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 2135
    const-string v1, "WifiStateMachine"

    const-string v2, "Failed to restrict scan for WFD"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 2139
    :cond_3d
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayUnscan:Z

    .line 2141
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public setWifiEnabled(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 2251
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2252
    if-eqz p1, :cond_1e

    .line 2253
    const v0, 0x20001

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2254
    const v0, 0x2000b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2260
    :goto_1d
    return-void

    .line 2256
    :cond_1e
    const v0, 0x2000c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2258
    const v0, 0x20002

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_1d
.end method

.method public setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 12
    .parameter "wifiConfig"
    .parameter "enable"

    .prologue
    const/16 v8, 0xc

    const v7, 0x20018

    const v6, 0x20015

    const/4 v5, 0x0

    const-wide/16 v3, 0xbb8

    .line 2203
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFiDisplay: setWifidisplayApEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2206
    if-eqz p2, :cond_86

    .line 2207
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3c

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    if-ne v0, v8, :cond_46

    .line 2209
    :cond_3c
    const-string v0, "WifiStateMachine"

    const-string v1, "WiFiDisplay:hotspot already ON, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    sput-boolean p2, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    .line 2244
    :goto_45
    return-void

    .line 2215
    :cond_46
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_51

    .line 2216
    invoke-virtual {p0, v6, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_45

    .line 2217
    :cond_51
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_60

    .line 2218
    invoke-virtual {p0, v6, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_45

    .line 2219
    :cond_60
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    if-nez v0, :cond_78

    .line 2220
    const v0, 0x20001

    invoke-virtual {p0, v0, v8, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2221
    invoke-virtual {p0, v6, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_45

    .line 2223
    :cond_78
    const v0, 0x20001

    invoke-virtual {p0, v0, v8, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2224
    invoke-virtual {p0, v6, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_45

    .line 2228
    :cond_86
    const-string v0, "WifiStateMachine"

    const-string v1, "WiFiDisplay: reset AP setting to original"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V

    .line 2231
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9b

    .line 2232
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_45

    .line 2234
    :cond_9b
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_aa

    .line 2235
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_45

    .line 2236
    :cond_aa
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    if-nez v0, :cond_c4

    .line 2237
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2238
    const v0, 0x20002

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_45

    .line 2240
    :cond_c4
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2241
    const v0, 0x20002

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_45
.end method

.method public setWifidisplayEnabled(Z)V
    .registers 11
    .parameter "enable"

    .prologue
    const/4 v8, 0x2

    const v7, 0x2000c

    const v6, 0x2000b

    const/4 v5, 0x0

    const-wide/16 v3, 0xbb8

    .line 2154
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFiDisplay: setWifidisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2157
    if-eqz p1, :cond_b4

    .line 2158
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3a

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    if-ne v0, v8, :cond_42

    .line 2160
    :cond_3a
    const-string v0, "WifiStateMachine"

    const-string v1, "WiFiDisplay: setWifidisplayEnabled, STA is already ON, do nothing!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    :goto_41
    return-void

    .line 2164
    :cond_42
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_68

    .line 2166
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2167
    sput-boolean p1, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    .line 2168
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2169
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2171
    :cond_64
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_41

    .line 2172
    :cond_68
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8c

    .line 2174
    sput-boolean p1, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    .line 2175
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2176
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2178
    :cond_84
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_41

    .line 2179
    :cond_8c
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a6

    .line 2180
    const v0, 0x20001

    invoke-virtual {p0, v0, v8, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2181
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_41

    .line 2183
    :cond_a6
    const v0, 0x20001

    invoke-virtual {p0, v0, v8, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2184
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_41

    .line 2187
    :cond_b4
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c0

    .line 2188
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_41

    .line 2189
    :cond_c0
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_d1

    .line 2190
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_41

    .line 2191
    :cond_d1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_ed

    .line 2192
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2193
    const v0, 0x20002

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_41

    .line 2195
    :cond_ed
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2196
    const v0, 0x20002

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_41
.end method

.method public setWirelessDisplayStarted(Z)V
    .registers 2
    .parameter "isStarted"

    .prologue
    .line 2833
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setWirelessDisplayStarted(Z)Z

    .line 2834
    return-void
.end method

.method public startDongleScan()V
    .registers 3

    .prologue
    .line 1931
    invoke-static {}, Landroid/net/wifi/WifiNative;->dongleScanCommand()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1932
    const-string v0, "WifiStateMachine"

    const-string v1, "do dongle scan failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    :goto_d
    return-void

    .line 1934
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    goto :goto_d
.end method

.method public startDongleSingleCscan(I)V
    .registers 5
    .parameter "channel"

    .prologue
    .line 1939
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->dongleSingleCscanCommand(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1940
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do dongle scan at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :goto_24
    return-void

    .line 1942
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    goto :goto_24
.end method

.method public startDongleWakeUp(Ljava/lang/String;)V
    .registers 3
    .parameter "bssid"

    .prologue
    .line 1951
    const v0, 0x2006a

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1955
    return-void
.end method

.method public startFilteringMulticastV4Packets()V
    .registers 4

    .prologue
    .line 2674
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2675
    const v0, 0x20054

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2676
    return-void
.end method

.method public startFilteringMulticastV6Packets()V
    .registers 4

    .prologue
    .line 2690
    const v0, 0x20054

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2691
    return-void
.end method

.method public startPacketFiltering_arp()V
    .registers 4

    .prologue
    .line 2710
    const v0, 0x20054

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2711
    return-void
.end method

.method public startPacketFiltering_dhcpoffer()V
    .registers 4

    .prologue
    .line 2724
    const v0, 0x20054

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2725
    return-void
.end method

.method public startPacketFiltering_self()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2728
    const v0, 0x20054

    invoke-virtual {p0, v0, v1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2729
    return-void
.end method

.method public startPacketFiltering_ssdp(Z)V
    .registers 5
    .parameter "force"

    .prologue
    .line 2714
    if-nez p1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    .line 2715
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    .line 2721
    :cond_e
    :goto_e
    return-void

    .line 2718
    :cond_f
    if-nez p1, :cond_17

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2719
    :cond_17
    const v0, 0x20054

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_e
.end method

.method public startPacketFiltering_wivu()V
    .registers 4

    .prologue
    .line 2759
    const v0, 0x20054

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2760
    return-void
.end method

.method public startScan(Z)V
    .registers 5
    .parameter "forceActive"

    .prologue
    .line 1925
    const v1, 0x20047

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_6
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1927
    return-void

    .line 1925
    :cond_f
    const/4 v0, 0x2

    goto :goto_6
.end method

.method public startSoftapEventLoop()V
    .registers 2

    .prologue
    .line 1113
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftapMonitor:Landroid/net/hotspot/SoftapMonitor;

    invoke-virtual {v0}, Landroid/net/hotspot/SoftapMonitor;->startMonitoring()V

    .line 1114
    return-void
.end method

.method public startWps(Landroid/os/Messenger;Landroid/net/wifi/WpsInfo;)V
    .registers 5
    .parameter "replyTo"
    .parameter "config"

    .prologue
    .line 2572
    const v1, 0x20059

    invoke-virtual {p0, v1, p2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2573
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2574
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2575
    return-void
.end method

.method public startWpsRegistrar(Landroid/os/Messenger;Landroid/net/wifi/WpsInfo;)V
    .registers 5
    .parameter "replyTo"
    .parameter "config"

    .prologue
    .line 2532
    const v1, 0x20061

    invoke-virtual {p0, v1, p2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2533
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2534
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2535
    return-void
.end method

.method public stopFilteringMulticastV4Packets()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2682
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2683
    const v0, 0x20055

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2684
    return-void
.end method

.method public stopFilteringMulticastV6Packets()V
    .registers 4

    .prologue
    .line 2697
    const v0, 0x20055

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2698
    return-void
.end method

.method public stopPacketFiltering_arp()V
    .registers 4

    .prologue
    .line 2732
    const v0, 0x20055

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2733
    return-void
.end method

.method public stopPacketFiltering_dhcpoffer()V
    .registers 4

    .prologue
    .line 2746
    const v0, 0x20055

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2747
    return-void
.end method

.method public stopPacketFiltering_self()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2750
    const v0, 0x20055

    invoke-virtual {p0, v0, v1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2751
    return-void
.end method

.method public stopPacketFiltering_ssdp(Z)V
    .registers 5
    .parameter "force"

    .prologue
    const/4 v2, 0x0

    .line 2736
    if-nez p1, :cond_5

    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    .line 2737
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    .line 2743
    :cond_e
    :goto_e
    return-void

    .line 2740
    :cond_f
    if-nez p1, :cond_17

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2741
    :cond_17
    const v0, 0x20055

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_e
.end method

.method public stopPacketFiltering_wivu()V
    .registers 4

    .prologue
    .line 2763
    const v0, 0x20055

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2764
    return-void
.end method

.method public stopWps(Landroid/os/Messenger;)V
    .registers 4
    .parameter "replyTo"

    .prologue
    .line 2579
    const v1, 0x2005d

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2580
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2581
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2582
    return-void
.end method

.method public stopWpsRegistrar(Landroid/os/Messenger;)V
    .registers 4
    .parameter "replyTo"

    .prologue
    .line 2538
    const v1, 0x20062

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2539
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2540
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2541
    return-void
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .registers 6
    .parameter "channel"
    .parameter "config"

    .prologue
    .line 2437
    const v2, 0x20034

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2438
    .local v1, resultMsg:Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 2439
    .local v0, result:I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2440
    return v0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .registers 7
    .parameter "channel"
    .parameter "netId"

    .prologue
    const/4 v0, 0x0

    .line 2481
    const v2, 0x20038

    invoke-virtual {p1, v2, p2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 2483
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    const/4 v0, 0x1

    .line 2484
    .local v0, result:Z
    :cond_e
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2485
    return v0
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .registers 10
    .parameter "channel"
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2467
    const v5, 0x20036

    if-eqz p3, :cond_16

    move v2, v3

    :goto_8
    invoke-virtual {p1, v5, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 2469
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_18

    move v0, v3

    .line 2470
    .local v0, result:Z
    :goto_12
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2471
    return v0

    .end local v0           #result:Z
    .end local v1           #resultMsg:Landroid/os/Message;
    :cond_16
    move v2, v4

    .line 2467
    goto :goto_8

    .restart local v1       #resultMsg:Landroid/os/Message;
    :cond_18
    move v0, v4

    .line 2469
    goto :goto_12
.end method

.method public syncGetConfiguredNetworks()Ljava/util/List;
    .registers 2
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
    .line 2444
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public syncGetDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 2365
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v1

    .line 2366
    :try_start_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2367
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public syncGetScanResultsList()Ljava/util/List;
    .registers 2
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
    .line 2407
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object v0
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 5

    .prologue
    .line 2288
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 2289
    .local v0, resultMsg:Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2290
    .local v1, ret:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 2291
    return-object v1
.end method

.method public syncGetWifiApState()I
    .registers 2

    .prologue
    .line 2325
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2338
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 2350
    const-string v0, "[invalid state]"

    :goto_b
    return-object v0

    .line 2340
    :pswitch_c
    const-string v0, "disabling"

    goto :goto_b

    .line 2342
    :pswitch_f
    const-string v0, "disabled"

    goto :goto_b

    .line 2344
    :pswitch_12
    const-string v0, "enabling"

    goto :goto_b

    .line 2346
    :pswitch_15
    const-string v0, "enabled"

    goto :goto_b

    .line 2348
    :pswitch_18
    const-string v0, "failed"

    goto :goto_b

    .line 2338
    nop

    :pswitch_data_1c
    .packed-switch 0xa
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method public syncGetWifiState()I
    .registers 2

    .prologue
    .line 2298
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2305
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 2317
    const-string v0, "[invalid state]"

    :goto_b
    return-object v0

    .line 2307
    :pswitch_c
    const-string v0, "disabling"

    goto :goto_b

    .line 2309
    :pswitch_f
    const-string v0, "disabled"

    goto :goto_b

    .line 2311
    :pswitch_12
    const-string v0, "enabling"

    goto :goto_b

    .line 2313
    :pswitch_15
    const-string v0, "enabled"

    goto :goto_b

    .line 2315
    :pswitch_18
    const-string/jumbo v0, "unknown state"

    goto :goto_b

    .line 2305
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method public syncGetWifidisplayApState()I
    .registers 2

    .prologue
    .line 2330
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z
    .registers 6
    .parameter "channel"

    .prologue
    .line 1894
    const v2, 0x20033

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1895
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    const/4 v0, 0x1

    .line 1896
    .local v0, result:Z
    :goto_d
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1897
    return v0

    .line 1895
    .end local v0           #result:Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .registers 7
    .parameter "channel"
    .parameter "networkId"

    .prologue
    .line 2453
    const v2, 0x20035

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 2454
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    const/4 v0, 0x1

    .line 2455
    .local v0, result:Z
    :goto_d
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2456
    return v0

    .line 2454
    .end local v0           #result:Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 4

    .prologue
    .line 2360
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncRequestConnectionInfo mWifiInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z
    .registers 6
    .parameter "channel"

    .prologue
    .line 2913
    const v2, 0x2003b

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2914
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    const/4 v0, 0x1

    .line 2915
    .local v0, result:Z
    :goto_d
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2916
    return v0

    .line 2914
    .end local v0           #result:Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2959
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2960
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string/jumbo v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2961
    .local v0, LS:Ljava/lang/String;
    const-string v2, "current HSM state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2962
    const-string/jumbo v2, "mLinkProperties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2963
    const-string/jumbo v2, "mWifiInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2964
    const-string/jumbo v2, "mDhcpInfoInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2965
    const-string/jumbo v2, "mNetworkInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2966
    const-string/jumbo v2, "mLastSignalLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2967
    const-string/jumbo v2, "mLastBssid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2968
    const-string/jumbo v2, "mLastNetworkId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2969
    const-string/jumbo v2, "mReconnectCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2970
    const-string/jumbo v2, "mIsScanMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2971
    const-string v2, "Supplicant status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2974
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2975
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public tryToStartCWRegister()V
    .registers 4

    .prologue
    .line 4408
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] call in the tryToStartCWRegister++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->isConnectionCompleted()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 4410
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 4411
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->triggerCWRegister(J)V

    .line 4417
    :goto_29
    return-void

    .line 4413
    :cond_2a
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C+W] call in the tryToStartCWRegister++but not run isCT_CDMA_WIFI_SSID is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "isConnectionCompleted is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->isConnectionCompleted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getCwRegisterState is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public tryToTriggerCWReregister()V
    .registers 3

    .prologue
    .line 3018
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->isConnectionCompleted()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3019
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger re-register"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->triggerCWRegister(J)V

    .line 3022
    :cond_1e
    return-void
.end method

.method public tryTostartCWDeRegister()V
    .registers 4

    .prologue
    .line 2988
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] call in tryTostartCWDeRegister"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v1

    if-nez v1, :cond_e

    .line 3004
    :cond_d
    :goto_d
    return-void

    .line 2992
    :cond_e
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->triggerCWDeRegister()V

    .line 2994
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    const/16 v1, 0xa

    if-ge v0, v1, :cond_d

    .line 2996
    const-wide/16 v1, 0x1f4

    :try_start_18
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_2c

    .line 2999
    :goto_1b
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v1

    if-nez v1, :cond_29

    .line 3000
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] got de-register"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2994
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2997
    :catch_2c
    move-exception v1

    goto :goto_1b
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .registers 6
    .parameter "newSource"

    .prologue
    .line 2920
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v1

    .line 2922
    if-eqz p1, :cond_a

    .line 2923
    :try_start_5
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2925
    :cond_a
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v0, :cond_4c

    .line 2926
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_38

    .line 2929
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2930
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 2932
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2948
    :cond_2c
    :goto_2c
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2950
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_60
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_36} :catch_4a

    .line 2954
    :goto_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_60

    .line 2955
    return-void

    .line 2936
    :cond_38
    :try_start_38
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 2937
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2938
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_2c

    .line 2952
    :catch_4a
    move-exception v0

    goto :goto_36

    .line 2941
    :cond_4c
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_2c

    .line 2943
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 2944
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 2945
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z
    :try_end_5f
    .catchall {:try_start_38 .. :try_end_5f} :catchall_60
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_5f} :catch_4a

    goto :goto_2c

    .line 2954
    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public updateConnectionList(Ljava/lang/String;J)V
    .registers 7
    .parameter "mac"
    .parameter "time"

    .prologue
    .line 1836
    const-string v1, "WifiStateMachine"

    const-string/jumbo v2, "updateConnection List "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    const/4 v0, 0x0

    .line 1838
    .local v0, client:Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_16

    if-eqz p1, :cond_16

    .line 1839
    new-instance v0, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    .end local v0           #client:Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;-><init>(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;J)V

    .line 1841
    .restart local v0       #client:Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;
    :cond_16
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->updateConnectionReq(Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;)V

    .line 1842
    return-void
.end method

.method public updateConnectionReq(Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;)V
    .registers 7
    .parameter "client"

    .prologue
    .line 1846
    const-string v2, "WifiStateMachine"

    const-string/jumbo v3, "update connection Req"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    if-nez p1, :cond_b

    .line 1865
    :cond_a
    :goto_a
    return-void

    .line 1849
    :cond_b
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    if-nez v2, :cond_16

    .line 1850
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    .line 1853
    :cond_16
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 1854
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v1

    .line 1855
    .local v1, mac:Ljava/lang/String;
    if-eqz v1, :cond_47

    invoke-virtual {p1}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1857
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {p1}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->setLastestReqTime(J)V

    goto :goto_a

    .line 1853
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1861
    .end local v1           #mac:Ljava/lang/String;
    :cond_4a
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_a

    .line 1862
    const-string v2, "WifiStateMachine"

    const-string/jumbo v3, "update connection Req add client"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method public updateProfile()V
    .registers 11

    .prologue
    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1643
    const-string v4, "WifiStateMachine"

    const-string v7, "WIFIAP:updateProfile"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hotspot_ssid"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 1649
    :try_start_20
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "hotspot_hidden"

    invoke-static {v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_24e

    move v4, v5

    :goto_36
    iput-boolean v4, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z
    :try_end_38
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_20 .. :try_end_38} :catch_251

    .line 1655
    :goto_38
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hotspot_security_type"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 1657
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    if-nez v4, :cond_75

    .line 1658
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    sget-object v7, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_SECURITY_TYPE:Ljava/lang/String;

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 1659
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "hotspot_security_type"

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1663
    :cond_75
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hotspot_password"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 1665
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-nez v4, :cond_dd

    .line 1667
    iget-boolean v4, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    if-nez v4, :cond_dd

    iget-boolean v4, p0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    if-nez v4, :cond_dd

    .line 1668
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v7, "1234567890"

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 1670
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1671
    .local v2, randomKey:Ljava/lang/String;
    if-eqz v2, :cond_c9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0xd

    if-ne v4, v7, :cond_c9

    .line 1672
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v7, 0x2

    if-ne v4, v7, :cond_c1

    .line 1673
    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1675
    :cond_c1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput-object v2, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 1677
    :cond_c9
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "hotspot_password"

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1684
    .end local v2           #randomKey:Ljava/lang/String;
    :cond_dd
    :try_start_dd
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hotspot_macfilter_on"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I
    :try_end_f2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_dd .. :try_end_f2} :catch_25c

    .line 1691
    :goto_f2
    :try_start_f2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hotspot_max_connection"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I
    :try_end_107
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_f2 .. :try_end_107} :catch_267

    .line 1698
    :goto_107
    :try_start_107
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hotspot_connection_array"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I
    :try_end_11c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_107 .. :try_end_11c} :catch_273

    .line 1705
    :goto_11c
    :try_start_11c
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hotspot_channel"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I
    :try_end_131
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_11c .. :try_end_131} :catch_27e

    .line 1712
    :goto_131
    :try_start_131
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hotspot_dhcp_on"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I
    :try_end_146
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_131 .. :try_end_146} :catch_289

    .line 1719
    :goto_146
    :try_start_146
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hotspot_dhcp_max_connection"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I
    :try_end_15b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_146 .. :try_end_15b} :catch_294

    .line 1725
    :goto_15b
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hotspot_id_address"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 1726
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    if-nez v4, :cond_198

    .line 1727
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v6, "192.168.1.1"

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 1728
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "hotspot_id_address"

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1731
    :cond_198
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hotspot_subnet_mask"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 1732
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    if-nez v4, :cond_1d5

    .line 1733
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v6, "255.255.255.0"

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 1734
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "hotspot_subnet_mask"

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1737
    :cond_1d5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hotspot_dhcp_start_ip"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 1738
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    if-nez v4, :cond_212

    .line 1739
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    sget-object v6, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String;

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 1740
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "hotspot_dhcp_start_ip"

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1753
    :cond_212
    :try_start_212
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hotspot_sleep_policy"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I
    :try_end_227
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_212 .. :try_end_227} :catch_2a7

    .line 1757
    :goto_227
    iput-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    .line 1759
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hotspot_white_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1760
    .local v3, whiteListStr:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->updateWhiteList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 1761
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hotspot_black_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1762
    .local v0, blockListStr:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0, v4}, Landroid/net/wifi/WifiStateMachine;->updateBlackList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 1763
    return-void

    .end local v0           #blockListStr:Ljava/lang/String;
    .end local v3           #whiteListStr:Ljava/lang/String;
    :cond_24e
    move v4, v6

    .line 1649
    goto/16 :goto_36

    .line 1650
    :catch_251
    move-exception v1

    .line 1651
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput-boolean v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    goto/16 :goto_38

    .line 1685
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_25c
    move-exception v1

    .line 1686
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    goto/16 :goto_f2

    .line 1692
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_267
    move-exception v1

    .line 1693
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const/4 v7, 0x5

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    goto/16 :goto_107

    .line 1699
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_273
    move-exception v1

    .line 1700
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v9, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    goto/16 :goto_11c

    .line 1706
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_27e
    move-exception v1

    .line 1707
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    goto/16 :goto_131

    .line 1713
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_289
    move-exception v1

    .line 1714
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    goto/16 :goto_146

    .line 1720
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_294
    move-exception v1

    .line 1721
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    goto/16 :goto_15b

    .line 1754
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_2a7
    move-exception v1

    .line 1755
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    goto/16 :goto_227
.end method
