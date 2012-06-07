.class public Landroid/provider/Telephony$Carriers;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Carriers"
.end annotation


# static fields
.field public static final APN:Ljava/lang/String; = "apn"

.field public static final AREA:Ljava/lang/String; = "area"

.field public static final AUTH_TYPE:Ljava/lang/String; = "authtype"

.field public static final BEARER:Ljava/lang/String; = "bearer"

.field public static final CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field public static final CDMA_CONTENT_URI:Landroid/net/Uri; = null

.field public static final CLASS:Ljava/lang/String; = "class"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CURRENT:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CURRENT_CDMA:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CURRENT_GSM:Landroid/net/Uri; = null

.field public static final CONTENT_URI_PREFERAPN:Landroid/net/Uri; = null

.field public static final CONTENT_URI_PREFERAPN_CDMA:Landroid/net/Uri; = null

.field public static final CONTENT_URI_PREFERAPN_GSM:Landroid/net/Uri; = null

.field public static final CURRENT:Ljava/lang/String; = "current"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_APN_ROAMING:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FLAG_APN_DISPATCH_MODE:Z = false

.field public static final INACTIVE_TIMER:Ljava/lang/String; = "inactivetimer"

.field public static final INSERT_BY:Ljava/lang/String; = "insert_by"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MMSC:Ljava/lang/String; = "mmsc"

.field public static final MMSPORT:Ljava/lang/String; = "mmsport"

.field public static final MMSPROTOCOL:Ljava/lang/String; = "mmsprotocol"

.field public static final MMSPROXY:Ljava/lang/String; = "mmsproxy"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMERIC:Ljava/lang/String; = "numeric"

.field public static final OPERATOR:Ljava/lang/String; = "operator"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROXY:Ljava/lang/String; = "proxy"

.field public static final ROAMING_PROTOCOL:Ljava/lang/String; = "roaming_protocol"

.field public static final SERVER:Ljava/lang/String; = "server"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final USER:Ljava/lang/String; = "user"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2859
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x70

    if-ne v0, v3, :cond_5a

    move v0, v1

    :goto_9
    sput-boolean v0, Landroid/provider/Telephony$Carriers;->FLAG_APN_DISPATCH_MODE:Z

    .line 2868
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 2872
    const-string v0, "content://telephony/carriers/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_CURRENT:Landroid/net/Uri;

    .line 2875
    const-string v0, "content://telephony/carriers/current_gsm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_CURRENT_GSM:Landroid/net/Uri;

    .line 2878
    const-string v0, "content://telephony/carriers/current_cdma"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_CURRENT_CDMA:Landroid/net/Uri;

    .line 2881
    const-string v0, "content://telephony/carriers-preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_PREFERAPN:Landroid/net/Uri;

    .line 2884
    const-string v0, "content://telephony/carriers-preferapn-gsm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_PREFERAPN_GSM:Landroid/net/Uri;

    .line 2887
    const-string v0, "content://telephony/carriers-preferapn-cdma"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_PREFERAPN_CDMA:Landroid/net/Uri;

    .line 2897
    const-string v0, "content://cdmaapn/carriers/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CDMA_CONTENT_URI:Landroid/net/Uri;

    .line 2982
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-ne v0, v3, :cond_5c

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_5c

    :goto_57
    sput-boolean v1, Landroid/provider/Telephony$Carriers;->FEATURE_APN_ROAMING:Z

    return-void

    :cond_5a
    move v0, v2

    .line 2859
    goto :goto_9

    :cond_5c
    move v1, v2

    .line 2982
    goto :goto_57
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apnAreaCheck(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 2989
    const-string v0, ""

    .line 2990
    .local v0, result:Ljava/lang/String;
    sget-boolean v2, Landroid/provider/Telephony$Carriers;->FEATURE_APN_ROAMING:Z

    if-eqz v2, :cond_17

    .line 2991
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2992
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2993
    const-string v0, " AND area = \'roaming\'"

    .line 2998
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_17
    :goto_17
    return-object v0

    .line 2995
    .restart local v1       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_18
    const-string v0, " AND area = \'domestic\'"

    goto :goto_17
.end method
