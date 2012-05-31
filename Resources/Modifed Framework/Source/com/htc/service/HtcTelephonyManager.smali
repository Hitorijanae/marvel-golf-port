.class public Lcom/htc/service/HtcTelephonyManager;
.super Ljava/lang/Object;
.source "HtcTelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED_EXT:Ljava/lang/String; = "android.intent.action.PHONE_STATE_EXT"

.field public static final ICC_STATE_ABSENT:I = 0x1

.field public static final ICC_STATE_NETWORK_LOCKED:I = 0x4

.field public static final ICC_STATE_PIN_REQUIRED:I = 0x2

.field public static final ICC_STATE_PUK_REQUIRED:I = 0x3

.field public static final ICC_STATE_READY:I = 0x5

.field public static final ICC_STATE_UNKNOWN:I = 0x0

.field public static final ICC_TYPE_2G:I = 0x2

.field public static final ICC_TYPE_3G:I = 0x3

.field public static final ICC_TYPE_NO_ICC:I = 0x1

.field public static final ICC_TYPE_SIM:I = 0x1

.field public static final ICC_TYPE_SUB_ICC:I = 0x3

.field public static final ICC_TYPE_TITAN_LITE_SIM_CARD:I = 0x4

.field public static final ICC_TYPE_UIM:I = 0x2

.field public static final ICC_TYPE_UNKNOW:I = 0x0

.field public static final ICC_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_KEY:Ljava/lang/String; = "phone_type"

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final PHONE_TYPE_SUB_GSM:I = 0x5

.field public static final PRECISE_CALL_STATE_ACTIVE:I = 0x2

.field public static final PRECISE_CALL_STATE_ALERTING:I = 0x5

.field public static final PRECISE_CALL_STATE_DIALING:I = 0x4

.field public static final PRECISE_CALL_STATE_DISCONNECTED:I = 0x8

.field public static final PRECISE_CALL_STATE_DISCONNECTING:I = 0x9

.field public static final PRECISE_CALL_STATE_HOLDING:I = 0x3

.field public static final PRECISE_CALL_STATE_IDLE:I = 0x1

.field public static final PRECISE_CALL_STATE_INCOMING:I = 0x6

.field public static final PRECISE_CALL_STATE_WAITING:I = 0x7

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field public static final SECTOR_ID_NETWORK_EHRPD:I = 0x0

.field public static final SECTOR_ID_NETWORK_LTE:I = 0x1

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_NETWORK_SEARCHING:I = 0x4

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HtcTelephonyManager"

.field public static final UIM_STATE_ABSENT:I = 0x1

.field public static final UIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final UIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final UIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final UIM_STATE_READY:I = 0x5

.field public static final UIM_STATE_UNKNOWN:I

.field private static sInstance:Lcom/htc/service/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 177
    new-instance v0, Lcom/htc/service/HtcTelephonyManager;

    invoke-direct {v0}, Lcom/htc/service/HtcTelephonyManager;-><init>()V

    sput-object v0, Lcom/htc/service/HtcTelephonyManager;->sInstance:Lcom/htc/service/HtcTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IHtcTelephony;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method public static ctFeatureEnable()Z
    .registers 1

    .prologue
    .line 3622
    const/4 v0, 0x0

    return v0
.end method

.method public static dualGSMPhoneEnable()Z
    .registers 2

    .prologue
    .line 3681
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe3

    if-ne v0, v1, :cond_8

    .line 3682
    const/4 v0, 0x1

    .line 3685
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static dualPhoneEnable()Z
    .registers 2

    .prologue
    .line 3413
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe4

    if-eq v0, v1, :cond_c

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x4a

    if-ne v0, v1, :cond_e

    .line 3415
    :cond_c
    const/4 v0, 0x1

    .line 3418
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static getDefMainPhoneType()I
    .registers 2

    .prologue
    const/4 v0, 0x2

    .line 3430
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3440
    :cond_7
    :goto_7
    return v0

    .line 3437
    :cond_8
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3438
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static getDefSubPhoneType()I
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 3453
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3463
    :cond_7
    :goto_7
    return v0

    .line 3460
    :cond_8
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3461
    const/4 v0, 0x5

    goto :goto_7
.end method

.method public static getDefault()Lcom/htc/service/HtcTelephonyManager;
    .registers 1

    .prologue
    .line 180
    sget-object v0, Lcom/htc/service/HtcTelephonyManager;->sInstance:Lcom/htc/service/HtcTelephonyManager;

    return-object v0
.end method

.method public static getDefaultPhoneType()I
    .registers 1

    .prologue
    .line 3627
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v0

    return v0
.end method

.method private getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;
    .registers 2

    .prologue
    .line 184
    const-string/jumbo v0, "htctelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    return-object v0
.end method

