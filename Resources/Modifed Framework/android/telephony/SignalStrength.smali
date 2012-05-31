.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID_SNR:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 229
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 94
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 95
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 96
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 97
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 98
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 99
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 100
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 101
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 102
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 103
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 104
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 106
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .registers 14
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 119
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 120
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 121
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 122
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 123
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 124
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 125
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 126
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 127
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 128
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 129
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 130
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 131
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .registers 23
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"

    .prologue
    .line 142
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const v11, 0x7fffffff

    const/4 v12, -0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    :goto_52
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 196
    return-void

    .line 195
    :cond_55
    const/4 v0, 0x0

    goto :goto_52
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 156
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 739
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .registers 2
    .parameter "m"

    .prologue
    .line 82
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 83
    .local v0, ret:Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 84
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 3
    .parameter "m"

    .prologue
    .line 698
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 699
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 700
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 701
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 702
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 703
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 704
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 705
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 706
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 707
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 708
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 709
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 710
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 711
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 162
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 163
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 164
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 165
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 166
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 167
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 168
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 169
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 170
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 171
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 172
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 173
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 174
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 175
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 646
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    .line 651
    .local v2, s:Landroid/telephony/SignalStrength;
    if-nez p1, :cond_a

    .line 655
    .end local v2           #s:Landroid/telephony/SignalStrength;
    :cond_7
    :goto_7
    return v3

    .line 647
    :catch_8
    move-exception v1

    .line 648
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_7

    .line 655
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/SignalStrength;
    :cond_a
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_7

    const/4 v3, 0x1

    goto :goto_7
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .parameter "m"

    .prologue
    .line 720
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 721
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 722
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 724
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 725
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 726
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 727
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 728
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 730
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 731
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 732
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 733
    return-void
.end method

.method public getAsuLevel()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 332
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1f

    .line 333
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v3, v4, :cond_1a

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v4, :cond_1a

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v3, v4, :cond_1a

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v3, v4, :cond_1a

    .line 337
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 356
    .local v0, asuLevel:I
    :goto_19
    return v0

    .line 339
    .end local v0           #asuLevel:I
    :cond_1a
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_19

    .line 342
    .end local v0           #asuLevel:I
    :cond_1f
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 343
    .local v1, cdmaAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 344
    .local v2, evdoAsuLevel:I
    if-nez v2, :cond_2b

    .line 346
    move v0, v1

    .restart local v0       #asuLevel:I
    goto :goto_19

    .line 347
    .end local v0           #asuLevel:I
    :cond_2b
    if-nez v1, :cond_2f

    .line 349
    move v0, v2

    .restart local v0       #asuLevel:I
    goto :goto_19

    .line 352
    .end local v0           #asuLevel:I
    :cond_2f
    if-ge v1, v2, :cond_33

    move v0, v1

    .restart local v0       #asuLevel:I
    :goto_32
    goto :goto_19

    .end local v0           #asuLevel:I
    :cond_33
    move v0, v2

    goto :goto_32
.end method

.method public getCdmaAsuLevel()I
    .registers 9

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 474
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 475
    .local v1, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 479
    .local v2, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_1a

    const/16 v0, 0x10

    .line 487
    .local v0, cdmaAsuLevel:I
    :goto_12
    if-lt v2, v7, :cond_32

    const/16 v3, 0x10

    .line 494
    .local v3, ecioAsuLevel:I
    :goto_16
    if-ge v0, v3, :cond_4c

    move v4, v0

    .line 496
    .local v4, level:I
    :goto_19
    return v4

    .line 480
    .end local v0           #cdmaAsuLevel:I
    .end local v3           #ecioAsuLevel:I
    .end local v4           #level:I
    :cond_1a
    const/16 v5, -0x52

    if-lt v1, v5, :cond_21

    const/16 v0, 0x8

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_12

    .line 481
    .end local v0           #cdmaAsuLevel:I
    :cond_21
    if-lt v1, v7, :cond_25

    const/4 v0, 0x4

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_12

    .line 482
    .end local v0           #cdmaAsuLevel:I
    :cond_25
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_2b

    const/4 v0, 0x2

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_12

    .line 483
    .end local v0           #cdmaAsuLevel:I
    :cond_2b
    if-lt v1, v6, :cond_2f

    const/4 v0, 0x1

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_12

    .line 484
    .end local v0           #cdmaAsuLevel:I
    :cond_2f
    const/16 v0, 0x63

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_12

    .line 488
    :cond_32
    if-lt v2, v6, :cond_37

    const/16 v3, 0x8

    .restart local v3       #ecioAsuLevel:I
    goto :goto_16

    .line 489
    .end local v3           #ecioAsuLevel:I
    :cond_37
    const/16 v5, -0x73

    if-lt v2, v5, :cond_3d

    const/4 v3, 0x4

    .restart local v3       #ecioAsuLevel:I
    goto :goto_16

    .line 490
    .end local v3           #ecioAsuLevel:I
    :cond_3d
    const/16 v5, -0x82

    if-lt v2, v5, :cond_43

    const/4 v3, 0x2

    .restart local v3       #ecioAsuLevel:I
    goto :goto_16

    .line 491
    .end local v3           #ecioAsuLevel:I
    :cond_43
    const/16 v5, -0x96

    if-lt v2, v5, :cond_49

    const/4 v3, 0x1

    .restart local v3       #ecioAsuLevel:I
    goto :goto_16

    .line 492
    .end local v3           #ecioAsuLevel:I
    :cond_49
    const/16 v3, 0x63

    .restart local v3       #ecioAsuLevel:I
    goto :goto_16

    :cond_4c
    move v4, v3

    .line 494
    goto :goto_19
