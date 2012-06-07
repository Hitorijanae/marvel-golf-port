.class public Landroid/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final APPENDIX_NONE:I = 0x0

.field public static final APPENDIX_POSTFIX:I = 0x2

.field public static final APPENDIX_PREFIX:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final RADIO_TECHNOLOGY_1xRTT:I = 0x6

.field public static final RADIO_TECHNOLOGY_EDGE:I = 0x2

.field public static final RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final RADIO_TECHNOLOGY_EVDO_0:I = 0x7

.field public static final RADIO_TECHNOLOGY_EVDO_A:I = 0x8

.field public static final RADIO_TECHNOLOGY_EVDO_B:I = 0xc

.field public static final RADIO_TECHNOLOGY_GPRS:I = 0x1

.field public static final RADIO_TECHNOLOGY_HSDPA:I = 0x9

.field public static final RADIO_TECHNOLOGY_HSPA:I = 0xb

.field public static final RADIO_TECHNOLOGY_HSPAP:I = 0xf

.field public static final RADIO_TECHNOLOGY_HSUPA:I = 0xa

.field public static final RADIO_TECHNOLOGY_IS95A:I = 0x4

.field public static final RADIO_TECHNOLOGY_IS95B:I = 0x5

.field public static final RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final RADIO_TECHNOLOGY_UMTS:I = 0x3

.field public static final RADIO_TECHNOLOGY_UNKNOWN:I = 0x0

.field public static final REGISTRATION_STATE_HOME_NETWORK:I = 0x1

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING:I = 0x0

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING:I = 0x2

.field public static final REGISTRATION_STATE_REGISTRATION_DENIED:I = 0x3

.field public static final REGISTRATION_STATE_ROAMING:I = 0x5

.field public static final REGISTRATION_STATE_UNKNOWN:I = 0x4

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_NETWORK_SEARCHING:I = 0x4

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3


# instance fields
.field private mAppendixType:I

.field private mCdmaDefaultRoamingIndicator:I

.field private mCdmaEriIconIndex:I

.field private mCdmaEriIconMode:I

.field private mCdmaRoamingIndicator:I

.field private mCssIndicator:Z

.field private mGPRSState:I

.field private mHtcCdmaRadioPowerSaveMode:Z

.field private mIsEmergencyOnly:Z

.field private mIsManualNetworkSelection:Z

.field private mNetworkId:I

.field private mNetworkType:I

.field private mOperatorAlphaLong:Ljava/lang/String;

.field private mOperatorAlphaShort:Ljava/lang/String;

.field private mOperatorNumeric:Ljava/lang/String;

.field private mPhoneType:I

.field private mRadioTechnology:I

.field private mRoaming:Z

.field private mState:I

