.class public Landroid/net/HtcMobileNetworkEngine;
.super Ljava/lang/Object;
.source "HtcMobileNetworkEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/HtcMobileNetworkEngine$2;,
        Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_HTC_SIMCARD_STATUS_UPDATE:Ljava/lang/String; = "android.intent.action.HTC_SIMCARD_STATUS_UPDATE"

.field private static final ACTION_MODEMLINK_DISABLED:Ljava/lang/String; = "com.htc.is.disabled"

.field private static final ACTION_MODEMLINK_ENABLED:Ljava/lang/String; = "com.htc.is.enabled"

#the value of this static final field might be set in the static constructor
.field private static final ALWAYS_ENABLE_UI:Z = false

.field private static final DBG:Z = false

.field private static final HAS_SIM_CHECK:Z = false

#the value of this static final field might be set in the static constructor
.field private static final MODEM_LINK_CHECK:Z = false

.field private static SERVICE_STATE_CHECK:Z = false

.field public static final SUMMARY_CONNECTED:I = 0x2

.field public static final SUMMARY_CONNECTING:I = 0x1

.field public static final SUMMARY_DISCONNECTED:I = 0x3

.field public static final SUMMARY_DISCONNECTED_APN_ERROR:I = 0x5

.field public static final SUMMARY_DISCONNECTED_DENIED:I = 0x6

.field public static final SUMMARY_DISCONNECTED_ENABLED:I = 0x8

.field public static final SUMMARY_DISCONNECTED_ERROR:I = 0x4

.field public static final SUMMARY_DISCONNECTED_RADIO_OFF:I = 0x9

.field public static final SUMMARY_DISCONNECTED_ROAMING_ERROR:I = 0x7

.field public static final SUMMARY_DISCONNECTED_WIFI_ON:I = 0xa

.field public static final SUMMARY_DISCONNECTED_WIMAX_4G_ON:I = 0xb

.field public static final SUMMARY_DISCONNECTED_WIMAX_WB_ON:I = 0xc

.field public static final SUMMARY_DISCONNECTED_WIMAX_WX_ON:I = 0xd

.field public static final SUMMARY_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcMobileNetworkEngine"

.field private static mEngine:Landroid/net/HtcMobileNetworkEngine;


# instance fields
.field private hasReceivedHtcSIMIntent:Z

.field private hasRegisterredReciever:Z

.field private mCheckState:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEnableState:Z

.field private mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;

.field private mSettingsEnableState:Z

.field private mSummaryType:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x4010

    cmpg-double v0, v3, v5

    if-gez v0, :cond_27

    move v0, v1

    :goto_10
    sput-boolean v0, Landroid/net/HtcMobileNetworkEngine;->SERVICE_STATE_CHECK:Z

    .line 53
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_29

    move v0, v1

    :goto_19
    sput-boolean v0, Landroid/net/HtcMobileNetworkEngine;->MODEM_LINK_CHECK:Z

    .line 55
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd1

    if-ne v0, v3, :cond_2b

    :goto_21
    sput-boolean v1, Landroid/net/HtcMobileNetworkEngine;->ALWAYS_ENABLE_UI:Z

    .line 87
    const/4 v0, 0x0

    sput-object v0, Landroid/net/HtcMobileNetworkEngine;->mEngine:Landroid/net/HtcMobileNetworkEngine;

    return-void

    :cond_27
    move v0, v2

    .line 52
    goto :goto_10

    :cond_29
    move v0, v2

    .line 53
    goto :goto_19

    :cond_2b
    move v1, v2

    .line 55
    goto :goto_21
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v3, p0, Landroid/net/HtcMobileNetworkEngine;->mEnableState:Z

    .line 66
    iput-boolean v3, p0, Landroid/net/HtcMobileNetworkEngine;->mSettingsEnableState:Z

    .line 67
    iput v0, p0, Landroid/net/HtcMobileNetworkEngine;->mSummaryType:I

    .line 68
    iput-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->hasRegisterredReciever:Z

    .line 69
    iput-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->hasReceivedHtcSIMIntent:Z

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mIntentFilter:Landroid/content/IntentFilter;

    .line 89
    new-instance v0, Landroid/net/HtcMobileNetworkEngine$1;

    invoke-direct {v0, p0}, Landroid/net/HtcMobileNetworkEngine$1;-><init>(Landroid/net/HtcMobileNetworkEngine;)V

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 387
    iput-object p1, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    .line 388
    new-instance v0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;-><init>(Landroid/net/HtcMobileNetworkEngine;Landroid/net/HtcMobileNetworkEngine$1;)V

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mReceiver:Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;

    .line 389
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 390
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 391
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "htctelephony"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcTelephonyManager;

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 393
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 395
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HTC_SIMCARD_STATUS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mReceiver:Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;

    iget-object v2, p0, Landroid/net/HtcMobileNetworkEngine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 401
    iput-boolean v3, p0, Landroid/net/HtcMobileNetworkEngine;->hasRegisterredReciever:Z

    .line 403
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkDisplayPolicy()V

    .line 404
    return-void