.end method

.method public getCdmaDbm()I
    .registers 2

    .prologue
    .line 257
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .registers 8

    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 446
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 450
    .local v1, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_26

    const/4 v3, 0x4

    .line 457
    .local v3, levelDbm:I
    :goto_d
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_3a

    const/4 v4, 0x4

    .line 463
    .local v4, levelEcio:I
    :goto_12
    if-lt v3, v4, :cond_24

    const-string/jumbo v5, "ro.ril.samsung_cdma"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    :cond_24
    move v2, v3

    .line 465
    .local v2, level:I
    :goto_25
    return v2

    .line 451
    .end local v2           #level:I
    .end local v3           #levelDbm:I
    .end local v4           #levelEcio:I
    :cond_26
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2c

    const/4 v3, 0x3

    .restart local v3       #levelDbm:I
    goto :goto_d

    .line 452
    .end local v3           #levelDbm:I
    :cond_2c
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_32

    const/4 v3, 0x2

    .restart local v3       #levelDbm:I
    goto :goto_d

    .line 453
    .end local v3           #levelDbm:I
    :cond_32
    const/16 v5, -0x64

    if-lt v0, v5, :cond_38

    const/4 v3, 0x1

    .restart local v3       #levelDbm:I
    goto :goto_d

    .line 454
    .end local v3           #levelDbm:I
    :cond_38
    const/4 v3, 0x0

    .restart local v3       #levelDbm:I
    goto :goto_d

    .line 458
    :cond_3a
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_40

    const/4 v4, 0x3

    .restart local v4       #levelEcio:I
    goto :goto_12

    .line 459
    .end local v4           #levelEcio:I
    :cond_40
    const/16 v5, -0x82

    if-lt v1, v5, :cond_46

    const/4 v4, 0x2

    .restart local v4       #levelEcio:I
    goto :goto_12

    .line 460
    .end local v4           #levelEcio:I
    :cond_46
    const/16 v5, -0x96

    if-lt v1, v5, :cond_4c

    const/4 v4, 0x1

    .restart local v4       #levelEcio:I
    goto :goto_12

    .line 461
    .end local v4           #levelEcio:I
    :cond_4c
    const/4 v4, 0x0

    .restart local v4       #levelEcio:I
    goto :goto_12

    :cond_4e
    move v2, v4

    .line 463
    goto :goto_25
.end method

.method public getDbm()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 367
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 368
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v1, v2, :cond_1c

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v1, v2, :cond_1c

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v1, v2, :cond_1c

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v1, v2, :cond_1c

    .line 372
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    .line 380
    .local v0, dBm:I
    :goto_1b
    return v0

    .line 374
    .end local v0           #dBm:I
    :cond_1c
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_1b

    .line 377
    .end local v0           #dBm:I
    :cond_21
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_1b
.end method