.field private mSystemId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 294
    new-instance v0, Landroid/telephony/ServiceState$1;

    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 193
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput v0, p0, Landroid/telephony/ServiceState;->mPhoneType:I

    .line 134
    iput v1, p0, Landroid/telephony/ServiceState;->mState:I

    .line 136
    iput v1, p0, Landroid/telephony/ServiceState;->mGPRSState:I

    .line 153
    iput v0, p0, Landroid/telephony/ServiceState;->mAppendixType:I

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput v2, p0, Landroid/telephony/ServiceState;->mPhoneType:I

    .line 134
    iput v1, p0, Landroid/telephony/ServiceState;->mState:I

    .line 136
    iput v1, p0, Landroid/telephony/ServiceState;->mGPRSState:I

    .line 153
    iput v2, p0, Landroid/telephony/ServiceState;->mAppendixType:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mState:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_86

    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_88

    move v0, v1

    :goto_35
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8a

    move v0, v1

    :goto_44
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8c

    move v0, v1

    :goto_71
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8e

    :goto_79
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mHtcCdmaRadioPowerSaveMode:Z

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mGPRSState:I

    .line 261
    iget v0, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkType:I

    .line 262
    return-void

    :cond_86
    move v0, v2

    .line 239
    goto :goto_1a

    :cond_88
    move v0, v2

    .line 243
    goto :goto_35

    :cond_8a
    move v0, v2

    .line 245
    goto :goto_44

    :cond_8c
    move v0, v2

    .line 252
    goto :goto_71

    :cond_8e
    move v1, v2

    .line 256
    goto :goto_79
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .registers 4
    .parameter "s"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 201
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput v0, p0, Landroid/telephony/ServiceState;->mPhoneType:I

    .line 134
    iput v1, p0, Landroid/telephony/ServiceState;->mState:I

    .line 136
    iput v1, p0, Landroid/telephony/ServiceState;->mGPRSState:I

    .line 153
    iput v0, p0, Landroid/telephony/ServiceState;->mAppendixType:I

    .line 202
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 203
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 670
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private static getOperatorAlphaFromDatabase(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4
    .parameter "numeric"
    .parameter "context"
    .parameter "getLong"

    .prologue
    .line 906
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOperatorAlphaLong(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "numeric"
    .parameter "context"

    .prologue
    .line 845
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOperatorAlphaShort(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "numeric"
    .parameter "context"

    .prologue
    .line 841
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .registers 2
    .parameter "m"

    .prologue
    .line 185
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 186
    .local v0, ret:Landroid/telephony/ServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 187
    return-object v0
.end method

.method public static radioTechnologyToString(I)Ljava/lang/String;
    .registers 5
    .parameter "rt"

    .prologue
    .line 479
    packed-switch p0, :pswitch_data_4e

    .line 529
    const-string v0, "Unexpected"

    .line 530
    .local v0, rtString:Ljava/lang/String;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected radioTechnology="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_1d
    return-object v0

    .line 481
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_1e
    const-string v0, "Unknown"

    .line 482
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 484
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_21
    const-string v0, "GPRS"

    .line 485
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 487
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_24
    const-string v0, "EDGE"

    .line 488
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 490
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_27
    const-string v0, "UMTS"

    .line 491
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 493
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_2a
    const-string v0, "CDMA-IS95A"

    .line 494
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 496
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_2d
    const-string v0, "CDMA-IS95B"

    .line 497
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 499
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_30
    const-string v0, "1xRTT"

    .line 500
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 502
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_33
    const-string v0, "EvDo-rev.0"

    .line 503
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 505
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_36
    const-string v0, "EvDo-rev.A"

    .line 506
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 508
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_39
    const-string v0, "HSDPA"

    .line 509
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 511
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_3c
    const-string v0, "HSUPA"

    .line 512
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 514
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_3f
    const-string v0, "HSPA"

    .line 515
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 517
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_42
    const-string v0, "EvDo-rev.B"

    .line 518
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 520
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_45
    const-string v0, "eHRPD"

    .line 521
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 523
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_48
    const-string v0, "LTE"

    .line 524
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 526
    .end local v0           #rtString:Ljava/lang/String;
    :pswitch_4b
    const-string v0, "HSPAP"

    .line 527
    .restart local v0       #rtString:Ljava/lang/String;
    goto :goto_1d

    .line 479
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
    .end packed-switch
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 3
    .parameter "m"

    .prologue
    .line 680
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mState:I

    .line 681
    const-string/jumbo v0, "roaming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 682
    const-string/jumbo v0, "operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 683
    const-string/jumbo v0, "operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 684
    const-string/jumbo v0, "operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 685
    const-string/jumbo v0, "manual"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 686
    const-string/jumbo v0, "radioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    .line 687
    const-string v0, "cssIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 688
    const-string/jumbo v0, "networkId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 689
    const-string/jumbo v0, "systemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 690
    const-string v0, "cdmaRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 691
    const-string v0, "cdmaDefaultRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 692
    const-string v0, "emergencyOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 697
    const-string v0, "cdmaEriIconIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 698
    const-string v0, "cdmaEriIconMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 699
    const-string/jumbo v0, "htcCdmaRadioPowerSaveMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mHtcCdmaRadioPowerSaveMode:Z

    .line 702
    const-string v0, "gprsstate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mGPRSState:I

    .line 704
    iget v0, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkType:I

    .line 705
    return-void
.end method

.method private setNullState(I)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 564
    iput p1, p0, Landroid/telephony/ServiceState;->mState:I

    .line 565
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 566
    iput-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 567
    iput-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 568
    iput-object v2, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 569
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 570
    iput v1, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    .line 571
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 572
    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 573
    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 574
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 575
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 576
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 577
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 578
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 582
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mHtcCdmaRadioPowerSaveMode:Z

    .line 585
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mGPRSState:I

    .line 587
    iput v1, p0, Landroid/telephony/ServiceState;->mNetworkType:I

    .line 588
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/ServiceState;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 206
    iget v0, p1, Landroid/telephony/ServiceState;->mState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mState:I

    .line 207
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mRoaming:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 208
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 209
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 210
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 211
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 212
    iget v0, p1, Landroid/telephony/ServiceState;->mRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    .line 213
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 214
    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 215
    iget v0, p1, Landroid/telephony/ServiceState;->mSystemId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 216
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 217
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 218
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 219
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 220
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 224
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mHtcCdmaRadioPowerSaveMode:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mHtcCdmaRadioPowerSaveMode:Z

    .line 227
    iget v0, p1, Landroid/telephony/ServiceState;->mGPRSState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mGPRSState:I

    .line 230
    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkType:I

    .line 232
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 430
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/ServiceState;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    .line 435
    .local v2, s:Landroid/telephony/ServiceState;
    if-nez p1, :cond_a

    .line 439
    .end local v2           #s:Landroid/telephony/ServiceState;
    :cond_7
    :goto_7
    return v3

    .line 431
    :catch_8
    move-exception v1

    .line 432
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_7

    .line 439
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/ServiceState;
    :cond_a
    iget v4, p0, Landroid/telephony/ServiceState;->mState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mState:I

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mRoaming:Z

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mHtcCdmaRadioPowerSaveMode:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mHtcCdmaRadioPowerSaveMode:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mGPRSState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mGPRSState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v3, 0x1

    goto/16 :goto_7
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .parameter "m"

    .prologue
    .line 714
    const-string/jumbo v0, "state"

    iget v1, p0, Landroid/telephony/ServiceState;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 715
    const-string/jumbo v0, "roaming"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 716
    const-string/jumbo v0, "operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string/jumbo v0, "operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string/jumbo v0, "operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string/jumbo v0, "manual"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 720
    const-string/jumbo v0, "radioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 721
    const-string v0, "cssIndicator"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 722
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 724
    const-string v0, "cdmaRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 725
    const-string v0, "cdmaDefaultRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 726
    const-string v0, "emergencyOnly"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 731
    const-string v0, "cdmaEriIconIndex"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 732
    const-string v0, "cdmaEriIconMode"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 733
    const-string/jumbo v0, "htcCdmaRadioPowerSaveMode"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mHtcCdmaRadioPowerSaveMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 736
    const-string v0, "gprsstate"

    iget v1, p0, Landroid/telephony/ServiceState;->mGPRSState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 738
    return-void
.end method

.method public getAppendixType()I
    .registers 2

    .prologue
    .line 816
    iget v0, p0, Landroid/telephony/ServiceState;->mAppendixType:I

    return v0
.end method

.method public getCdmaDefaultRoamingIndicator()I
    .registers 2

    .prologue
    .line 347
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .registers 2

    .prologue
    .line 354
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode()I
    .registers 2

    .prologue
    .line 361
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    return v0
.end method

.method public getCdmaRoamingIndicator()I
    .registers 2

    .prologue
    .line 340
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    return v0
.end method

.method public getCssIndicator()I
    .registers 2

    .prologue
    .line 765
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getGPRSState()I
    .registers 2

    .prologue
    .line 828
    iget v0, p0, Landroid/telephony/ServiceState;->mGPRSState:I

    return v0
.end method

.method public getIsManualSelection()Z
    .registers 2

    .prologue
    .line 409
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    return v0
.end method

.method public getNetworkId()I
    .registers 2

    .prologue
    .line 770
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    return v0
.end method

.method public getNetwrorkType()I
    .registers 2

    .prologue
    .line 803
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkType:I

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .registers 2

    .prologue
    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public getRadioTechnology()I
    .registers 2

    .prologue
    .line 760
    iget v0, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    return v0
.end method

.method public getRoaming()Z
    .registers 2

    .prologue
    .line 326
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Landroid/telephony/ServiceState;->mState:I

    return v0
.end method

.method public getSystemId()I
    .registers 2

    .prologue
    .line 775
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    iget v0, p0, Landroid/telephony/ServiceState;->mState:I

    mul-int/lit16 v3, v0, 0x1234

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    if-eqz v0, :cond_30

    move v0, v1

    :goto_b
    add-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v0, :cond_32

    move v0, v1

    :goto_11
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    if-nez v0, :cond_34

    move v0, v2

    :goto_17
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    if-nez v0, :cond_3b

    move v0, v2

    :goto_1d
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_42

    move v0, v2

    :goto_23
    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    add-int/2addr v0, v3

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v3, :cond_49

    :goto_2e
    add-int/2addr v0, v1

    return v0

    :cond_30
    move v0, v2

    goto :goto_b

    :cond_32
    move v0, v2

    goto :goto_11

    :cond_34
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_17

    :cond_3b
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1d

    :cond_42
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_23

    :cond_49
    move v1, v2

    goto :goto_2e
.end method

.method public htcGetCdmaRadioPowerSaveMode()Z
    .registers 2

    .prologue
    .line 785
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mHtcCdmaRadioPowerSaveMode:Z

    return v0
.end method

.method public htcSetCdmaRadioPowerSaveMode(Z)V
    .registers 2
    .parameter "isPoweSaveMode"

    .prologue
    .line 781
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mHtcCdmaRadioPowerSaveMode:Z

    .line 782
    return-void
.end method

.method public isEmergencyOnly()Z
    .registers 2

    .prologue
    .line 333
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return v0
.end method

.method public setAppendixType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 812
    iput p1, p0, Landroid/telephony/ServiceState;->mAppendixType:I

    .line 813
    return-void
.end method

.method public setCdmaDefaultRoamingIndicator(I)V
    .registers 2
    .parameter "roaming"

    .prologue
    .line 625
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 626
    return-void
.end method

.method public setCdmaEriIconIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 632
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 633
    return-void
.end method

.method public setCdmaEriIconMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 639
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 640
    return-void
.end method

.method public setCdmaRoamingIndicator(I)V
    .registers 2
    .parameter "roaming"

    .prologue
    .line 618
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 619
    return-void
.end method

.method public setCssIndicator(I)V
    .registers 3
    .parameter "css"

    .prologue
    .line 749
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 750
    return-void

    .line 749
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setEmergencyOnly(Z)V
    .registers 2
    .parameter "emergencyOnly"

    .prologue
    .line 611
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 612
    return-void
.end method

.method public setGPRSState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 822
    iput p1, p0, Landroid/telephony/ServiceState;->mGPRSState:I

    .line 823
    return-void
.end method

.method public setIsManualSelection(Z)V
    .registers 2
    .parameter "isManual"

    .prologue
    .line 659
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 660
    return-void
.end method

.method public setNetworkType(I)V
    .registers 2
    .parameter "networkType"

    .prologue
    .line 794
    iput p1, p0, Landroid/telephony/ServiceState;->mNetworkType:I

    .line 795
    iput p1, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    .line 796
    return-void
.end method

.method public setOperatorAlphaLong(Ljava/lang/String;)V
    .registers 2
    .parameter "longName"

    .prologue
    .line 655
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 656
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "longName"
    .parameter "shortName"
    .parameter "numeric"

    .prologue
    .line 643
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 644
    iput-object p2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 645
    iput-object p3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 646
    return-void
.end method

.method public setPhoneType(I)V
    .registers 2
    .parameter "phoneType"

    .prologue
    .line 834
    iput p1, p0, Landroid/telephony/ServiceState;->mPhoneType:I

    .line 835
    return-void
.end method

.method public setRadioTechnology(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 743
    iput p1, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    .line 744
    iput p1, p0, Landroid/telephony/ServiceState;->mNetworkType:I

    .line 745
    return-void
.end method

.method public setRoaming(Z)V
    .registers 2
    .parameter "roaming"

    .prologue
    .line 603
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 604
    return-void
.end method

.method public setState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 599
    iput p1, p0, Landroid/telephony/ServiceState;->mState:I

    .line 600
    return-void
.end method

.method public setStateOff()V
    .registers 2

    .prologue
    .line 595
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    .line 596
    return-void
.end method

.method public setStateOutOfService()V
    .registers 2

    .prologue
    .line 591
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    .line 592
    return-void
.end method

.method public setSystemAndNetworkId(II)V
    .registers 3
    .parameter "systemId"
    .parameter "networkId"

    .prologue
    .line 754
    iput p1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 755
    iput p2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 756
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 541
    iget v1, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, radioTechnology:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/telephony/ServiceState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    if-eqz v1, :cond_d5

    const-string/jumbo v1, "roaming"

    :goto_1e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v1, :cond_da

    const-string v1, "(manual)"

    :goto_52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v1, :cond_de

    const-string v1, "CSS supported"

    :goto_6c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RoamInd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DefRoamInd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EriInd= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EriMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RadioPowerSv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mHtcCdmaRadioPowerSaveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EmergOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d5
    const-string/jumbo v1, "home"

    goto/16 :goto_1e

    :cond_da
    const-string v1, ""

    goto/16 :goto_52

    :cond_de
    const-string v1, "CSS not supported"

    goto :goto_6c
.end method

.method public updateOperatorAlpha(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 849
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    iget v0, p0, Landroid/telephony/ServiceState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    if-eqz v0, :cond_66

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v0, :cond_68

    move v0, v1

    :goto_23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget v0, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_6a

    move v0, v1

    :goto_30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v0, :cond_6c

    move v0, v1

    :goto_56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mHtcCdmaRadioPowerSaveMode:Z

    if-eqz v0, :cond_6e

    :goto_5d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v0, p0, Landroid/telephony/ServiceState;->mGPRSState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    return-void

    :cond_66
    move v0, v2

    .line 266
    goto :goto_c

    :cond_68
    move v0, v2

    .line 270
    goto :goto_23

    :cond_6a
    move v0, v2

    .line 272
    goto :goto_30

    :cond_6c
    move v0, v2

    .line 279
    goto :goto_56

    :cond_6e
    move v1, v2

    .line 283
    goto :goto_5d
.end method