.method private getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;
    .registers 2

    .prologue
    .line 189
    const-string/jumbo v0, "htctelephonyinternal"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 194
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getMainPhoneType()I
    .registers 3

    .prologue
    .line 3476
    const-string v1, "gsm.main_phone_type"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3478
    .local v0, phoneType:I
    invoke-static {v0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3481
    .end local v0           #phoneType:I
    :goto_d
    return v0

    .restart local v0       #phoneType:I
    :cond_e
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefMainPhoneType()I

    move-result v0

    goto :goto_d
.end method

.method public static getPhoneTypeByName(Ljava/lang/String;)I
    .registers 3
    .parameter "phoneName"

    .prologue
    .line 3533
    const/4 v0, 0x0

    .line 3535
    .local v0, phoneType:I
    if-nez p0, :cond_5

    .line 3536
    const/4 v0, 0x0

    .line 3550
    :cond_4
    :goto_4
    return v0

    .line 3537
    :cond_5
    const-string v1, "GSM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3538
    const/4 v0, 0x1

    goto :goto_4

    .line 3539
    :cond_f
    const-string v1, "CDMA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3540
    const/4 v0, 0x2

    goto :goto_4

    .line 3541
    :cond_19
    const-string v1, "SIP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3542
    const/4 v0, 0x3

    goto :goto_4

    .line 3545
    :cond_23
    const-string v1, "SubGSM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3546
    const/4 v0, 0x5

    goto :goto_4
.end method

.method public static getSubPhoneType()I
    .registers 3

    .prologue
    .line 3502
    const-string v1, "gsm.sub_phone_type"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3504
    .local v0, phoneType:I
    invoke-static {v0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3507
    .end local v0           #phoneType:I
    :goto_d
    return v0

    .restart local v0       #phoneType:I
    :cond_e
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefSubPhoneType()I

    move-result v0

    goto :goto_d
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 2

    .prologue
    .line 2762
    const-string/jumbo v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static isDefMainPhone(I)Z
    .registers 4
    .parameter "phoneType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3608
    invoke-static {p0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 3614
    :cond_9
    :goto_9
    return v0

    .line 3611
    :cond_a
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3612
    :cond_16
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v2

    if-eq v2, p0, :cond_9

    move v0, v1

    goto :goto_9

    .line 3614
    :cond_1e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eq v2, p0, :cond_9

    move v0, v1

    goto :goto_9
.end method

.method public static isMainPhone(I)Z
    .registers 4
    .parameter "phoneType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3587
    invoke-static {p0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 3593
    :cond_9
    :goto_9
    return v0

    .line 3590
    :cond_a
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3591
    :cond_16
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v2

    if-eq v2, p0, :cond_9

    move v0, v1

    goto :goto_9

    .line 3593
    :cond_1e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eq v2, p0, :cond_9

    move v0, v1

    goto :goto_9
.end method

.method public static isValidPhoneType(I)Z
    .registers 2
    .parameter "phoneType"

    .prologue
    .line 3563
    packed-switch p0, :pswitch_data_8

    .line 3572
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 3570
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 3563
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static setMainPhoneType(I)V
    .registers 3
    .parameter "phoneType"

    .prologue
    .line 3487
    const-string v0, "gsm.main_phone_type"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3490
    return-void
.end method

.method public static setSubPhoneType(I)V
    .registers 3
    .parameter "phoneType"

    .prologue
    .line 3513
    const-string v0, "gsm.sub_phone_type"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    return-void
.end method


# virtual methods
.method public ExitCDMAEmergencyMode()V
    .registers 5

    .prologue
    .line 4263
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    const-string v2, "ExitCDMAEmergencyMode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_29

    .line 4269
    :goto_a
    return-void

    .line 4264
    :catch_b
    move-exception v0

    .line 4265
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExitCDMAEmergencyMode remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 4266
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_29
    move-exception v0

    .line 4267
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExitCDMAEmergencyMode null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public akaAuthentication([B[B)Landroid/os/Bundle;
    .registers 7
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 735
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->akaAuthentication([B[B)Landroid/os/Bundle;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 745
    :goto_9
    return-object v1

    .line 737
    :catch_a
    move-exception v0

    .line 739
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "akaAuthentication(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 742
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 744
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public calculateAkaResponse([B[B)Landroid/os/Bundle;
    .registers 7
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 2524
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateAkaResponse([B[B)Landroid/os/Bundle;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 2533
    :goto_9
    return-object v1

    .line 2526
    :catch_a
    move-exception v0

    .line 2528
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateAkaResponse(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2531
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 2532
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateAkaResponse(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .registers 7
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 2540
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 2549
    :goto_9
    return-object v1

    .line 2542
    :catch_a
    move-exception v0

    .line 2544
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateGbaBootstrappingResponse(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2547
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 2548
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateGbaBootstrappingResponse(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public calculateNafExternalKey([B)[B
    .registers 6
    .parameter "nafId"

    .prologue
    const/4 v1, 0x0

    .line 2556
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateNafExternalKey([B)[B
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 2565
    :goto_9
    return-object v1

    .line 2558
    :catch_a
    move-exception v0

    .line 2560
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateNafExternalKey(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2563
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 2564
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateNafExternalKey(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public cancelMissedCallsNotification()V
    .registers 5

    .prologue
    .line 3818
    const-string v1, "HtcTelephonyManager"

    const-string v2, "cancelMissedCallsNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    :try_start_7
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->cancelMissedCallsNotification()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_e} :catch_2d

    .line 3826
    :goto_e
    return-void

    .line 3821
    :catch_f
    move-exception v0

    .line 3822
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelMissedCallsNotification remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3823
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2d
    move-exception v0

    .line 3824
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelMissedCallsNotification null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public checkTestIcc()Z
    .registers 2

    .prologue
    .line 1808
    const/4 v0, 0x0

    return v0
.end method

.method public clearCdmaSysRecordContent()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 4321
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "clearCdmaSysRecordContent"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 4322
    .local v0, bundleResult:Landroid/os/Bundle;
    const-string v3, "clearCdmaSysRecordContent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_34

    move-result v2

    .line 4330
    .end local v0           #bundleResult:Landroid/os/Bundle;
    :goto_12
    return v2

    .line 4323
    :catch_13
    move-exception v1

    .line 4324
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCdmaSysRecordContent remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12

    .line 4327
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_34
    move-exception v1

    .line 4328
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCdmaSysRecordContent null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_12
.end method

.method public closeIccLogicalChannel(I)Z
    .registers 6
    .parameter "channel"

    .prologue
    const/4 v1, 0x0

    .line 511
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->closeIccLogicalChannel(I)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result v1

    .line 521
    :goto_9
    return v1

    .line 513
    :catch_a
    move-exception v0

    .line 515
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "closeIccLogicalChannel(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 518
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 520
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public confirmFirstDataRoaming()V
    .registers 4

    .prologue
    .line 1181
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1182
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->confirmFirstDataRoaming()V

    .line 1194
    :goto_d
    return-void

    .line 1184
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->confirmFirstDataRoaming()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_1f

    goto :goto_d

    .line 1186
    :catch_16
    move-exception v0

    .line 1188
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "confirmFirstDataRoaming(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1190
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1f
    move-exception v0

    .line 1192
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public dialWithoutDelay(Landroid/content/Intent;)Z
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1267
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1268
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v1

    .line 1280
    :goto_f
    return v1

    .line 1270
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result v1

    goto :goto_f

    .line 1272
    :catch_19
    move-exception v0

    .line 1274
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "dialWithoutDelay(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1277
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1279
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public disableLocationUpdatesExt(I)V
    .registers 3
    .parameter "phoneType"

    .prologue
    .line 3125
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHtcTelephony;->disableLocationUpdatesExt(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 3129
    :goto_7
    return-void

    .line 3127
    :catch_8
    move-exception v0

    goto :goto_7

    .line 3126
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public enableLTENetwork(Z)Z
    .registers 7
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 3940
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_f

    .line 3942
    const-string v2, "HtcTelephonyManager"

    const-string v3, "enableLTENetwork not support"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    :goto_e
    return v1

    .line 3945
    :cond_f
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLTENetwork:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    if-eqz p1, :cond_34

    .line 3947
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IHtcTelephony;->setPreferredNetworkType(I)V

    .line 3950
    :goto_32
    const/4 v1, 0x1

    goto :goto_e

    .line 3949
    :cond_34
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IHtcTelephony;->setPreferredNetworkType(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_3c} :catch_5b

    goto :goto_32

    .line 3951
    :catch_3d
    move-exception v0

    .line 3952
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLTENetwork remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3954
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_5b
    move-exception v0

    .line 3955
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLTENetwork null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public enableLocationUpdatesExt(I)V
    .registers 3
    .parameter "phoneType"

    .prologue
    .line 3108
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHtcTelephony;->enableLocationUpdatesExt(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 3112
    :goto_7
    return-void

    .line 3110
    :catch_8
    move-exception v0

    goto :goto_7

    .line 3109
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public enableMpdp(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 2202
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2203
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->enableMpdp(Z)V

    .line 2215
    :goto_d
    return-void

    .line 2205
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableMpdp(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_1f

    goto :goto_d

    .line 2207
    :catch_16
    move-exception v0

    .line 2209
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "enableMpdp(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2211
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1f
    move-exception v0

    .line 2213
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public enablePS_W2G_Handover(I)V
    .registers 6
    .parameter "enable"

    .prologue
    .line 4113
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "enablePS_W2G_Handover()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4114
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->enablePS_W2G_Handover(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_2d

    .line 4120
    :goto_e
    return-void

    .line 4115
    :catch_f
    move-exception v0

    .line 4116
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePS_W2G_Handover() remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4117
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2d
    move-exception v0

    .line 4118
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePS_W2G_Handover() null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public enableRegistrationState_wifi_call(Z)V
    .registers 5
    .parameter "on"

    .prologue
    .line 2712
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->enableRegistrationState_wifi_call(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_11

    .line 2718
    :goto_7
    return-void

    .line 2713
    :catch_8
    move-exception v0

    .line 2714
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2715
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_11
    move-exception v0

    .line 2716
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public enableRegistrationState_wifi_call_ext(ZI)V
    .registers 6
    .parameter "on"
    .parameter "phoneType"

    .prologue
    .line 2723
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->enableRegistrationState_wifi_call_ext(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_11

    .line 2729
    :goto_7
    return-void

    .line 2724
    :catch_8
    move-exception v0

    .line 2725
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2726
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_11
    move-exception v0

    .line 2727
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public getActiveCallConnectTime()J
    .registers 6

    .prologue
    const-wide/16 v1, -0x1

    .line 1501
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1502
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IHtcTelephony;->getActiveCallConnectTime()J

    move-result-wide v1

    .line 1514
    :goto_10
    return-wide v1

    .line 1504
    :cond_11
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getActiveCallConnectTime()J
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_18} :catch_23

    move-result-wide v1

    goto :goto_10

    .line 1506
    :catch_1a
    move-exception v0

    .line 1508
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    const-string v4, "getActiveCallConnectTime(): RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 1511
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 1513
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_10
.end method

.method public getActiveCallNumber()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1456
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1457
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getActiveCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 1469
    :goto_f
    return-object v1

    .line 1459
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActiveCallNumber()Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result-object v1

    goto :goto_f

    .line 1461
    :catch_19
    move-exception v0

    .line 1463
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getActiveCallNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1466
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1468
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2222
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2223
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getActivePDPList()[Ljava/lang/String;

    move-result-object v1

    .line 2235
    :goto_f
    return-object v1

    .line 2225
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePDPList()[Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result-object v1

    goto :goto_f

    .line 2227
    :catch_19
    move-exception v0

    .line 2229
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "enableMpdp(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 2232
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 2234
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getBackgroundCallNumber()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1478
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1479
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getBackgroundCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 1491
    :goto_f
    return-object v1

    .line 1481
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getBackgroundCallNumber()Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result-object v1

    goto :goto_f

    .line 1483
    :catch_19
    move-exception v0

    .line 1485
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getBackgroundCallNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1488
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1490
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getCFUNumber()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1587
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1588
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCFUNumber()Ljava/lang/String;

    move-result-object v1

    .line 1600
    :goto_f
    return-object v1

    .line 1590
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCFUNumber()Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result-object v1

    goto :goto_f

    .line 1592
    :catch_19
    move-exception v0

    .line 1594
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getCFUNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1597
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1599
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getCFUNumberFromOperator()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1650
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1651
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCFUNumberFromOperator()Ljava/lang/String;

    move-result-object v1

    .line 1663
    :goto_f
    return-object v1

    .line 1653
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCFUNumberFromOperator()Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result-object v1

    goto :goto_f

    .line 1655
    :catch_19
    move-exception v0

    .line 1657
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getCFUNumberFromOperator(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1660
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1662
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getCallStateExt(I)I
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3344
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getCallStateExt(I)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 3350
    :goto_9
    return v1

    .line 3345
    :catch_a
    move-exception v0

    .line 3347
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 3348
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 3350
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCardCheckedState()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3671
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCardCheckedState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 3675
    :goto_9
    return v1

    .line 3672
    :catch_a
    move-exception v0

    .line 3673
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 3674
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 3675
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCdmaMin()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1069
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCdmaMin()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 1079
    :goto_9
    return-object v1

    .line 1071
    :catch_a
    move-exception v0

    .line 1073
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getCdmaMin(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1076
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 1078
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public getCdmaSmartNetworkStatus()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 4222
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    const-string v3, "getCdmaSmartNetworkStatus"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_2b

    move-result-object v0

    .line 4231
    :goto_c
    return v5

    .line 4226
    :catch_d
    move-exception v1

    .line 4227
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdmaSmartNetworkStatus remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4229
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_2b
    move-exception v1

    .line 4230
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdmaSmartNetworkStatus null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public getCdmaSysRecordContent(II)[[I
    .registers 16
    .parameter "index"
    .parameter "number"

    .prologue
    const/4 v9, 0x0

    .line 4291
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4292
    .local v1, bundleArgs:Landroid/os/Bundle;
    const-string v10, "arg1"

    invoke-virtual {v1, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4293
    const-string v10, "arg2"

    invoke-virtual {v1, v10, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4295
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v10

    const-string v11, "getCdmaSysRecordContent"

    invoke-interface {v10, v11, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 4296
    .local v2, bundleResult:Landroid/os/Bundle;
    const-string v10, "getCdmaSysRecordContent_size"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 4297
    .local v8, size:I
    const-string v10, "getCdmaSysRecordContent_sid"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 4298
    .local v7, sid:[I
    const-string v10, "getCdmaSysRecordContent_nid"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 4299
    .local v5, nid:[I
    const-string v10, "getCdmaSysRecordContent_bsid"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 4300
    .local v0, bsid:[I
    const/4 v10, 0x3

    filled-new-array {v8, v10}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    .line 4301
    .local v6, result:[[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_40
    if-ge v4, v8, :cond_5a

    .line 4303
    aget-object v10, v6, v4

    const/4 v11, 0x0

    aget v12, v7, v4

    aput v12, v10, v11

    .line 4304
    aget-object v10, v6, v4

    const/4 v11, 0x1

    aget v12, v5, v4

    aput v12, v10, v11

    .line 4305
    aget-object v10, v6, v4

    const/4 v11, 0x2

    aget v12, v0, v4

    aput v12, v10, v11
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_57} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_57} :catch_7f

    .line 4301
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_5a
    move-object v9, v6

    .line 4315
    .end local v0           #bsid:[I
    .end local v1           #bundleArgs:Landroid/os/Bundle;
    .end local v2           #bundleResult:Landroid/os/Bundle;
    .end local v4           #i:I
    .end local v5           #nid:[I
    .end local v6           #result:[[I
    .end local v7           #sid:[I
    .end local v8           #size:I
    :goto_5b
    return-object v9

    .line 4308
    :catch_5c
    move-exception v3

    .line 4309
    .local v3, ex:Landroid/os/RemoteException;
    const-string v10, "HtcTelephonyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCdmaSysRecordContent remote exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4311
    check-cast v9, [[I

    goto :goto_5b

    .line 4312
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_7f
    move-exception v3

    .line 4313
    .local v3, ex:Ljava/lang/Exception;
    const-string v10, "HtcTelephonyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCdmaSysRecordContent exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4314
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4315
    check-cast v9, [[I

    goto :goto_5b
.end method

.method public getCdmaSysRecordSize()I
    .registers 7

    .prologue
    const/4 v2, -0x1

    .line 4276
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "getCdmaSysRecordSize"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 4277
    .local v0, bundleResult:Landroid/os/Bundle;
    const-string v3, "getCdmaSysRecordSize"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_34

    move-result v2

    .line 4285
    .end local v0           #bundleResult:Landroid/os/Bundle;
    :goto_12
    return v2

    .line 4278
    :catch_13
    move-exception v1

    .line 4279
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaSysRecordSize remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12

    .line 4282
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_34
    move-exception v1

    .line 4283
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaSysRecordSize null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4284
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_12
.end method

.method public getCellLocationExt(I)Landroid/telephony/CellLocation;
    .registers 8
    .parameter "phoneType"

    .prologue
    const/4 v3, 0x0

    .line 3084
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getCellLocationExt(I)Landroid/os/Bundle;

    move-result-object v0

    .line 3085
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 3086
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_1f

    move-result v4

    if-eqz v4, :cond_14

    move-object v1, v3

    .line 3093
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :cond_14
    :goto_14
    return-object v1

    .line 3089
    :catch_15
    move-exception v2

    .line 3090
    .local v2, ex:Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "getCellLocationExt(): RemoteException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 3091
    goto :goto_14

    .line 3092
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1f
    move-exception v2

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 3093
    goto :goto_14
.end method

.method public getCompleteVoiceMailNumberExt(I)Ljava/lang/String;
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2914
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumberExt(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2919
    :goto_9
    return-object v1

    .line 2915
    :catch_a
    move-exception v0

    .line 2916
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 2917
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2919
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCurrentActiveCallDuration()J
    .registers 7

    .prologue
    .line 4097
    const-wide/16 v0, 0x0

    .line 4099
    .local v0, duration:J
    :try_start_2
    const-string v3, "HtcTelephonyManager"

    const-string v4, "getCurrentActiveCallDuration()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IHtcTelephony;->getCurrentActiveCallDuration()J
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_30

    move-result-wide v0

    .line 4106
    :goto_11
    return-wide v0

    .line 4101
    :catch_12
    move-exception v2

    .line 4102
    .local v2, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentActiveCallDuration() remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 4103
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_30
    move-exception v2

    .line 4104
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentActiveCallDuration() null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public getCurrentCallState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1816
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1817
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCurrentCallState()I

    move-result v1

    .line 1829
    :goto_f
    return v1

    .line 1819
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCurrentCallState()I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result v1

    goto :goto_f

    .line 1821
    :catch_19
    move-exception v0

    .line 1823
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getCurrentCallState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1826
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1828
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getDataActivityExt(I)I
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3381
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getDataActivityExt(I)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 3387
    :goto_9
    return v1

    .line 3382
    :catch_a
    move-exception v0

    .line 3384
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 3385
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 3387
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDataStateExt(I)I
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3402
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getDataStateExt(I)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 3407
    :goto_9
    return v1

    .line 3403
    :catch_a
    move-exception v0

    .line 3405
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 3406
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 3407
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDetailIccStatus()[I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1159
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1160
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getDetailIccStatus()[I

    move-result-object v1

    .line 1172
    :goto_f
    return-object v1

    .line 1162
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDetailIccStatus()[I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result-object v1

    goto :goto_f

    .line 1164
    :catch_19
    move-exception v0

    .line 1166
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getDetailIccStatus(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1169
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1171
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getDetailIccStatusExt(I)[I
    .registers 6
    .parameter "phoneType"

    .prologue
    .line 4028
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getDetailIccStatusExt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4029
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getDetailIccStatusExt(I)[I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v1

    .line 4032
    :goto_f
    return-object v1

    .line 4030
    :catch_10
    move-exception v0

    .line 4031
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDetailIccStatusExt remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getDeviceIdExt(I)Ljava/lang/String;
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2823
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdExt(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2827
    :goto_9
    return-object v1

    .line 2824
    :catch_a
    move-exception v0

    .line 2825
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 2826
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2827
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDeviceSoftwareVersionExt(I)Ljava/lang/String;
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2806
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvnExt(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2810
    :goto_9
    return-object v1

    .line 2807
    :catch_a
    move-exception v0

    .line 2808
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 2809
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2810
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDrxInfo()[I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 4124
    :try_start_1
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getWifiDrxInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4125
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getDrxInfo()[I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_2f

    move-result-object v1

    .line 4131
    :goto_10
    return-object v1

    .line 4126
    :catch_11
    move-exception v0

    .line 4127
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiDrxInfo() remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 4129
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2f
    move-exception v0

    .line 4130
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiDrxInfo() null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public getEsn()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1044
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getEsn()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 1054
    :goto_9
    return-object v1

    .line 1046
    :catch_a
    move-exception v0

    .line 1048
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getEsn(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1051
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 1053
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public getGlobalDataRoamingOption()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 793
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getGlobalDataRoamingOption()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result v1

    .line 803
    :goto_9
    return v1

    .line 795
    :catch_a
    move-exception v0

    .line 797
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getGlobalDataRoamingOption(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 800
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 802
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGlobalDataRoamingOption null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public getGprsState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1203
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1204
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getGprsState()I

    move-result v1

    .line 1216
    :goto_f
    return v1

    .line 1206
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getGprsState()I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result v1

    goto :goto_f

    .line 1208
    :catch_19
    move-exception v0

    .line 1210
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getGprsState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1213
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1215
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getGprsStateExt(I)I
    .registers 6
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x1

    .line 4067
    :try_start_1
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getGprsStateExt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getGprsStateExt(I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_13

    move-result v1

    .line 4076
    :goto_10
    return v1

    .line 4070
    :catch_11
    move-exception v0

    .line 4072
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_10

    .line 4074
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 4076
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public getGsmNetworkType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1794
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 862
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 872
    :goto_9
    return-object v1

    .line 864
    :catch_a
    move-exception v0

    .line 866
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcDeviceId(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 869
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 871
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 886
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 896
    :goto_9
    return-object v1

    .line 888
    :catch_a
    move-exception v0

    .line 890
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcDeviceSvn(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 893
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 895
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 932
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 942
    :goto_9
    return-object v1

    .line 934
    :catch_a
    move-exception v0

    .line 936
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcIccSerialNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 939
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 941
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 978
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 988
    :goto_9
    return-object v1

    .line 980
    :catch_a
    move-exception v0

    .line 982
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcLine1AlphaTag(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 985
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 987
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 955
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 965
    :goto_9
    return-object v1

    .line 957
    :catch_a
    move-exception v0

    .line 959
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcLine1Number(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 962
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 964
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public getHtcNetworkType([Ljava/lang/String;)I
    .registers 6
    .parameter "stack"

    .prologue
    const/4 v1, -0x1

    .line 1985
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1986
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v1

    .line 1998
    :goto_f
    return v1

    .line 1988
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getHtcNetworkType([Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result v1

    goto :goto_f

    .line 1990
    :catch_19
    move-exception v0

    .line 1992
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcNetworkType(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1995
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1997
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getHtcServiceStateExt(I)I
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x3

    .line 3644
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcServiceStateExt(I)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 3650
    :goto_9
    return v1

    .line 3645
    :catch_a
    move-exception v0

    .line 3647
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 3648
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 3650
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 909
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 919
    :goto_9
    return-object v1

    .line 911
    :catch_a
    move-exception v0

    .line 913
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcSubscriberId(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 916
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 918
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 1024
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 1034
    :goto_9
    return-object v1

    .line 1026
    :catch_a
    move-exception v0

    .line 1028
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcVoiceMailAlphaTag(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1031
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 1033
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 1001
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 1011
    :goto_9
    return-object v1

    .line 1003
    :catch_a
    move-exception v0

    .line 1005
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcVoiceMailNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1008
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 1010
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public getIccCountryIso(I)Ljava/lang/String;
    .registers 3
    .parameter "iccType"

    .prologue
    .line 3060
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 3061
    const-string v0, "gsm.gsm.sim.oprt.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3069
    :goto_9
    return-object v0

    .line 3063
    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    .line 3064
    const-string v0, "gsm.sub.icc.oprt.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 3066
    :cond_14
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 3067
    const-string v0, "gsm.cdma.uim.oprt.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 3069
    :cond_1e
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getIccOperator(I)Ljava/lang/String;
    .registers 3
    .parameter "iccType"

    .prologue
    .line 3015
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 3016
    const-string v0, "gsm.gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3024
    :goto_9
    return-object v0

    .line 3018
    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    .line 3019
    const-string v0, "gsm.sub.icc.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 3021
    :cond_14
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 3022
    const-string v0, "gsm.cdma.uim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 3024
    :cond_1e
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getIccOperatorName(I)Ljava/lang/String;
    .registers 3
    .parameter "iccType"

    .prologue
    .line 3040
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 3041
    const-string v0, "gsm.gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3049
    :goto_9
    return-object v0

    .line 3043
    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    .line 3044
    const-string v0, "gsm.sub.icc.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 3046
    :cond_14
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 3047
    const-string v0, "gsm.cdma.uim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 3049
    :cond_1e
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getIccSerialNumber(I)Ljava/lang/String;
    .registers 6
    .parameter "iccType"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2775
    if-ne p1, v2, :cond_f

    .line 2776
    :try_start_5
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberExt(I)Ljava/lang/String;

    move-result-object v1

    .line 2791
    :goto_e
    return-object v1

    .line 2778
    :cond_f
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1c

    .line 2779
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberExt(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 2781
    :cond_1c
    if-ne p1, v3, :cond_28

    .line 2782
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberExt(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 2784
    :cond_28
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2f} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_2f} :catch_33

    move-result-object v1

    goto :goto_e

    .line 2787
    :catch_31
    move-exception v0

    .line 2788
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_e

    .line 2789
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_33
    move-exception v0

    .line 2791
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_e
.end method

.method public getIccState(I)I
    .registers 7
    .parameter "iccType"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2974
    if-ne p1, v1, :cond_14

    .line 2975
    const-string v4, "gsm.icc.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2985
    .local v0, prop:Ljava/lang/String;
    :goto_b
    const-string v4, "ABSENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 3001
    :goto_13
    return v1

    .line 2977
    .end local v0           #prop:Ljava/lang/String;
    :cond_14
    if-ne p1, v3, :cond_1d

    .line 2978
    const-string v4, "gsm.icc.sub.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prop:Ljava/lang/String;
    goto :goto_b

    .line 2980
    .end local v0           #prop:Ljava/lang/String;
    :cond_1d
    if-ne p1, v2, :cond_26

    .line 2981
    const-string v4, "gsm.icc.uim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prop:Ljava/lang/String;
    goto :goto_b

    .line 2983
    .end local v0           #prop:Ljava/lang/String;
    :cond_26
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prop:Ljava/lang/String;
    goto :goto_b

    .line 2988
    :cond_2d
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    move v1, v2

    .line 2989
    goto :goto_13

    .line 2991
    :cond_37
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    move v1, v3

    .line 2992
    goto :goto_13

    .line 2994
    :cond_41
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2995
    const/4 v1, 0x4

    goto :goto_13

    .line 2997
    :cond_4b
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 2998
    const/4 v1, 0x5

    goto :goto_13

    .line 3001
    :cond_55
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getIccType()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4006
    const-string v2, "gsm.sim.types"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4007
    .local v0, iccType:Ljava/lang/String;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1c

    .line 4008
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4009
    const/4 v1, 0x1

    .line 4020
    :cond_1c
    :goto_1c
    return v1

    .line 4010
    :cond_1d
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 4011
    const/4 v1, 0x2

    goto :goto_1c

    .line 4012
    :cond_2b
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 4013
    const/4 v1, 0x3

    goto :goto_1c

    .line 4014
    :cond_39
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_TITAN_LITE_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4015
    const/4 v1, 0x4

    goto :goto_1c
.end method

.method public getIncallRecordingFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1677
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKddiUserAgent()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3725
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getKddiUserAgent()Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_29

    move-result-object v1

    .line 3731
    :goto_8
    return-object v1

    .line 3726
    :catch_9
    move-exception v0

    .line 3727
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKddiUserAgent remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    const-string v1, ""

    goto :goto_8

    .line 3729
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_29
    move-exception v0

    .line 3730
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKddiUserAgent null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    const-string v1, ""

    goto :goto_8
.end method

.method public getLTELastErrorCode()I
    .registers 7

    .prologue
    const/4 v2, -0x1

    .line 3909
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "getLTELastErrorCode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3910
    .local v0, bundleResult:Landroid/os/Bundle;
    const-string v3, "getLTELastErrorCode"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_12} :catch_32

    move-result v2

    .line 3916
    .end local v0           #bundleResult:Landroid/os/Bundle;
    :goto_13
    return v2

    .line 3911
    :catch_14
    move-exception v1

    .line 3912
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELastErrorCode remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 3914
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_32
    move-exception v1

    .line 3915
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELastErrorCode null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public getLastError()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 528
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getLastError()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result v1

    .line 538
    :goto_9
    return v1

    .line 530
    :catch_a
    move-exception v0

    .line 532
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getLastError(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 535
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 537
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public getLine1AlphaTagExt(I)Ljava/lang/String;
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2878
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagExt(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2883
    :goto_9
    return-object v1

    .line 2879
    :catch_a
    move-exception v0

    .line 2880
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 2881
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2883
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLine1NumberExt(I)Ljava/lang/String;
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2858
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberExt(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2863
    :goto_9
    return-object v1

    .line 2859
    :catch_a
    move-exception v0

    .line 2860
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 2861
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2863
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getNeighboringCellInfoExt(I)Ljava/util/List;
    .registers 5
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3142
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getNeighboringCellInfoExt(I)Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 3146
    :goto_9
    return-object v1

    .line 3143
    :catch_a
    move-exception v0

    .line 3144
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 3145
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 3146
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getNetworkOperatorExt(I)Ljava/lang/String;
    .registers 3
    .parameter "phoneType"

    .prologue
    .line 3179
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 3180
    const-string v0, "gsm.gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3188
    :goto_9
    return-object v0

    .line 3182
    :cond_a
    const/4 v0, 0x5

    if-ne p1, v0, :cond_14

    .line 3183
    const-string v0, "gsm.sub.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 3185
    :cond_14
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 3186
    const-string v0, "gsm.cdma.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 3188
    :cond_1e
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getNetworkOperatorNameExt(I)Ljava/lang/String;
    .registers 3
    .parameter "phoneType"

    .prologue
    .line 3158
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 3159
    const-string v0, "gsm.gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3167
    :goto_9
    return-object v0

    .line 3161
    :cond_a
    const/4 v0, 0x5

    if-ne p1, v0, :cond_14

    .line 3162
    const-string v0, "gsm.sub.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 3164
    :cond_14
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 3165
    const-string v0, "gsm.cdma.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 3167
    :cond_1e
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getNetworkTypeExt(I)I
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v2, 0x0

    .line 3232
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    .line 3233
    .local v1, telephony:Lcom/android/internal/telephony/IHtcTelephony;
    if-eqz v1, :cond_b

    .line 3234
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getNetworkTypeExt(I)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_e

    move-result v2

    .line 3244
    .end local v1           #telephony:Lcom/android/internal/telephony/IHtcTelephony;
    :cond_b
    :goto_b
    return v2

    .line 3239
    :catch_c
    move-exception v0

    .line 3241
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_b

    .line 3242
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v0

    .line 3244
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_b
.end method

.method public getNetworkTypeNameExt(I)Ljava/lang/String;
    .registers 3
    .parameter "phoneType"

    .prologue
    .line 3277
    invoke-virtual {p0, p1}, Lcom/htc/service/HtcTelephonyManager;->getNetworkTypeExt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 3301
    :pswitch_7
    const-string v0, "UNKNOWN"

    :goto_9
    return-object v0

    .line 3279
    :pswitch_a
    const-string v0, "GPRS"

    goto :goto_9

    .line 3281
    :pswitch_d
    const-string v0, "EDGE"

    goto :goto_9

    .line 3283
    :pswitch_10
    const-string v0, "UMTS"

    goto :goto_9

    .line 3285
    :pswitch_13
    const-string v0, "HSDPA"

    goto :goto_9

    .line 3287
    :pswitch_16
    const-string v0, "HSUPA"

    goto :goto_9

    .line 3289
    :pswitch_19
    const-string v0, "HSPA"

    goto :goto_9

    .line 3291
    :pswitch_1c
    const-string v0, "CDMA"

    goto :goto_9

    .line 3293
    :pswitch_1f
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_9

    .line 3295
    :pswitch_22
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_9

    .line 3297
    :pswitch_25
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_9

    .line 3299
    :pswitch_28
    const-string v0, "CDMA - 1xRTT"

    goto :goto_9

    .line 3277
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_28
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_7
        :pswitch_25
    .end packed-switch
.end method

.method public getPdnSettings(I)Ljava/lang/String;
    .registers 6
    .parameter "profileSlot"

    .prologue
    const/4 v1, 0x0

    .line 1839
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1840
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getPdnSettings(I)Ljava/lang/String;

    move-result-object v1

    .line 1852
    :goto_f
    return-object v1

    .line 1842
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getPdnSettings(I)Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result-object v1

    goto :goto_f

    .line 1844
    :catch_19
    move-exception v0

    .line 1846
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPdnSettings(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1849
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1851
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 1897
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 1907
    :goto_9
    return-object v1

    .line 1899
    :catch_a
    move-exception v0

    .line 1901
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPdnSettings2(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1904
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 1906
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public getPhoneState()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 2735
    const/4 v1, 0x0

    .line 2737
    .local v1, state:Landroid/os/Bundle;
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getPhoneState()Landroid/os/Bundle;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 2744
    :goto_9
    return-object v1

    .line 2738
    :catch_a
    move-exception v0

    .line 2739
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPhoneState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2740
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 2741
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPhoneState(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getPowerInfo()[I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 4177
    :try_start_1
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPowerInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getPowerInfo()[I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_2f

    move-result-object v1

    .line 4184
    :goto_10
    return-object v1

    .line 4179
    :catch_11
    move-exception v0

    .line 4180
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerInfo() remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 4182
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2f
    move-exception v0

    .line 4183
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerInfo() null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public getPowerKeyFlag()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1567
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1568
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getPowerKeyFlag()Z

    move-result v1

    .line 1580
    :goto_f
    return v1

    .line 1570
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getPowerKeyFlag()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result v1

    goto :goto_f

    .line 1572
    :catch_19
    move-exception v0

    .line 1574
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPowerKeyFlag(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1577
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1579
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getPreferredNetworkType()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1945
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1946
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getPreferredNetworkType()I

    move-result v1

    .line 1958
    :goto_f
    return v1

    .line 1948
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType()I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result v1

    goto :goto_f

    .line 1950
    :catch_19
    move-exception v0

    .line 1952
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPreferredNetworkType(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1955
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1957
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getScreenBusyState()Z
    .registers 5

    .prologue
    .line 2612
    const/4 v1, 0x0

    .line 2614
    .local v1, screenbusy:Z
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getScreenBusyState()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result v1

    .line 2621
    :goto_9
    return v1

    .line 2615
    :catch_a
    move-exception v0

    .line 2616
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getScreenBusyState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2617
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 2618
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getScreenBusyState(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getSectorId(I)Ljava/lang/String;
    .registers 6
    .parameter "requestedNetworkType"

    .prologue
    const/4 v1, 0x0

    .line 714
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getSectorId(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result-object v1

    .line 723
    :goto_9
    return-object v1

    .line 716
    :catch_a
    move-exception v0

    .line 718
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getSectorId(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 721
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 722
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getSectorId(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getServiceState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1227
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1228
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getServiceState()I

    move-result v1

    .line 1240
    :goto_f
    return v1

    .line 1230
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result v1

    goto :goto_f

    .line 1232
    :catch_19
    move-exception v0

    .line 1234
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getServiceState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1237
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1239
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getSubscriberIdExt(I)Ljava/lang/String;
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2840
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdExt(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2845
    :goto_9
    return-object v1

    .line 2841
    :catch_a
    move-exception v0

    .line 2842
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 2843
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2845
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getSubsidyLockTypes()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1109
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1110
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getSubsidyLockTypes()I

    move-result v1

    .line 1122
    :goto_f
    return v1

    .line 1112
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSubsidyLockTypes()I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result v1

    goto :goto_f

    .line 1114
    :catch_19
    move-exception v0

    .line 1116
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getSubsidyLockTypes(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1119
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1121
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2101
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2102
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v1

    .line 2114
    :goto_f
    return-object v1

    .line 2104
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getUSSDVerificationStatus()Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result-object v1

    goto :goto_f

    .line 2106
    :catch_19
    move-exception v0

    .line 2108
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getUSSDVerificationStatus(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 2111
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 2113
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2139
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2140
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v1

    .line 2152
    :goto_f
    return-object v1

    .line 2142
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getUSSDVerificationStrings()[Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_22

    move-result-object v1

    goto :goto_f

    .line 2144
    :catch_19
    move-exception v0

    .line 2146
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getUSSDVerificationStrings(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 2149
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 2151
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getUimState()I
    .registers 2

    .prologue
    .line 2956
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/service/HtcTelephonyManager;->getIccState(I)I

    move-result v0

    return v0
.end method

.method public getVTLoopBackMode()Z
    .registers 5

    .prologue
    .line 1777
    const/4 v1, 0x0

    .line 1779
    .local v1, loopback:Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1780
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getVTLoopBackMode()Z

    move-result v1

    .line 1790
    :goto_f
    return v1

    .line 1782
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVTLoopBackMode()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result v1

    goto :goto_f

    .line 1784
    :catch_19
    move-exception v0

    .line 1785
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "setVTLoopBackMode(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1786
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 1787
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getVTSimulatedMode()Z
    .registers 5

    .prologue
    .line 1742
    const/4 v1, 0x0

    .line 1744
    .local v1, simulated:Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1745
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getVTSimulatedMode()Z

    move-result v1

    .line 1755
    :goto_f
    return v1

    .line 1747
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVTSimulatedMode()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result v1

    goto :goto_f

    .line 1749
    :catch_19
    move-exception v0

    .line 1750
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "setVTLoopBackMode(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1751
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 1752
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2933
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2938
    :goto_9
    return-object v1

    .line 2934
    :catch_a
    move-exception v0

    .line 2935
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 2936
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2938
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceMailNumberExt(I)Ljava/lang/String;
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2896
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberExt(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2901
    :goto_9
    return-object v1

    .line 2897
    :catch_a
    move-exception v0

    .line 2898
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 2899
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2901
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceMessageCountExt(I)I
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3330
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getVoiceMessageCountExt(I)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 3335
    :goto_9
    return v1

    .line 3331
    :catch_a
    move-exception v0

    .line 3332
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 3333
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 3335
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public handlePinMmi(Ljava/lang/String;I)Z
    .registers 7
    .parameter "dialString"
    .parameter "phoneType"

    .prologue
    .line 4139
    const/4 v1, -0x1

    if-ne v1, p2, :cond_13

    .line 4140
    :try_start_3
    const-string v1, "HtcTelephonyManager"

    const-string v2, "handlePinMmi()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z

    move-result v1

    .line 4151
    :goto_12
    return v1

    .line 4143
    :cond_13
    const-string v1, "HtcTelephonyManager"

    const-string v2, "handlePinMmiExt()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiExt(Ljava/lang/String;I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_21} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_21} :catch_42

    move-result v1

    goto :goto_12

    .line 4146
    :catch_23
    move-exception v0

    .line 4147
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePinMmi() remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    .end local v0           #ex:Landroid/os/RemoteException;
    :goto_40
    const/4 v1, 0x0

    goto :goto_12

    .line 4148
    :catch_42
    move-exception v0

    .line 4149
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePinMmi() null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public hasIccCardExt(I)Z
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3311
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->hasIccCardExt(I)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 3317
    :goto_9
    return v1

    .line 3312
    :catch_a
    move-exception v0

    .line 3314
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 3315
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 3317
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public hasVTCall()Z
    .registers 2

    .prologue
    .line 1801
    const/4 v0, 0x0

    return v0
.end method

.method public hello_getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    const-string v0, "9999999999"

    return-object v0
.end method

.method public htcCdmaEndCall()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1385
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1386
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->htcCdmaEndCall()Z

    move-result v1

    .line 1398
    :goto_f
    return v1

    .line 1388
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->htcCdmaEndCall()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result v1

    goto :goto_f

    .line 1390
    :catch_19
    move-exception v0

    .line 1392
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "htcCdmaEndCall(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1395
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 1397
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .registers 4

    .prologue
    .line 1336
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1337
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->htcCdmaExitRadioPowerSaveMode()V

    .line 1349
    :goto_d
    return-void

    .line 1339
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->htcCdmaExitRadioPowerSaveMode()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 1341
    :catch_16
    move-exception v0

    .line 1343
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "htcCdmaExitRadioPowerSaveMode(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1345
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 1347
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public htcModemLinkOn()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1360
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1361
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->htcModemLinkOn()Z

    move-result v1

    .line 1373
    :goto_f
    return v1

    .line 1363
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->htcModemLinkOn()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result v1

    goto :goto_f

    .line 1365
    :catch_19
    move-exception v0

    .line 1367
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "htcModemLinkOn(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1370
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 1372
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public isCallWaiting()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1610
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1611
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->isCallWaiting()Z

    move-result v1

    .line 1623
    :goto_f
    return v1

    .line 1613
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isCallWaiting()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result v1

    goto :goto_f

    .line 1615
    :catch_19
    move-exception v0

    .line 1617
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "isCallWaiting(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1620
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 1622
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public isCatServiceReady()Z
    .registers 5

    .prologue
    .line 2663
    const/4 v1, 0x0

    .line 2665
    .local v1, isReady:Z
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->isCatServiceReady()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result v1

    .line 2672
    :goto_9
    return v1

    .line 2666
    :catch_a
    move-exception v0

    .line 2667
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "isCatServiceReady(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2668
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 2669
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "isCatServiceReady(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public isEnableLTENetwork()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 3963
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_10

    .line 3965
    const-string v3, "HtcTelephonyManager"

    const-string/jumbo v4, "isEnableLTENetwork not support"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3986
    :goto_f
    return v2

    .line 3968
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IHtcTelephony;->getPreferredNetworkType()I

    move-result v1

    .line 3969
    .local v1, value:I
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEnableLTENetwork:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_31} :catch_37
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_31} :catch_56

    .line 3970
    packed-switch v1, :pswitch_data_76

    goto :goto_f

    .line 3977
    :pswitch_35
    const/4 v2, 0x1

    goto :goto_f

    .line 3981
    .end local v1           #value:I
    :catch_37
    move-exception v0

    .line 3982
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEnableLTENetwork remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 3984
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_56
    move-exception v0

    .line 3985
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEnableLTENetwork null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 3970
    nop

    :pswitch_data_76
    .packed-switch 0x8
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public isEnterCDMAEmergencyMode()J
    .registers 8

    .prologue
    const-wide/16 v2, -0x1

    .line 4245
    :try_start_2
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string/jumbo v5, "isEnterCDMAEmergencyMode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 4246
    .local v0, bundleResult:Landroid/os/Bundle;
    const-string/jumbo v4, "isEnterCDMAEmergencyMode"

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_16} :catch_37

    move-result-wide v2

    .line 4252
    .end local v0           #bundleResult:Landroid/os/Bundle;
    :goto_17
    return-wide v2

    .line 4247
    :catch_18
    move-exception v1

    .line 4248
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isEnterCDMAEmergencyMode remote exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 4250
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_37
    move-exception v1

    .line 4251
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isEnterCDMAEmergencyMode null pointer exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public isFdnEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1408
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1409
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->isFdnEnabled()Z

    move-result v1

    .line 1421
    :goto_f
    return v1

    .line 1411
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isFdnEnabled()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result v1

    goto :goto_f

    .line 1413
    :catch_19
    move-exception v0

    .line 1415
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "isFdnEnabled(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1418
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 1420
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public isInService(I)Z
    .registers 5
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3632
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->isInService(I)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 3638
    :goto_9
    return v1

    .line 3633
    :catch_a
    move-exception v0

    .line 3635
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 3636
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 3638
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isNetworkRoamingExt(I)Z
    .registers 4
    .parameter "phoneType"

    .prologue
    .line 3199
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 3200
    const-string/jumbo v0, "true"

    const-string v1, "gsm.gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3208
    :goto_10
    return v0

    .line 3202
    :cond_11
    const/4 v0, 0x5

    if-ne p1, v0, :cond_22

    .line 3203
    const-string/jumbo v0, "true"

    const-string v1, "gsm.sub.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_10

    .line 3205
    :cond_22
    const/4 v0, 0x2

    if-ne p1, v0, :cond_33

    .line 3206
    const-string/jumbo v0, "true"

    const-string v1, "gsm.cdma.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_10

    .line 3208
    :cond_33
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_10
.end method

.method public isUimPinEnabled()Z
    .registers 4

    .prologue
    .line 2945
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->isUimPinEnabled()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 2950
    :goto_8
    return v1

    .line 2947
    :catch_9
    move-exception v0

    .line 2949
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "isUimPinEnabled(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2950
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public notifyKeyEvent(I)V
    .registers 5
    .parameter "keyCode"

    .prologue
    .line 2603
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->notifyKeyEvent(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_12

    .line 2609
    :goto_7
    return-void

    .line 2604
    :catch_8
    move-exception v0

    .line 2605
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "notifyKeyEvent(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2606
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 2607
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "notifyKeyEvent(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public notifyScreenBusy(Z)V
    .registers 5
    .parameter "busy"

    .prologue
    .line 2592
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->notifyScreenBusy(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_12

    .line 2598
    :goto_7
    return-void

    .line 2593
    :catch_8
    move-exception v0

    .line 2594
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "notifyScreenBusy(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2595
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 2596
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "notifyScreenBusy(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .registers 6
    .parameter "resMsg"

    .prologue
    .line 2625
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2626
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "CMD_DETATIL"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2627
    const-string v2, "RES_CODE"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getIntResCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2628
    const-string v2, "MENU_SELECT"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getMenuSelection()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2629
    const-string v2, "INPUT"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getInput()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    const-string v2, "YES_NO"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getYesNo()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2631
    const-string v2, "CONFIRM"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getConfirm()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2634
    :try_start_3b
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->onCmdResponse(Landroid/os/Bundle;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_43
    .catch Ljava/lang/NullPointerException; {:try_start_3b .. :try_end_42} :catch_4d

    .line 2640
    :goto_42
    return-void

    .line 2635
    :catch_43
    move-exception v1

    .line 2636
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "onCmdResponse(): RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 2637
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_4d
    move-exception v1

    .line 2638
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "onCmdResponse(): NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42
.end method

.method public onHandleEventList(IZ)V
    .registers 6
    .parameter "event"
    .parameter "enable"

    .prologue
    .line 2644
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->onHandleEventList(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_12

    .line 2650
    :goto_7
    return-void

    .line 2645
    :catch_8
    move-exception v0

    .line 2646
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "onHandleEventList(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2647
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 2648
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "onHandleEventList(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public onLanguageEvent(Ljava/lang/String;)V
    .registers 5
    .parameter "language"

    .prologue
    .line 2654
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->onLanguageEvent(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_12

    .line 2660
    :goto_7
    return-void

    .line 2655
    :catch_8
    move-exception v0

    .line 2656
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "sendEventDownload(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2657
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 2658
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "sendEventDownload(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .registers 6
    .parameter "AID"

    .prologue
    const/4 v1, 0x0

    .line 494
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->openIccLogicalChannel(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result v1

    .line 504
    :goto_9
    return v1

    .line 496
    :catch_a
    move-exception v0

    .line 498
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "openIccLogicalChannel(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 501
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 503
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public performEndCall()V
    .registers 5

    .prologue
    .line 4084
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "performEndCall()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_2f

    .line 4092
    :goto_f
    return-void

    .line 4086
    :catch_10
    move-exception v0

    .line 4087
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performEndCall() remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4088
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2f
    move-exception v0

    .line 4089
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performEndCall() null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public performHtcPhoneAction(I)V
    .registers 5
    .parameter "action"

    .prologue
    .line 2180
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2181
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->performHtcPhoneAction(I)V

    .line 2193
    :goto_d
    return-void

    .line 2183
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->performHtcPhoneAction(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 2185
    :catch_16
    move-exception v0

    .line 2187
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "performHtcPhoneAction(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2189
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 2191
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public performHtcPhoneActionExt(II)V
    .registers 7
    .parameter "action"
    .parameter "phoneType"

    .prologue
    .line 4058
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "performHtcPhoneActionExt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->performHtcPhoneActionExt(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 4063
    :goto_f
    return-void

    .line 4060
    :catch_10
    move-exception v0

    .line 4061
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performHtcPhoneActionExt remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public plusCodeTranslationPrefix(I)Ljava/lang/String;
    .registers 9
    .parameter "phoneType"

    .prologue
    const/4 v3, 0x0

    .line 4160
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4161
    .local v0, bundleArg1:Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4162
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string/jumbo v5, "plusCodeTranslationPrefix"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 4163
    .local v1, bundleResult:Landroid/os/Bundle;
    const-string/jumbo v4, "plusCodeTranslationPrefix"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1c} :catch_3d

    move-result-object v3

    .line 4169
    .end local v0           #bundleArg1:Landroid/os/Bundle;
    .end local v1           #bundleResult:Landroid/os/Bundle;
    :goto_1d
    return-object v3

    .line 4164
    :catch_1e
    move-exception v2

    .line 4165
    .local v2, ex:Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "plusCodeTranslationPrefix remote exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 4167
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_3d
    move-exception v2

    .line 4168
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "plusCodeTranslationPrefix null pointer exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public queryCAVE()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 229
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->queryCAVE()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result v1

    .line 239
    :goto_9
    return v1

    .line 231
    :catch_a
    move-exception v0

    .line 233
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "queryCAVE(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 236
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 238
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public queryMD5()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 345
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->queryMD5()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result v1

    .line 355
    :goto_9
    return v1

    .line 347
    :catch_a
    move-exception v0

    .line 349
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "queryMD5(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 352
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 354
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public querySSDUpdate()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 262
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->querySSDUpdate()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result v1

    .line 272
    :goto_9
    return v1

    .line 264
    :catch_a
    move-exception v0

    .line 266
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "querySSDUpdate(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 269
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 271
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public queryUIMAUTH()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 361
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->queryUIMAUTH()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result v1

    .line 371
    :goto_9
    return v1

    .line 363
    :catch_a
    move-exception v0

    .line 365
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "queryUIMAUTH(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 368
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 370
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public queryVPM()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 312
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->queryVPM()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result v1

    .line 322
    :goto_9
    return v1

    .line 314
    :catch_a
    move-exception v0

    .line 316
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "queryVPM(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 319
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 321
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "randu"

    .prologue
    const/4 v1, 0x0

    .line 212
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 222
    :goto_9
    return-object v1

    .line 214
    :catch_a
    move-exception v0

    .line 216
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestCAVE(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 219
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 221
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public requestCW_UW_DREG()V
    .registers 4

    .prologue
    .line 2387
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2388
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->requestCW_UW_DREG()V

    .line 2400
    :goto_d
    return-void

    .line 2390
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestCW_UW_DREG()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 2392
    :catch_16
    move-exception v0

    .line 2394
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "requestCW_UW_DREG(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2396
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 2398
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public requestCW_UW_REG()V
    .registers 4

    .prologue
    .line 2367
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2368
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->requestCW_UW_REG()V

    .line 2380
    :goto_d
    return-void

    .line 2370
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestCW_UW_REG()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 2372
    :catch_16
    move-exception v0

    .line 2374
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "requestCW_UW_REG(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2376
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 2378
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public requestClearLocProcessDB()V
    .registers 3

    .prologue
    .line 3884
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "requestClearLocProcessDB is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    return-void
.end method

.method public requestClearLocProcessDB_EXT()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 3832
    :try_start_1
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestClearLocProcessDB_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requesttClearLocProcessDB()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_31

    move-result v1

    .line 3839
    :goto_11
    return v1

    .line 3834
    :catch_12
    move-exception v0

    .line 3835
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requesttClearLocProcessDB remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 3837
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_31
    move-exception v0

    .line 3838
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requesttClearLocProcessDB null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public requestConfigLocProcessDB(IIII)V
    .registers 7
    .parameter "enable"
    .parameter "num_neighbor_pilot"
    .parameter "num_record"
    .parameter "time"

    .prologue
    .line 3899
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "requestConfigLocProcessDB is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    return-void
.end method

.method public requestConfigLocProcessDB_EXT(IIII)Z
    .registers 10
    .parameter "enable"
    .parameter "num_neighbor_pilot"
    .parameter "num_record"
    .parameter "time"

    .prologue
    const/4 v1, 0x0

    .line 3871
    :try_start_1
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestConfigLocProcessDB_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestConfigLocProcessDB(IIII)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_31

    move-result v1

    .line 3878
    :goto_11
    return v1

    .line 3873
    :catch_12
    move-exception v0

    .line 3874
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestConfigLocProcessDB remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 3876
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_31
    move-exception v0

    .line 3877
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestConfigLocProcessDB null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public requestEhrpdDomainNameChangeState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 2036
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2037
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestEhrpdDomainNameChangeState()I

    move-result v1

    .line 2049
    :goto_f
    return v1

    .line 2039
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestEhrpdDomainNameChangeState()I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result v1

    goto :goto_f

    .line 2041
    :catch_19
    move-exception v0

    .line 2043
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestEhrpdDomainNameChangeState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 2046
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 2048
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public requestGetBtid()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2491
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetBtid()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 2500
    :goto_9
    return-object v1

    .line 2493
    :catch_a
    move-exception v0

    .line 2495
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetBtid(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2498
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 2499
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetBtid(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetCurrentLoc()V
    .registers 3

    .prologue
    .line 3894
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "requestGetCurrentLoc is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    return-void
.end method

.method public requestGetCurrentLoc_EXT()[I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 3858
    :try_start_1
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetCurrentLoc_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetCurrentLoc()[I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_31

    move-result-object v1

    .line 3865
    :goto_11
    return-object v1

    .line 3860
    :catch_12
    move-exception v0

    .line 3861
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetCurrentLoc remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 3863
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_31
    move-exception v0

    .line 3864
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetCurrentLoc null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public requestGetDOMAIN()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 582
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetDOMAIN()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 591
    :goto_9
    return-object v1

    .line 584
    :catch_a
    move-exception v0

    .line 586
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetDOMAIN(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 589
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 590
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetDOMAIN(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetEhrpdDeviceCapability()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 2078
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2079
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetEhrpdDeviceCapability()I

    move-result v1

    .line 2091
    :goto_f
    return v1

    .line 2081
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestGetEhrpdDeviceCapability()I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result v1

    goto :goto_f

    .line 2083
    :catch_19
    move-exception v0

    .line 2085
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetEhrpdDeviceCapability(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 2088
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 2090
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public requestGetEhrpdDisableCapability()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 2057
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2058
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetEhrpdDisableCapability()I

    move-result v1

    .line 2070
    :goto_f
    return v1

    .line 2060
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestGetEhrpdDisableCapability()I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result v1

    goto :goto_f

    .line 2062
    :catch_19
    move-exception v0

    .line 2064
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetEhrpdDisableCapability(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 2067
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 2069
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public requestGetGID1()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 755
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetGID1()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 764
    :goto_9
    return-object v1

    .line 757
    :catch_a
    move-exception v0

    .line 759
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetGID1(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 762
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 763
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetGID1(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetGID1Ext(I)Ljava/lang/String;
    .registers 8
    .parameter "phoneType"

    .prologue
    const/4 v3, 0x0

    .line 772
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 773
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 774
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string v5, "getGID1Ext"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 775
    .local v1, bundleResult:Landroid/os/Bundle;
    const-string v4, "getGID1Ext"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1b} :catch_27

    move-result-object v3

    .line 781
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #bundleResult:Landroid/os/Bundle;
    :goto_1c
    return-object v3

    .line 776
    :catch_1d
    move-exception v2

    .line 777
    .local v2, ex:Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    const-string/jumbo v5, "requestGetGID1Ext(): RemoteException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 779
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_27
    move-exception v2

    .line 780
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    const-string/jumbo v5, "requestGetGID1Ext(): NullPointerException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public requestGetHasISIM()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2443
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetHasISIM()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result v1

    .line 2452
    :goto_9
    return v1

    .line 2445
    :catch_a
    move-exception v0

    .line 2447
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetHasISIM(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2450
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 2451
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetHasISIM(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetIMPI()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 563
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPI()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 572
    :goto_9
    return-object v1

    .line 565
    :catch_a
    move-exception v0

    .line 567
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIMPI(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 570
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 571
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIMPI(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetIMPU()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 601
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPU()[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 610
    :goto_9
    return-object v1

    .line 603
    :catch_a
    move-exception v0

    .line 605
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIMPU(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 608
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 609
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIMPU(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 638
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 647
    :goto_9
    return-object v1

    .line 640
    :catch_a
    move-exception v0

    .line 642
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIMSI(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 645
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 646
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIMSI(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetIsGBASupported()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2459
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetIsGBASupported()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result v1

    .line 2468
    :goto_9
    return v1

    .line 2461
    :catch_a
    move-exception v0

    .line 2463
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIsGBASupported(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2466
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 2467
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIsGBASupported(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetKeyLifetime()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2507
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetKeyLifetime()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 2516
    :goto_9
    return-object v1

    .line 2509
    :catch_a
    move-exception v0

    .line 2511
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetKeyLifetime(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2514
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 2515
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetKeyLifetime(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetLTERFBandInfo()[I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 3802
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetLTERFBandInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    :try_start_9
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetLTERFBandInfo()[I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_10} :catch_31

    move-result-object v1

    .line 3811
    :goto_11
    return-object v1

    .line 3806
    :catch_12
    move-exception v0

    .line 3807
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetLTERFBandInfo remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 3809
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_31
    move-exception v0

    .line 3810
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetLTERFBandInfo null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public requestGetLTETxRxInfo()[I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 3782
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetLTETxRxInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    :try_start_9
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetLTETxRxInfo()[I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_10} :catch_31

    move-result-object v1

    .line 3791
    :goto_11
    return-object v1

    .line 3786
    :catch_12
    move-exception v0

    .line 3787
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetLTETxRxInfo remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 3789
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_31
    move-exception v0

    .line 3790
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetLTETxRxInfo null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 658
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 667
    :goto_9
    return-object v1

    .line 660
    :catch_a
    move-exception v0

    .line 662
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetMobileNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 665
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 666
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetMobileNumber(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetPCSCF()Landroid/os/Bundle;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 618
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCF()Landroid/os/Bundle;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 627
    :goto_9
    return-object v1

    .line 620
    :catch_a
    move-exception v0

    .line 622
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetPCSCF(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 625
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 626
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetPCSCF(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "ifc_name"

    .prologue
    const/4 v1, 0x0

    .line 440
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 449
    :goto_9
    return-object v1

    .line 442
    :catch_a
    move-exception v0

    .line 444
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetPCSCFAddress(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 447
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 448
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetPCSCFAddress(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetRand()[B
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2475
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetRand()[B
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 2484
    :goto_9
    return-object v1

    .line 2477
    :catch_a
    move-exception v0

    .line 2479
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetRand(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2482
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 2483
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetRand(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetSIMType()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2684
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetSIMType()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result v1

    .line 2690
    :goto_9
    return v1

    .line 2685
    :catch_a
    move-exception v0

    .line 2686
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetO2SIMType(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2688
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 2689
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetO2SIMType(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetVolteSipRegFailure()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 420
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetVolteSipRegFailure()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result v1

    .line 429
    :goto_9
    return v1

    .line 422
    :catch_a
    move-exception v0

    .line 424
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetVolteSipRegFailure(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 427
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 428
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetVolteSipRegFailure(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestGetWimaxNai()[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 3924
    :try_start_1
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetWimaxNai"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3925
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetWimaxNai()[Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_31

    move-result-object v1

    .line 3931
    :goto_11
    return-object v1

    .line 3926
    :catch_12
    move-exception v0

    .line 3927
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetWimaxNai remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 3929
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_31
    move-exception v0

    .line 3930
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetWimaxNai null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public requestISIMRead(IIIII)Ljava/lang/String;
    .registers 14
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"

    .prologue
    const/4 v7, 0x0

    .line 2283
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2284
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IHtcTelephony;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 2296
    :goto_14
    return-object v0

    .line 2286
    :cond_15
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->requestISIMRead(IIIII)Ljava/lang/String;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_21} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_21} :catch_2e

    move-result-object v0

    goto :goto_14

    .line 2288
    :catch_23
    move-exception v6

    .line 2290
    .local v6, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "requestISIMRead(): RemoteException"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v7

    .line 2291
    goto :goto_14

    .line 2293
    .end local v6           #ex:Landroid/os/RemoteException;
    :catch_2e
    move-exception v6

    .line 2295
    .local v6, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v7

    .line 2296
    goto :goto_14
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 680
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 689
    :goto_9
    return-object v1

    .line 682
    :catch_a
    move-exception v0

    .line 684
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestImsAkaAuthentication(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 687
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 688
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestImsAkaAuthentication(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public requestLtePermanentlyDetached()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2410
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestLtePermanentlyDetached()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 2414
    :goto_9
    return v1

    .line 2411
    :catch_a
    move-exception v0

    .line 2412
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 2413
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2414
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"

    .prologue
    const/4 v1, 0x0

    .line 328
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephony;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 338
    :goto_9
    return-object v1

    .line 330
    :catch_a
    move-exception v0

    .line 332
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestMD5(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 335
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 337
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public requestQueryISIMSupported()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2262
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2263
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestQueryISIMSupported()Z

    move-result v1

    .line 2275
    :goto_f
    return v1

    .line 2265
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestQueryISIMSupported()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result v1

    goto :goto_f

    .line 2267
    :catch_19
    move-exception v0

    .line 2269
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestQueryISIMSupported(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 2272
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 2274
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public requestResetWSIMState()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2326
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2327
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestResetWSIMState()Z

    move-result v1

    .line 2339
    :goto_f
    return v1

    .line 2329
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestResetWSIMState()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result v1

    goto :goto_f

    .line 2331
    :catch_19
    move-exception v0

    .line 2333
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestResetWSIMState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 2336
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 2338
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "randssd"

    .prologue
    const/4 v1, 0x0

    .line 245
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 255
    :goto_9
    return-object v1

    .line 247
    :catch_a
    move-exception v0

    .line 249
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestSSDUpdate(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 252
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 254
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "authbs"

    .prologue
    const/4 v1, 0x0

    .line 278
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 288
    :goto_9
    return-object v1

    .line 280
    :catch_a
    move-exception v0

    .line 282
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestSSDUpdateConfirm(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 285
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 287
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public requestSetEhrpdDisableCapability(I)V
    .registers 5
    .parameter "ehrpdmode"

    .prologue
    .line 2016
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2017
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetEhrpdDisableCapability(I)V

    .line 2029
    :goto_d
    return-void

    .line 2019
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetEhrpdDisableCapability(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 2021
    :catch_16
    move-exception v0

    .line 2023
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "requestSetEhrpdDisableCapability(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2025
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 2027
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public requestSetFastDormancy(II)V
    .registers 6
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 2425
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetFastDormancy(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_12

    .line 2435
    :goto_7
    return-void

    .line 2427
    :catch_8
    move-exception v0

    .line 2429
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "requestSetFastDormancy(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2431
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 2433
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "command"

    .prologue
    const/4 v1, 0x0

    .line 2304
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2305
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2317
    :goto_f
    return-object v1

    .line 2307
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result-object v1

    goto :goto_f

    .line 2309
    :catch_19
    move-exception v0

    .line 2311
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestSetISIMAUTH(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 2314
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 2316
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public requestSetLBSNTFY(I)V
    .registers 5
    .parameter "lbsvalue"

    .prologue
    .line 2349
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2350
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetLBSNTFY(I)V

    .line 2362
    :goto_d
    return-void

    .line 2352
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetLBSNTFY(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 2354
    :catch_16
    move-exception v0

    .line 2356
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "requestSetLBSNTFY(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2358
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 2360
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public requestSetLocProcessDB(IIIIII[I)V
    .registers 10
    .parameter "index"
    .parameter "rat"
    .parameter "sid"
    .parameter "nid"
    .parameter "base_id"
    .parameter "pilot_pn"
    .parameter "neighbor_pilot_list"

    .prologue
    .line 3889
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "requestSetLocProcessDB is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    return-void
.end method

.method public requestSetLocProcessDB_EXT(IIIIII[I)Z
    .registers 17
    .parameter "index"
    .parameter "rat"
    .parameter "sid"
    .parameter "nid"
    .parameter "base_id"
    .parameter "pilot_pn"
    .parameter "neighbor_pilot_list"

    .prologue
    .line 3845
    :try_start_0
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "requestSetLocProcessDB_EXT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestSetLocProcessDB(IIIIII[I)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_17} :catch_39

    move-result v0

    .line 3852
    :goto_18
    return v0

    .line 3847
    :catch_19
    move-exception v8

    .line 3848
    .local v8, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSetLocProcessDB remote exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    const/4 v0, 0x0

    goto :goto_18

    .line 3850
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_39
    move-exception v8

    .line 3851
    .local v8, ex:Ljava/lang/NullPointerException;
    const-string v0, "HtcTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSetLocProcessDB null pointer exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public requestSetMultiRABTrafficThrottling(II)V
    .registers 6
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 832
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_12

    .line 842
    :goto_7
    return-void

    .line 834
    :catch_8
    move-exception v0

    .line 836
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "requestSetMultiRABTrafficThrottling(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 838
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 840
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7
.end method

.method public requestVPM()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 295
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestVPM()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v1

    .line 305
    :goto_9
    return-object v1

    .line 297
    :catch_a
    move-exception v0

    .line 299
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestVPM(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 302
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 304
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9
.end method

.method public resetPdnForSettingsChange()V
    .registers 4

    .prologue
    .line 1878
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1879
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->resetPdnForSettingsChange()V

    .line 1891
    :goto_d
    return-void

    .line 1881
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->resetPdnForSettingsChange()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 1883
    :catch_16
    move-exception v0

    .line 1885
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "resetPdnForSettingsChange(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1887
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 1889
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public resetPdnForSettingsChange2()V
    .registers 4

    .prologue
    .line 1927
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->resetPdnForSettingsChange2()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_12

    .line 1937
    :goto_7
    return-void

    .line 1929
    :catch_8
    move-exception v0

    .line 1931
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "resetPdnForSettingsChange2(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1933
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 1935
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7
.end method

.method public sendAT_BRIC()V
    .registers 4

    .prologue
    .line 1248
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1249
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->sendAT_BRIC()V

    .line 1261
    :goto_d
    return-void

    .line 1251
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->sendAT_BRIC()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 1253
    :catch_16
    move-exception v0

    .line 1255
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "sendAT_BRIC(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1257
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 1259
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public sendAT_PushMail(II)V
    .registers 6
    .parameter "type"
    .parameter "value"

    .prologue
    .line 1319
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->sendAT_PushMail(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_12

    .line 1325
    :goto_7
    return-void

    .line 1320
    :catch_8
    move-exception v0

    .line 1321
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "sendAT_PushMail(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1322
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 1323
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7
.end method

.method public sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "command"

    .prologue
    const/4 v1, 0x0

    .line 1432
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1433
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1445
    :goto_f
    return-object v1

    .line 1435
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result-object v1

    goto :goto_f

    .line 1437
    :catch_19
    move-exception v0

    .line 1439
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "sendAllowedCSIMCommand(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1442
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 1444
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public sendCmmbAuth3GReq([B[B)[B
    .registers 7
    .parameter "szRAND"
    .parameter "szAUTN"

    .prologue
    const/4 v1, 0x0

    .line 1686
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1687
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->sendCmmbAuth3GReq([B[B)[B

    move-result-object v1

    .line 1699
    :goto_f
    return-object v1

    .line 1689
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendCmmbAuth3GReq([B[B)[B
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result-object v1

    goto :goto_f

    .line 1691
    :catch_19
    move-exception v0

    .line 1693
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "sendCmmbAuth3GReq(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1696
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 1698
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public sendCmmbAuthGSMReq([B)[B
    .registers 6
    .parameter "szRAND"

    .prologue
    const/4 v1, 0x0

    .line 1707
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1708
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendCmmbAuthGSMReq([B)[B

    move-result-object v1

    .line 1720
    :goto_f
    return-object v1

    .line 1710
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->sendCmmbAuthGSMReq([B)[B
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result-object v1

    goto :goto_f

    .line 1712
    :catch_19
    move-exception v0

    .line 1714
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "sendCmmbAuth3GReq(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1717
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 1719
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public sendKddiSmsDeliver([B)Ljava/lang/Object;
    .registers 7
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 3756
    if-eqz p1, :cond_6

    array-length v2, p1

    if-nez v2, :cond_f

    .line 3757
    :cond_6
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "sendKddiSmsDeliver - null or empty data"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3768
    :goto_e
    return-object v1

    .line 3762
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSendKddiSmsDeliver([B)Landroid/os/Bundle;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_16} :catch_37

    move-result-object v1

    goto :goto_e

    .line 3763
    :catch_18
    move-exception v0

    .line 3764
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendKddiSmsDeliver remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3766
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_37
    move-exception v0

    .line 3767
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendKddiSmsDeliver null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public sendLanguageChange(I)V
    .registers 5
    .parameter "languageCode"

    .prologue
    .line 2240
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2241
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendLanguageChange(I)V

    .line 2253
    :goto_d
    return-void

    .line 2243
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->sendLanguageChange(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 2245
    :catch_16
    move-exception v0

    .line 2247
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "sendLanguageChange(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2249
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 2251
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public sendMTRejectMessage(Ljava/lang/String;)Z
    .registers 5
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 3693
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendMTRejectMessage(Ljava/lang/String;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 3697
    :goto_9
    return v1

    .line 3694
    :catch_a
    move-exception v0

    .line 3695
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 3696
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 3697
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public sendMTRejectMessageExt(Ljava/lang/String;I)Z
    .registers 9
    .parameter "number"
    .parameter "phoneType"

    .prologue
    const/4 v3, 0x0

    .line 3704
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3705
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3706
    const-string v4, "arg2"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3707
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string/jumbo v5, "sendMTRejectMessageExt"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3708
    .local v1, bundleResult:Landroid/os/Bundle;
    const-string/jumbo v4, "sendMTRejectMessageExt"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_22} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_22} :catch_26

    move-result v3

    .line 3712
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #bundleResult:Landroid/os/Bundle;
    :goto_23
    return v3

    .line 3709
    :catch_24
    move-exception v2

    .line 3710
    .local v2, ex:Landroid/os/RemoteException;
    goto :goto_23

    .line 3711
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_26
    move-exception v2

    .line 3712
    .local v2, ex:Ljava/lang/NullPointerException;
    goto :goto_23
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .registers 7
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    const/4 v1, 0x0

    .line 1630
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1631
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v1

    .line 1643
    :goto_f
    return v1

    .line 1633
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setCFUNumber(ZLjava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result v1

    goto :goto_f

    .line 1635
    :catch_19
    move-exception v0

    .line 1637
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "setCFUNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1640
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 1642
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public setCdmaSmartNetwork(Z)Z
    .registers 9
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 4200
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4201
    .local v0, bundleArg1:Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4202
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v4

    const-string/jumbo v5, "setCdmaSmartNetwork"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_15} :catch_37

    move-result-object v1

    .line 4205
    .local v1, bundleResult:Landroid/os/Bundle;
    const/4 v3, 0x1

    .line 4211
    .end local v0           #bundleArg1:Landroid/os/Bundle;
    .end local v1           #bundleResult:Landroid/os/Bundle;
    :goto_17
    return v3

    .line 4206
    :catch_18
    move-exception v2

    .line 4207
    .local v2, ex:Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCdmaSmartNetwork remote exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 4209
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_37
    move-exception v2

    .line 4210
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCdmaSmartNetwork null pointer exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"

    .prologue
    .line 2573
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_12

    .line 2583
    :goto_7
    return-void

    .line 2575
    :catch_8
    move-exception v0

    .line 2577
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setGbaBootstrappingParams(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2579
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 2581
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7
.end method

.method public setGlobalDataRoamingOption(I)V
    .registers 6
    .parameter "value"

    .prologue
    .line 811
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->setGlobalDataRoamingOption(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_12

    .line 821
    :goto_7
    return-void

    .line 813
    :catch_8
    move-exception v0

    .line 815
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setGlobalDataRoamingOption(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 817
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 819
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGlobalDataRoamingOption null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public setKddiOtaStatus(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 3742
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setKddiOtaStatus(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_26

    .line 3748
    :goto_7
    return-void

    .line 3743
    :catch_8
    move-exception v0

    .line 3744
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKddiUserAgent remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3745
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_26
    move-exception v0

    .line 3746
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKddiUserAgent null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public setPdnSettings(ILjava/lang/String;)V
    .registers 6
    .parameter "profileSlot"
    .parameter "settings"

    .prologue
    .line 1859
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1860
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->setPdnSettings(ILjava/lang/String;)V

    .line 1872
    :goto_d
    return-void

    .line 1862
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setPdnSettings(ILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 1864
    :catch_16
    move-exception v0

    .line 1866
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setPdnSettings(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1868
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 1870
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public setPdnSettings2([Ljava/lang/String;)V
    .registers 5
    .parameter "profile"

    .prologue
    .line 1913
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setPdnSettings2([Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_12

    .line 1923
    :goto_7
    return-void

    .line 1915
    :catch_8
    move-exception v0

    .line 1917
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setPdnSettings2(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1919
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 1921
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7
.end method

.method public setPowerKeyFlag()V
    .registers 4

    .prologue
    .line 1546
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1547
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->setPowerKeyFlag()V

    .line 1559
    :goto_d
    return-void

    .line 1549
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->setPowerKeyFlag()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 1551
    :catch_16
    move-exception v0

    .line 1553
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setPowerKeyFlag(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1555
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 1557
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public setPreferredNetworkType(I)V
    .registers 5
    .parameter "type"

    .prologue
    .line 1965
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1966
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setPreferredNetworkType(I)V

    .line 1978
    :goto_d
    return-void

    .line 1968
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 1970
    :catch_16
    move-exception v0

    .line 1972
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setPreferredNetworkType(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1974
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 1976
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public setPreferredNetworkType_wifi_call(I)Z
    .registers 5
    .parameter "networkType"

    .prologue
    .line 2699
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setPreferredNetworkType_wifi_call(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_13

    move-result v1

    .line 2706
    :goto_8
    return v1

    .line 2700
    :catch_9
    move-exception v0

    .line 2701
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2706
    .end local v0           #ex:Landroid/os/RemoteException;
    :goto_11
    const/4 v1, 0x0

    goto :goto_8

    .line 2702
    :catch_13
    move-exception v0

    .line 2703
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public setTimeZone(ZI)V
    .registers 6
    .parameter "sign"
    .parameter "offset"

    .prologue
    .line 1297
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1298
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->setTimeZone(ZI)V

    .line 1310
    :goto_d
    return-void

    .line 1300
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setTimeZone(ZI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 1302
    :catch_16
    move-exception v0

    .line 1304
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setTimeZone(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1306
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 1308
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .registers 5
    .parameter "status"

    .prologue
    .line 2121
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2122
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 2134
    :goto_d
    return-void

    .line 2124
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setUSSDVerificationStatus(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 2126
    :catch_16
    move-exception v0

    .line 2128
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setUSSDVerificationStatus(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2130
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 2132
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 2163
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2164
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephony;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    :goto_d
    return-void

    .line 2166
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 2168
    :catch_16
    move-exception v0

    .line 2170
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setUSSDVerificationStrings(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2172
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 2174
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public setVTLoopBackMode(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 1760
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1761
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setVTLoopBackMode(Z)V

    .line 1773
    :goto_d
    return-void

    .line 1763
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVTLoopBackMode(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 1765
    :catch_16
    move-exception v0

    .line 1767
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setVTLoopBackMode(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1769
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 1771
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public setVTSimulatedMode(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 1726
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1727
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setVTSimulatedMode(Z)V

    .line 1739
    :goto_d
    return-void

    .line 1729
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVTSimulatedMode(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 1731
    :catch_16
    move-exception v0

    .line 1733
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setVTSimulatedMode(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1735
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 1737
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public showIncallScreen()V
    .registers 2

    .prologue
    .line 2749
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHtcTelephony;->showIncallScreen()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2753
    :goto_7
    return-void

    .line 2751
    :catch_8
    move-exception v0

    goto :goto_7

    .line 2750
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public supplyPinExt(Ljava/lang/String;I)Z
    .registers 7
    .parameter "pin"
    .parameter "phoneType"

    .prologue
    .line 4038
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "supplyPinExt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->supplyPinExt(Ljava/lang/String;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    .line 4042
    :goto_10
    return v1

    .line 4040
    :catch_11
    move-exception v0

    .line 4041
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supplyPinExt remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public supplyPukExt(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .parameter "puk"
    .parameter "newpin"
    .parameter "phoneType"

    .prologue
    .line 4048
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "supplyPukExt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephony;->supplyPukExt(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    .line 4052
    :goto_10
    return v1

    .line 4050
    :catch_11
    move-exception v0

    .line 4051
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supplyPukExt remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "type"
    .parameter "pin"

    .prologue
    const/4 v1, 0x0

    .line 1134
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1135
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1147
    :goto_f
    return v1

    .line 1137
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_23

    move-result v1

    goto :goto_f

    .line 1139
    :catch_19
    move-exception v0

    .line 1141
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "supplySubsidyLockPin(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1144
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 1146
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f
.end method

.method public switchHoldAndActiveCall()V
    .registers 4

    .prologue
    .line 1524
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1525
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->switchHoldAndActiveCall()V

    .line 1537
    :goto_d
    return-void

    .line 1527
    :cond_e
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->switchHoldAndActiveCall()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_20

    goto :goto_d

    .line 1529
    :catch_16
    move-exception v0

    .line 1531
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "switchHoldAndActiveCall(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1533
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 1535
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 459
    :try_start_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_1b

    move-result-object v0

    .line 469
    :goto_f
    return-object v0

    .line 461
    :catch_10
    move-exception v7

    .line 463
    .local v7, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "transmitIccBasicChannel(): RemoteException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    .line 464
    goto :goto_f

    .line 466
    .end local v7           #ex:Landroid/os/RemoteException;
    :catch_1b
    move-exception v7

    .line 468
    .local v7, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v8

    .line 469
    goto :goto_f
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 17
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 477
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_1c

    move-result-object v0

    .line 487
    :goto_10
    return-object v0

    .line 479
    :catch_11
    move-exception v8

    .line 481
    .local v8, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "transmitIccLogicalChannel(): RemoteException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    const/4 v0, 0x0

    goto :goto_10

    .line 484
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_1c
    move-exception v8

    .line 486
    .local v8, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 487
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .registers 15
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"

    .prologue
    .line 546
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccSimIO(IIIIILjava/lang/String;)[B
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 551
    :goto_e
    return-object v0

    .line 548
    :catch_f
    move-exception v7

    .line 550
    .local v7, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "openIccLogicalChannel(): RemoteException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "puk"
    .parameter "newpin"

    .prologue
    const/4 v1, 0x0

    .line 1090
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1091
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1097
    :goto_f
    return v1

    .line 1093
    :cond_10
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_1b

    move-result v1

    goto :goto_f

    .line 1094
    :catch_19
    move-exception v0

    .line 1095
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_f

    .line 1096
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1097
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_f
.end method

.method public updateRegDregState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 394
    return-void
.end method

.method public updateRegDregState(II)V
    .registers 6
    .parameter "state"
    .parameter "expire"

    .prologue
    .line 380
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->updateRegDregState(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_12

    .line 390
    :goto_7
    return-void

    .line 382
    :catch_8
    move-exception v0

    .line 384
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "updateRegDregState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 386
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 388
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7
.end method

.method public updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "result"
    .parameter "ip"
    .parameter "port"
    .parameter "streamId"

    .prologue
    .line 400
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IHtcTelephony;->updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_12

    .line 410
    :goto_7
    return-void

    .line 402
    :catch_8
    move-exception v0

    .line 404
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "updateSipInviteState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 406
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 408
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7
.end method