.method public getEvdoAsuLevel()I
    .registers 7

    .prologue
    .line 533
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 534
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 538
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_17

    const/16 v3, 0x10

    .line 545
    .local v3, levelEvdoDbm:I
    :goto_e
    const/4 v5, 0x7

    if-lt v1, v5, :cond_33

    const/16 v4, 0x10

    .line 552
    .local v4, levelEvdoSnr:I
    :goto_13
    if-ge v3, v4, :cond_4b

    move v2, v3

    .line 554
    .local v2, level:I
    :goto_16
    return v2

    .line 539
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_17
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1e

    const/16 v3, 0x8

    .restart local v3       #levelEvdoDbm:I
    goto :goto_e

    .line 540
    .end local v3           #levelEvdoDbm:I
    :cond_1e
    const/16 v5, -0x55

    if-lt v0, v5, :cond_24

    const/4 v3, 0x4

    .restart local v3       #levelEvdoDbm:I
    goto :goto_e

    .line 541
    .end local v3           #levelEvdoDbm:I
    :cond_24
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2a

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_e

    .line 542
    .end local v3           #levelEvdoDbm:I
    :cond_2a
    const/16 v5, -0x69

    if-lt v0, v5, :cond_30

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_e

    .line 543
    .end local v3           #levelEvdoDbm:I
    :cond_30
    const/16 v3, 0x63

    .restart local v3       #levelEvdoDbm:I
    goto :goto_e

    .line 546
    :cond_33
    const/4 v5, 0x6

    if-lt v1, v5, :cond_39

    const/16 v4, 0x8

    .restart local v4       #levelEvdoSnr:I
    goto :goto_13

    .line 547
    .end local v4           #levelEvdoSnr:I
    :cond_39
    const/4 v5, 0x5

    if-lt v1, v5, :cond_3e

    const/4 v4, 0x4

    .restart local v4       #levelEvdoSnr:I
    goto :goto_13

    .line 548
    .end local v4           #levelEvdoSnr:I
    :cond_3e
    const/4 v5, 0x3

    if-lt v1, v5, :cond_43

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_13

    .line 549
    .end local v4           #levelEvdoSnr:I
    :cond_43
    const/4 v5, 0x1

    if-lt v1, v5, :cond_48

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_13

    .line 550
    .end local v4           #levelEvdoSnr:I
    :cond_48
    const/16 v4, 0x63

    .restart local v4       #levelEvdoSnr:I
    goto :goto_13

    :cond_4b
    move v2, v4

    .line 552
    goto :goto_16
.end method

.method public getEvdoDbm()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .registers 2

    .prologue
    .line 278
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .registers 7

    .prologue
    .line 505
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 506
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 510
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_15

    const/4 v3, 0x4

    .line 516
    .local v3, levelEvdoDbm:I
    :goto_d
    const/4 v5, 0x7

    if-lt v1, v5, :cond_29

    const/4 v4, 0x4

    .line 522
    .local v4, levelEvdoSnr:I
    :goto_11
    if-ge v3, v4, :cond_3a

    move v2, v3

    .line 524
    .local v2, level:I
    :goto_14
    return v2

    .line 511
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_15
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1b

    const/4 v3, 0x3

    .restart local v3       #levelEvdoDbm:I
    goto :goto_d

    .line 512
    .end local v3           #levelEvdoDbm:I
    :cond_1b
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_21

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_d

    .line 513
    .end local v3           #levelEvdoDbm:I
    :cond_21
    const/16 v5, -0x69

    if-lt v0, v5, :cond_27

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_d

    .line 514
    .end local v3           #levelEvdoDbm:I
    :cond_27
    const/4 v3, 0x0

    .restart local v3       #levelEvdoDbm:I
    goto :goto_d

    .line 517
    :cond_29
    const/4 v5, 0x5

    if-lt v1, v5, :cond_2e

    const/4 v4, 0x3

    .restart local v4       #levelEvdoSnr:I
    goto :goto_11

    .line 518
    .end local v4           #levelEvdoSnr:I
    :cond_2e
    const/4 v5, 0x3

    if-lt v1, v5, :cond_33

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_11

    .line 519
    .end local v4           #levelEvdoSnr:I
    :cond_33
    const/4 v5, 0x1

    if-lt v1, v5, :cond_38

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_11

    .line 520
    .end local v4           #levelEvdoSnr:I
    :cond_38
    const/4 v4, 0x0

    .restart local v4       #levelEvdoSnr:I
    goto :goto_11

    :cond_3a
    move v2, v4

    .line 522
    goto :goto_14
.end method

.method public getEvdoSnr()I
    .registers 2

    .prologue
    .line 285
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .registers 2

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 436
    .local v0, level:I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 391
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 392
    .local v2, gsmSignalStrength:I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_11

    move v0, v3

    .line 393
    .local v0, asu:I
    :goto_a
    if-eq v0, v3, :cond_13

    .line 394
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 399
    .local v1, dBm:I
    :goto_10
    return v1

    .end local v0           #asu:I
    .end local v1           #dBm:I
    :cond_11
    move v0, v2

    .line 392
    goto :goto_a

    .line 396
    .restart local v0       #asu:I
    :cond_13
    const/4 v1, -0x1

    .restart local v1       #dBm:I
    goto :goto_10
.end method

.method public getGsmLevel()I
    .registers 4

    .prologue
    .line 414
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 415
    .local v0, asu:I
    const/4 v2, 0x2

    if-le v0, v2, :cond_b

    const/16 v2, 0x63

    if-ne v0, v2, :cond_d

    :cond_b
    const/4 v1, 0x0

    .line 421
    .local v1, level:I
    :goto_c
    return v1

    .line 416
    .end local v1           #level:I
    :cond_d
    const/16 v2, 0xc

    if-lt v0, v2, :cond_13

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto :goto_c

    .line 417
    .end local v1           #level:I
    :cond_13
    const/16 v2, 0x8

    if-lt v0, v2, :cond_19

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto :goto_c

    .line 418
    .end local v1           #level:I
    :cond_19
    const/4 v2, 0x5

    if-lt v0, v2, :cond_1e

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto :goto_c

    .line 419
    .end local v1           #level:I
    :cond_1e
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto :goto_c
.end method