.end method

.method static synthetic access$000(Landroid/net/HtcMobileNetworkEngine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkDisplayPolicy()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-static {p0}, Landroid/net/HtcMobileNetworkEngine;->getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/HtcMobileNetworkEngine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    return v0
.end method

.method static synthetic access$202(Landroid/net/HtcMobileNetworkEngine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    return p1
.end method

.method static synthetic access$300(Landroid/net/HtcMobileNetworkEngine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->getPersistedMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/net/HtcMobileNetworkEngine;Landroid/net/NetworkInfo$State;Ljava/lang/String;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/net/HtcMobileNetworkEngine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/net/HtcMobileNetworkEngine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->hasReceivedHtcSIMIntent:Z

    return v0
.end method

.method static synthetic access$602(Landroid/net/HtcMobileNetworkEngine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Landroid/net/HtcMobileNetworkEngine;->hasReceivedHtcSIMIntent:Z

    return p1
.end method

.method private checkMobileNetworkDisplayPolicy()V
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 164
    const/4 v4, -0x1

    .line 165
    .local v4, serviceState:I
    const/4 v2, -0x1

    .line 166
    .local v2, gprsState:I
    const/4 v3, 0x0

    .line 167
    .local v3, hasSim:Z
    const/4 v1, 0x1

    .line 168
    .local v1, enableState:Z
    const/4 v5, 0x1

    .line 169
    .local v5, settingsEnableState:Z
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->getPersistedAirplaneModeEnabled()Z

    move-result v0

    .line 171
    .local v0, airState:Z
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v6, :cond_24

    .line 172
    const-string v6, "HtcMobileNetworkEngine"

    const-string/jumbo v9, "mHtcTelephonyManager is null, rebind it."

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "htctelephony"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/service/HtcTelephonyManager;

    iput-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 175
    :cond_24
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_3d

    .line 176
    const-string v6, "HtcMobileNetworkEngine"

    const-string/jumbo v9, "mTelephonyManager is null, rebind it."

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 179
    :cond_3d
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v6, :cond_4d

    .line 180
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v6}, Lcom/htc/service/HtcTelephonyManager;->getServiceState()I

    move-result v4

    .line 181
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v6}, Lcom/htc/service/HtcTelephonyManager;->getGprsState()I

    move-result v2

    .line 183
    :cond_4d
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_57

    .line 184
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    .line 187
    :cond_57
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v6, :cond_5f

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_8c

    .line 188
    :cond_5f
    const-string v9, "HtcMobileNetworkEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mHtcTelephonyManager is null:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v6, :cond_c2

    move v6, v7

    :goto_72
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, "mTelephonyManager is null:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v10, :cond_c4

    :goto_81
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_8c
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v6

    if-nez v6, :cond_9e

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v6

    if-nez v6, :cond_9e

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_c8

    .line 193
    :cond_9e
    if-eqz v2, :cond_a4

    sget-boolean v6, Landroid/net/HtcMobileNetworkEngine;->SERVICE_STATE_CHECK:Z

    if-nez v6, :cond_c6

    :cond_a4
    if-nez v0, :cond_c6

    .line 208
    :cond_a6
    :goto_a6
    if-nez v0, :cond_aa

    if-nez v3, :cond_ab

    .line 209
    :cond_aa
    const/4 v5, 0x0

    .line 215
    :cond_ab
    iget-boolean v6, p0, Landroid/net/HtcMobileNetworkEngine;->mEnableState:Z

    if-eq v6, v1, :cond_b6

    .line 216
    iput-boolean v1, p0, Landroid/net/HtcMobileNetworkEngine;->mEnableState:Z

    .line 217
    iget-boolean v6, p0, Landroid/net/HtcMobileNetworkEngine;->mEnableState:Z

    invoke-virtual {p0, v6}, Landroid/net/HtcMobileNetworkEngine;->onEnableStateChange(Z)V

    .line 219
    :cond_b6
    iget-boolean v6, p0, Landroid/net/HtcMobileNetworkEngine;->mSettingsEnableState:Z

    if-eq v5, v6, :cond_c1

    .line 220
    iput-boolean v5, p0, Landroid/net/HtcMobileNetworkEngine;->mSettingsEnableState:Z

    .line 221
    iget-boolean v6, p0, Landroid/net/HtcMobileNetworkEngine;->mSettingsEnableState:Z

    invoke-virtual {p0, v6}, Landroid/net/HtcMobileNetworkEngine;->onEnableStateChange(Z)V

    .line 224
    :cond_c1
    return-void

    :cond_c2
    move v6, v8

    .line 188
    goto :goto_72

    :cond_c4
    move v7, v8

    goto :goto_81

    .line 197
    :cond_c6
    const/4 v1, 0x0

    goto :goto_a6

    .line 200
    :cond_c8
    if-eqz v4, :cond_ce

    sget-boolean v6, Landroid/net/HtcMobileNetworkEngine;->SERVICE_STATE_CHECK:Z

    if-nez v6, :cond_d0

    :cond_ce
    if-eqz v0, :cond_a6

    .line 204
    :cond_d0
    const/4 v1, 0x0

    goto :goto_a6
.end method

.method private checkMobileNetworkSummaryPolicy()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_19

    .line 229
    const-string v1, "HtcMobileNetworkEngine"

    const-string v2, "connectivity is null, rebind it."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 233
    :cond_19
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_33

    .line 234
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 239
    :goto_24
    if-eqz v0, :cond_3c

    .line 240
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I

    move-result v1

    .line 243
    :goto_32
    return v1

    .line 236
    :cond_33
    const-string v1, "HtcMobileNetworkEngine"

    const-string/jumbo v2, "mConnectivityManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 242
    :cond_3c
    const-string v1, "HtcMobileNetworkEngine"

    const-string/jumbo v2, "networkInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0, v3, v3}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I

    move-result v1

    goto :goto_32
.end method

.method private checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I
    .registers 8
    .parameter "state"
    .parameter "reason"

    .prologue
    .line 248
    if-nez p2, :cond_5

    const-string/jumbo p2, "unspecified"

    .line 249
    :cond_5
    if-nez p1, :cond_9

    sget-object p1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 250
    :cond_9
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->getPersistedMobileDataEnabled()Z

    move-result v3

    iput-boolean v3, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    .line 251
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->getPersistedAirplaneModeEnabled()Z

    move-result v0

    .line 252
    .local v0, airState:Z
    const/4 v1, -0x1

    .line 253
    .local v1, gprsState:I
    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v3, :cond_2d

    .line 254
    const-string v3, "HtcMobileNetworkEngine"

    const-string/jumbo v4, "mHtcTelephonyManager is null, rebind it."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "htctelephony"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/HtcTelephonyManager;

    iput-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 257
    :cond_2d
    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v3, :cond_53

    .line 258
    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v3}, Lcom/htc/service/HtcTelephonyManager;->getGprsState()I

    move-result v1

    .line 263
    :goto_37
    const/4 v2, -0x1

    .line 264
    .local v2, summaryType:I
    iget-boolean v3, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    if-eqz v3, :cond_e1

    .line 265
    sget-object v3, Landroid/net/HtcMobileNetworkEngine$2;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_e4

    .line 332
    :cond_47
    :goto_47
    iget v3, p0, Landroid/net/HtcMobileNetworkEngine;->mSummaryType:I

    if-eq v3, v2, :cond_50

    .line 333
    iput v2, p0, Landroid/net/HtcMobileNetworkEngine;->mSummaryType:I

    .line 334
    invoke-virtual {p0, v2}, Landroid/net/HtcMobileNetworkEngine;->onSummaryChange(I)V

    .line 336
    :cond_50
    iget v3, p0, Landroid/net/HtcMobileNetworkEngine;->mSummaryType:I

    return v3

    .line 260
    .end local v2           #summaryType:I
    :cond_53
    const-string v3, "HtcMobileNetworkEngine"

    const-string/jumbo v4, "mHtcTelephonyManager is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 268
    .restart local v2       #summaryType:I
    :pswitch_5c
    const/4 v2, 0x2

    .line 269
    goto :goto_47

    .line 272
    :pswitch_5e
    const/4 v2, 0x1

    .line 273
    goto :goto_47

    .line 277
    :pswitch_60
    const-string v3, "apnChanged"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string/jumbo v3, "pdpDisconnect"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 279
    :cond_71
    const/4 v2, 0x4

    .line 301
    :goto_72
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/net/HtcMobileNetworkEngine;->isNetworkActive(I)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 303
    const/16 v2, 0x8

    .line 318
    :cond_7b
    :goto_7b
    if-eqz v1, :cond_7e

    .line 320
    const/4 v2, 0x6

    .line 322
    :cond_7e
    if-eqz v0, :cond_47

    .line 324
    const/16 v2, 0x9

    goto :goto_47

    .line 280
    :cond_83
    const-string v3, "datt not subcribed"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 282
    const/4 v2, 0x5

    goto :goto_72

    .line 283
    :cond_8d
    const-string v3, "dataConnectionDenied"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 285
    const/4 v2, 0x6

    goto :goto_72

    .line 286
    :cond_97
    const-string/jumbo v3, "roamingDisabled"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    const-string/jumbo v3, "roamingOn"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 288
    :cond_a9
    const/4 v2, 0x7

    goto :goto_72

    .line 289
    :cond_ab
    const-string/jumbo v3, "radioTurnedOff"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 291
    const/16 v2, 0x9

    goto :goto_72

    .line 292
    :cond_b7
    const-string/jumbo v3, "pdpTeardown"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 294
    const/16 v2, 0x8

    goto :goto_72

    .line 297
    :cond_c3
    const/4 v2, 0x3

    goto :goto_72

    .line 304
    :cond_c5
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Landroid/net/HtcMobileNetworkEngine;->isNetworkActive(I)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 305
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x51

    if-ne v3, v4, :cond_d5

    .line 307
    const/16 v2, 0xd

    goto :goto_7b

    .line 308
    :cond_d5
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x50

    if-ne v3, v4, :cond_de

    .line 310
    const/16 v2, 0xc

    goto :goto_7b

    .line 313
    :cond_de
    const/16 v2, 0xb

    goto :goto_7b

    .line 329
    :cond_e1
    const/4 v2, 0x0

    goto/16 :goto_47

    .line 265
    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_5c
        :pswitch_5e
        :pswitch_60
        :pswitch_60
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/net/HtcMobileNetworkEngine;
    .registers 4
    .parameter "context"

    .prologue
    .line 376
    const-class v1, Landroid/net/HtcMobileNetworkEngine;

    monitor-enter v1

    .line 377
    :try_start_3
    sget-object v0, Landroid/net/HtcMobileNetworkEngine;->mEngine:Landroid/net/HtcMobileNetworkEngine;

    if-nez v0, :cond_12

    .line 378
    new-instance v0, Landroid/net/HtcMobileNetworkEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/HtcMobileNetworkEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/net/HtcMobileNetworkEngine;->mEngine:Landroid/net/HtcMobileNetworkEngine;

    .line 380
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    .line 381
    sget-object v0, Landroid/net/HtcMobileNetworkEngine;->mEngine:Landroid/net/HtcMobileNetworkEngine;

    return-object v0

    .line 380
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;
    .registers 5
    .parameter "intent"

    .prologue
    .line 146
    const-string/jumbo v3, "state"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, str:Ljava/lang/String;
    const-class v3, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v3, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$DataState;

    .line 148
    .local v0, dataState:Lcom/android/internal/telephony/Phone$DataState;
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 149
    .local v1, state:Landroid/net/NetworkInfo$State;
    if-eqz v2, :cond_19

    .line 150
    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v0, v3, :cond_1a

    .line 151
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 160
    :cond_19
    :goto_19
    return-object v1

    .line 152
    :cond_1a
    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v0, v3, :cond_21

    .line 153
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    goto :goto_19

    .line 154
    :cond_21
    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v0, v3, :cond_28

    .line 155
    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    goto :goto_19

    .line 156
    :cond_28
    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v0, v3, :cond_19

    .line 157
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    goto :goto_19
.end method

.method private getPersistedAirplaneModeEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 358
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private getPersistedMobileDataEnabled()Z
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_17

    .line 363
    const-string v0, "HtcMobileNetworkEngine"

    const-string v1, "connectivity is null, rebind it."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 366
    :cond_17
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_26

    .line 367
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    .line 368
    iget-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    .line 371
    :goto_25
    return v0

    .line 370
    :cond_26
    const-string v0, "HtcMobileNetworkEngine"

    const-string/jumbo v1, "mConnectivityManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private isNetworkActive(I)Z
    .registers 5
    .parameter "networkType"

    .prologue
    .line 340
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_10

    .line 341
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 344
    :cond_10
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1d

    .line 345
    const-string v1, "HtcMobileNetworkEngine"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1

    .line 347
    :cond_1d
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 348
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1b

    .line 349
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1b

    .line 350
    const/4 v1, 0x1

    goto :goto_1c
.end method


# virtual methods
.method public getCheckedState()Z
    .registers 2

    .prologue
    .line 440
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->getPersistedMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getEnableState()Z
    .registers 2

    .prologue
    .line 432
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkDisplayPolicy()V

    .line 433
    iget-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->mEnableState:Z

    return v0
.end method

.method public getSettingsEnableState()Z
    .registers 2

    .prologue
    .line 456
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkDisplayPolicy()V

    .line 457
    iget-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->mSettingsEnableState:Z

    return v0
.end method

.method public getSummaryType()I
    .registers 2

    .prologue
    .line 447
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy()I

    .line 448
    iget v0, p0, Landroid/net/HtcMobileNetworkEngine;->mSummaryType:I

    return v0
.end method

.method public onCheckStateChange(Z)V
    .registers 2
    .parameter "checked"

    .prologue
    .line 464
    return-void
.end method

.method public onEnableStateChange(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 470
    return-void
.end method

.method public onSettingsEnableStateChange(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 495
    return-void
.end method

.method public onSummaryChange(I)V
    .registers 2
    .parameter "status"

    .prologue
    .line 489
    return-void
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 498
    iget-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->hasRegisterredReciever:Z

    if-eqz v0, :cond_e

    .line 499
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mReceiver:Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 500
    iput-boolean v2, p0, Landroid/net/HtcMobileNetworkEngine;->hasRegisterredReciever:Z

    .line 502
    :cond_e
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_19

    .line 503
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 505
    :cond_19
    return-void
.end method

.method public setMobileNetworkEnabled(Z)V
    .registers 5
    .parameter "checked"

    .prologue
    .line 408
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_17

    .line 409
    const-string v1, "HtcMobileNetworkEngine"

    const-string v2, "connectivity is null, rebind it."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 412
    :cond_17
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_28

    .line 413
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    .line 417
    :goto_23
    iget-boolean v1, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    if-ne p1, v1, :cond_31

    .line 426
    :goto_27
    return-void

    .line 415
    :cond_28
    const-string v1, "HtcMobileNetworkEngine"

    const-string/jumbo v2, "mConnectivityManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 420
    :cond_31
    invoke-virtual {p0, p1}, Landroid/net/HtcMobileNetworkEngine;->onCheckStateChange(Z)V

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MOBILEDATA_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 423
    const-string/jumbo v1, "sender"

    iget-object v2, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_27
.end method
