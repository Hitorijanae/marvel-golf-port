.class public final Lcom/htc/utils/sys/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter "ctx"

    .prologue
    .line 24
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 25
    .local v5, tm:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 26
    .local v3, strUUID:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, strIMEI:Ljava/lang/String;
    if-eqz v2, :cond_40

    .line 32
    :goto_10
    const-string/jumbo v6, "ro.serialno"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, deviceSN:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_62

    .line 41
    :cond_25
    invoke-static {}, Lcom/htc/utils/sys/DeviceInfo;->isLessThenSense3_5()Z

    move-result v6

    if-eqz v6, :cond_43

    const-string v4, ""

    .line 44
    .local v4, thirdParameter:Ljava/lang/String;
    :goto_2d
    :try_start_2d
    invoke-static {v0, v2, v4}, Lcom/htc/utils/sys/UUIDConverter;->createHandsetUUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_56
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_34} :catch_47

    move-result-object v3

    .line 53
    if-nez v3, :cond_3f

    .line 54
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    .end local v4           #thirdParameter:Ljava/lang/String;
    :cond_3f
    :goto_3f
    return-object v3

    .line 29
    .end local v0           #deviceSN:Ljava/lang/String;
    :cond_40
    const-string v2, ""

    goto :goto_10

    .line 41
    .restart local v0       #deviceSN:Ljava/lang/String;
    :cond_43
    const-string/jumbo v4, "tellhtc_sense3.5"

    goto :goto_2d

    .line 47
    .restart local v4       #thirdParameter:Ljava/lang/String;
    :catch_47
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    :try_start_48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_56

    .line 53
    if-nez v3, :cond_3f

    .line 54
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3f

    .line 53
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_56
    move-exception v6

    if-nez v3, :cond_61

    .line 54
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    :cond_61
    throw v6

    .line 60
    .end local v4           #thirdParameter:Ljava/lang/String;
    :cond_62
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3f
.end method

.method private static isLessThenSense3_5()Z
    .registers 2

    .prologue
    .line 67
    const-string/jumbo v0, "none"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "1.6"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "2.0"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "2.1"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "3.0"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_33
    const/4 v0, 0x1

    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method