.method public getGsmSignalStrength()I
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 296
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1f

    .line 299
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v3, v4, :cond_1a

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v4, :cond_1a

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v3, v4, :cond_1a

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v3, v4, :cond_1a

    .line 303
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 322
    .local v2, level:I
    :goto_19
    return v2

    .line 305
    .end local v2           #level:I
    :cond_1a
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .restart local v2       #level:I
    goto :goto_19

    .line 308
    .end local v2           #level:I
    :cond_1f
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 309
    .local v0, cdmaLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 310
    .local v1, evdoLevel:I
    if-nez v1, :cond_2e

    .line 312
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    .restart local v2       #level:I
    goto :goto_19

    .line 313
    .end local v2           #level:I
    :cond_2e
    if-nez v0, :cond_35

    .line 315
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v2

    .restart local v2       #level:I
    goto :goto_19

    .line 318
    .end local v2           #level:I
    :cond_35
    if-ge v0, v1, :cond_39

    move v2, v0

    .restart local v2       #level:I
    :goto_38
    goto :goto_19

    .end local v2           #level:I
    :cond_39
    move v2, v1

    goto :goto_38
.end method

.method public getLteAsuLevel()I
    .registers 4

    .prologue
    .line 607
    const/16 v0, 0x63

    .line 608
    .local v0, lteAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 609
    .local v1, lteDbm:I
    const/16 v2, -0x8c

    if-gt v1, v2, :cond_c

    const/4 v0, 0x0

    .line 613
    :goto_b
    return v0

    .line 610
    :cond_c
    const/16 v2, -0x2b

    if-lt v1, v2, :cond_13

    const/16 v0, 0x61

    goto :goto_b

    .line 611
    :cond_13
    add-int/lit16 v0, v1, 0x8c

    goto :goto_b
.end method

.method public getLteDbm()I
    .registers 2

    .prologue
    .line 563
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .registers 8

    .prologue
    const v6, 0x7fffffff

    const/4 v5, -0x1

    .line 572
    const/4 v1, 0x0

    .line 573
    .local v1, levelLteRsrp:I
    const/4 v2, 0x0

    .line 575
    .local v2, levelLteRssnr:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v5, :cond_16

    const/4 v1, 0x0

    .line 581
    :goto_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v3, v6, :cond_30

    const/4 v2, 0x0

    .line 588
    :goto_10
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v5, :cond_4a

    .line 589
    move v0, v2

    .line 597
    .local v0, level:I
    :goto_15
    return v0

    .line 576
    .end local v0           #level:I
    :cond_16
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_1e

    const/4 v1, 0x4

    goto :goto_b

    .line 577
    :cond_1e
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_26

    const/4 v1, 0x3

    goto :goto_b

    .line 578
    :cond_26
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_2e

    const/4 v1, 0x2

    goto :goto_b

    .line 579
    :cond_2e
    const/4 v1, 0x1

    goto :goto_b

    .line 582
    :cond_30
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_38

    const/4 v2, 0x4

    goto :goto_10

    .line 583
    :cond_38
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_40

    const/4 v2, 0x3

    goto :goto_10

    .line 584
    :cond_40
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_48

    const/4 v2, 0x2

    goto :goto_10

    .line 585
    :cond_48
    const/4 v2, 0x1

    goto :goto_10

    .line 590
    :cond_4a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v3, v6, :cond_50

    .line 591
    move v0, v1

    .restart local v0       #level:I
    goto :goto_15

    .line 593
    .end local v0           #level:I
    :cond_50
    if-ge v2, v1, :cond_54

    move v0, v2

    .restart local v0       #level:I
    :goto_53
    goto :goto_15

    .end local v0           #level:I
    :cond_54
    move v0, v1

    goto :goto_53
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 628
    const/16 v0, 0x1f

    .line 629
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    :goto_36
    add-int/2addr v1, v2

    return v1

    :cond_38
    const/4 v1, 0x0

    goto :goto_36
.end method

.method public isGsm()Z
    .registers 2

    .prologue
    .line 620
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_aa

    const-string v0, "gsm|lte"

    :goto_a1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_aa
    const-string v0, "cdma"

    goto :goto_a1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 202
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    :goto_41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    return-void

    .line 214
    :cond_45
    const/4 v0, 0x0

    goto :goto_41
.end method
