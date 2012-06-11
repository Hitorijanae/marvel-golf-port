.class public Lcom/android/internal/telephony/SamsungRIL;
.super Lcom/android/internal/telephony/RIL;
.source "SamsungRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SamsungRIL$1;,
        Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;,
        Lcom/android/internal/telephony/SamsungRIL$SamsungDriverCall;
    }
.end annotation


# static fields
.field static final RIL_REQUEST_DIAL_EMERGENCY:I = 0x2720

.field static final RIL_UNSOL_AM:I = 0x2b02

.field static final RIL_UNSOL_DEVICE_READY_NOTI:I = 0x2b00

.field static final RIL_UNSOL_GPS_NOTI:I = 0x2b01

.field static final RIL_UNSOL_HSDPA_STATE_CHANGED:I = 0x2b08

.field static final RIL_UNSOL_O2_HOME_ZONE_INFO:I = 0x2aff

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST:I = 0x2b04

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST_2:I = 0x2b03

.field static final RIL_UNSOL_STK_SEND_SMS_RESULT:I = 0x2afa


# instance fields
.field private mIsSamsungCdma:Z

.field private mSignalbarCount:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 7
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 58
    const-string/jumbo v2, "ro.telephony.sends_barcount"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1a

    :goto_e
    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungRIL;->mSignalbarCount:Z

    .line 59
    const-string/jumbo v0, "ro.ril.samsung_cdma"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    .line 63
    return-void

    :cond_1a
    move v0, v1

    .line 58
    goto :goto_e
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SamsungRIL;ILandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SamsungRIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    return-void
.end method

.method static requestToString(I)Ljava/lang/String;
    .registers 2
    .parameter "request"

    .prologue
    .line 78
    packed-switch p0, :pswitch_data_c

    .line 80
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 79
    :pswitch_8
    const-string v0, "DIAL_EMERGENCY"

    goto :goto_7

    .line 78
    nop

    :pswitch_data_c
    .packed-switch 0x2720
        :pswitch_8
    .end packed-switch
.end method

.method private sendPreferedNetworktype(ILandroid/os/Message;)V
    .registers 6
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 1122
    const/16 v1, 0x49

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1125
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungRIL;->riljLog(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1132
    return-void
.end method

.method private startPppdCdmaService(Ljava/lang/String;)Z
    .registers 8
    .parameter "ttyname"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 951
    const-string/jumbo v2, "net.cdma.datalinkinterface"

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string/jumbo v2, "ril.cdma.data_state"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v2, "RILJ"

    const-string v3, "Set ril.cdma.data_state=1, waiting for ril.cdma.data_state=2."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    if-ge v0, v5, :cond_35

    .line 960
    const-wide/16 v2, 0x64

    :try_start_1e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_62

    .line 962
    :goto_21
    const-string/jumbo v2, "ril.cdma.data_state"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_32

    .line 963
    const-string v2, "RILJ"

    const-string v3, "Got ril.cdma.data_state=2, connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :goto_31
    return v1

    .line 959
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 969
    :cond_35
    const/4 v0, 0x1

    :goto_36
    if-ge v0, v5, :cond_51

    .line 970
    const-wide/16 v2, 0x3e8

    :try_start_3a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_64

    .line 972
    :goto_3d
    const-string/jumbo v2, "ril.cdma.data_state"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4e

    .line 973
    const-string v2, "RILJ"

    const-string v3, "Got ril.cdma.data_state=2, connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 969
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 979
    :cond_51
    const-string v1, "RILJ"

    const-string v2, "Didn\'t get ril.cdma.data_state=2 timely, aborting."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const-string/jumbo v1, "ril.cdma.data_state"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const/4 v1, 0x0

    goto :goto_31

    .line 960
    :catch_62
    move-exception v2

    goto :goto_21

    .line 970
    :catch_64
    move-exception v2

    goto :goto_3d
.end method


# virtual methods
.method public deactivateDataCall(IILandroid/os/Message;)V
    .registers 6
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 988
    iget-boolean v0, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v0, :cond_13

    .line 990
    const-string v0, "RILJ"

    const-string v1, "Set ril.cdma.data_state=0."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-string/jumbo v0, "ril.cdma.data_state"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->deactivateDataCall(IILandroid/os/Message;)V

    .line 995
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 8
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-nez v1, :cond_f

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 294
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/SamsungRIL;->dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V

    .line 315
    :goto_e
    return-void

    .line 298
    :cond_f
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 299
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    if-nez p3, :cond_53

    .line 304
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    :goto_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungRIL;->riljLog(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_e

    .line 306
    :cond_53
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2b
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 9
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 320
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency dial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/16 v1, 0x2720

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 323
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungRIL;->riljLog(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 331
    return-void
.end method

.method protected notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .registers 8
    .parameter "infoRec"

    .prologue
    const/16 v5, 0x403

    .line 1049
    const/16 v0, 0x403

    .line 1051
    .local v0, response:I
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v2, :cond_53

    .line 1052
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 1053
    .local v1, sir:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v1, :cond_53

    iget-boolean v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    if-eqz v2, :cond_53

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_53

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    if-nez v2, :cond_53

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_53

    .line 1058
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/telephony/SamsungRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/SamsungRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" to prevent \"ring of death\" bug."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    .end local v1           #sir:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    :goto_52
    return-void

    .line 1064
    :cond_53
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_52
.end method

.method protected processSolicited(Landroid/os/Parcel;)V
    .registers 11
    .parameter "p"

    .prologue
    const/4 v8, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .local v3, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .local v0, error:I
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Serial: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SamsungRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 117
    .local v2, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v2, :cond_62

    .line 118
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected solicited response! sn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_61
    return-void

    .line 123
    :cond_62
    const/4 v1, 0x0

    .line 125
    .local v1, ret:Ljava/lang/Object;
    if-eqz v0, :cond_6b

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    if-lez v5, :cond_ce

    .line 127
    :cond_6b
    :try_start_6b
    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v5, :sswitch_data_3c4

    .line 238
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized solicited response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_8b} :catch_8b

    .line 240
    :catch_8b
    move-exception v4

    .line 243
    .local v4, tr:Ljava/lang/Throwable;
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/SamsungRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exception, possible invalid RIL response"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v5, :cond_c6

    .line 248
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v5, v8, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 249
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 251
    :cond_c6
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_61

    .line 133
    .end local v4           #tr:Ljava/lang/Throwable;
    :sswitch_ca
    :try_start_ca
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_cd} :catch_8b

    move-result-object v1

    .line 256
    .end local v1           #ret:Ljava/lang/Object;
    :cond_ce
    :goto_ce
    if-eqz v0, :cond_dd

    .line 258
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3bb

    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v6, 0x19

    if-ne v5, v6, :cond_3bb

    .line 262
    :try_start_d9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_dc} :catch_386

    move-result-object v1

    .line 278
    :cond_dd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "< "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/SamsungRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/SamsungRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SamsungRIL;->riljLog(Ljava/lang/String;)V

    .line 281
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v5, :cond_11f

    .line 282
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v5, v1, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 283
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 286
    :cond_11f
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_61

    .line 134
    .restart local v1       #ret:Ljava/lang/Object;
    :sswitch_124
    :try_start_124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_ce

    .line 135
    :sswitch_129
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_ce

    .line 136
    :sswitch_12e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_ce

    .line 137
    :sswitch_133
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_ce

    .line 138
    :sswitch_138
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_ce

    .line 139
    :sswitch_13d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_ce

    .line 140
    :sswitch_142
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_ce

    .line 141
    :sswitch_147
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_ce

    .line 142
    :sswitch_14c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 143
    :sswitch_152
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 144
    :sswitch_158
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 145
    :sswitch_15e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 146
    :sswitch_164
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 147
    :sswitch_16a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 148
    :sswitch_170
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 149
    :sswitch_176
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 150
    :sswitch_17c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseLastCallFailCause(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 151
    :sswitch_182
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 152
    :sswitch_188
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoiceRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 153
    :sswitch_18e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 154
    :sswitch_194
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 155
    :sswitch_19a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 156
    :sswitch_1a0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 157
    :sswitch_1a6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 158
    :sswitch_1ac
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 159
    :sswitch_1b2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 160
    :sswitch_1b8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 161
    :sswitch_1be
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 162
    :sswitch_1c4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 163
    :sswitch_1ca
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 164
    :sswitch_1d0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 165
    :sswitch_1d6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 166
    :sswitch_1dc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 167
    :sswitch_1e2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 168
    :sswitch_1e8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 169
    :sswitch_1ee
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 170
    :sswitch_1f4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 171
    :sswitch_1fa
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 172
    :sswitch_200
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 173
    :sswitch_206
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 174
    :sswitch_20c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 175
    :sswitch_212
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 176
    :sswitch_218
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 177
    :sswitch_21e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 178
    :sswitch_224
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 179
    :sswitch_22a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 180
    :sswitch_230
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 181
    :sswitch_236
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 182
    :sswitch_23c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 183
    :sswitch_242
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 184
    :sswitch_248
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 185
    :sswitch_24e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 186
    :sswitch_254
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 187
    :sswitch_25a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 188
    :sswitch_260
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 189
    :sswitch_266
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 190
    :sswitch_26c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 191
    :sswitch_272
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 192
    :sswitch_278
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 193
    :sswitch_27e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 194
    :sswitch_284
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 195
    :sswitch_28a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 196
    :sswitch_290
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 197
    :sswitch_296
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 198
    :sswitch_29c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 199
    :sswitch_2a2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 200
    :sswitch_2a8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 201
    :sswitch_2ae
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 202
    :sswitch_2b4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 203
    :sswitch_2ba
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 204
    :sswitch_2c0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 205
    :sswitch_2c6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 206
    :sswitch_2cc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 207
    :sswitch_2d2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 208
    :sswitch_2d8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 209
    :sswitch_2de
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 210
    :sswitch_2e4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 211
    :sswitch_2ea
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 212
    :sswitch_2f0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 213
    :sswitch_2f6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 214
    :sswitch_2fc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 215
    :sswitch_302
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 216
    :sswitch_308
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 217
    :sswitch_30e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 218
    :sswitch_314
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 219
    :sswitch_31a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 220
    :sswitch_320
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 221
    :sswitch_326
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 222
    :sswitch_32c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 223
    :sswitch_332
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 224
    :sswitch_338
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 225
    :sswitch_33e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 226
    :sswitch_344
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 227
    :sswitch_34a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCdmaSubscription(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 228
    :sswitch_350
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 229
    :sswitch_356
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 230
    :sswitch_35c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 231
    :sswitch_362
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 232
    :sswitch_368
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 233
    :sswitch_36e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 234
    :sswitch_374
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 235
    :sswitch_37a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_ce

    .line 236
    :sswitch_380
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_383
    .catch Ljava/lang/Throwable; {:try_start_124 .. :try_end_383} :catch_8b

    move-result-object v1

    goto/16 :goto_ce

    .line 263
    .end local v1           #ret:Ljava/lang/Object;
    :catch_386
    move-exception v4

    .line 264
    .restart local v4       #tr:Ljava/lang/Throwable;
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/SamsungRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exception, Processing Samsung SMS fix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 268
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_61

    .line 272
    .end local v4           #tr:Ljava/lang/Throwable;
    :cond_3bb
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 273
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_61

    .line 127
    nop

    :sswitch_data_3c4
    .sparse-switch
        0x1 -> :sswitch_ca
        0x2 -> :sswitch_124
        0x3 -> :sswitch_129
        0x4 -> :sswitch_12e
        0x5 -> :sswitch_133
        0x6 -> :sswitch_138
        0x7 -> :sswitch_13d
        0x8 -> :sswitch_142
        0x9 -> :sswitch_147
        0xa -> :sswitch_14c
        0xb -> :sswitch_152
        0xc -> :sswitch_158
        0xd -> :sswitch_15e
        0xe -> :sswitch_164
        0xf -> :sswitch_16a
        0x10 -> :sswitch_170
        0x11 -> :sswitch_176
        0x12 -> :sswitch_17c
        0x13 -> :sswitch_182
        0x14 -> :sswitch_188
        0x15 -> :sswitch_18e
        0x16 -> :sswitch_194
        0x17 -> :sswitch_19a
        0x18 -> :sswitch_1a0
        0x19 -> :sswitch_1a6
        0x1a -> :sswitch_1ac
        0x1b -> :sswitch_1b2
        0x1c -> :sswitch_1b8
        0x1d -> :sswitch_1be
        0x1e -> :sswitch_1c4
        0x1f -> :sswitch_1ca
        0x20 -> :sswitch_1d0
        0x21 -> :sswitch_1d6
        0x22 -> :sswitch_1dc
        0x23 -> :sswitch_1e2
        0x24 -> :sswitch_1e8
        0x25 -> :sswitch_1ee
        0x26 -> :sswitch_1f4
        0x27 -> :sswitch_1fa
        0x28 -> :sswitch_200
        0x29 -> :sswitch_206
        0x2a -> :sswitch_20c
        0x2b -> :sswitch_212
        0x2c -> :sswitch_218
        0x2d -> :sswitch_21e
        0x2e -> :sswitch_224
        0x2f -> :sswitch_22a
        0x30 -> :sswitch_230
        0x31 -> :sswitch_236
        0x32 -> :sswitch_23c
        0x33 -> :sswitch_242
        0x34 -> :sswitch_248
        0x35 -> :sswitch_24e
        0x36 -> :sswitch_254
        0x37 -> :sswitch_25a
        0x38 -> :sswitch_260
        0x39 -> :sswitch_266
        0x3a -> :sswitch_26c
        0x3b -> :sswitch_272
        0x3c -> :sswitch_278
        0x3d -> :sswitch_27e
        0x3e -> :sswitch_284
        0x3f -> :sswitch_28a
        0x40 -> :sswitch_290
        0x41 -> :sswitch_296
        0x42 -> :sswitch_29c
        0x43 -> :sswitch_2a2
        0x44 -> :sswitch_2a8
        0x45 -> :sswitch_2ae
        0x46 -> :sswitch_2b4
        0x47 -> :sswitch_2ba
        0x48 -> :sswitch_2c0
        0x49 -> :sswitch_2c6
        0x4a -> :sswitch_2cc
        0x4b -> :sswitch_2d2
        0x4c -> :sswitch_2d8
        0x4d -> :sswitch_2de
        0x4e -> :sswitch_2e4
        0x4f -> :sswitch_2ea
        0x50 -> :sswitch_2f0
        0x51 -> :sswitch_2f6
        0x52 -> :sswitch_2fc
        0x53 -> :sswitch_302
        0x54 -> :sswitch_308
        0x55 -> :sswitch_30e
        0x56 -> :sswitch_344
        0x57 -> :sswitch_314
        0x58 -> :sswitch_31a
        0x59 -> :sswitch_320
        0x5a -> :sswitch_326
        0x5b -> :sswitch_32c
        0x5c -> :sswitch_332
        0x5d -> :sswitch_338
        0x5e -> :sswitch_33e
        0x5f -> :sswitch_34a
        0x60 -> :sswitch_350
        0x61 -> :sswitch_356
        0x62 -> :sswitch_35c
        0x63 -> :sswitch_36e
        0x64 -> :sswitch_362
        0x65 -> :sswitch_368
        0x66 -> :sswitch_374
        0x67 -> :sswitch_37a
        0x2720 -> :sswitch_380
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .registers 31
    .parameter "p"

    .prologue
    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 341
    .local v18, response:I
    sparse-switch v18, :sswitch_data_74e

    .line 392
    :try_start_7
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unrecognized unsol response: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_24} :catch_24

    .line 394
    :catch_24
    move-exception v23

    .line 395
    .local v23, tr:Ljava/lang/Throwable;
    const-string v24, "RILJ"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception processing unsol response: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "Exception:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .end local v23           #tr:Ljava/lang/Throwable;
    :cond_4f
    :goto_4f
    return-void

    .line 348
    :sswitch_50
    :try_start_50
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_24

    move-result-object v20

    .line 400
    :goto_54
    sparse-switch v18, :sswitch_data_7e8

    goto :goto_4f

    .line 403
    :sswitch_58
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    .line 404
    .local v11, newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v11}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/SamsungRIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_4f

    .line 349
    .end local v11           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_77
    :try_start_77
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .local v20, ret:Ljava/lang/Object;
    goto :goto_54

    .line 350
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_7c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 351
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_81
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 352
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_86
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 353
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_8b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 354
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_90
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 355
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_95
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 356
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_9a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 357
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_9f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 358
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_a4
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 359
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_a9
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 360
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_ae
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 361
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_b3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 362
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_b8
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 363
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_bd
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 364
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_c2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 365
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_c7
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 366
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_cc
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 367
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_d1
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 368
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_d7
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 369
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_dd
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 370
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_e3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 371
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_e9
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 372
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_ef
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 373
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_f5
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 374
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_fb
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v20

    .local v20, ret:Ljava/util/ArrayList;
    goto/16 :goto_54

    .line 375
    .end local v20           #ret:Ljava/util/ArrayList;
    :sswitch_101
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .local v20, ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 376
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_107
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 377
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_10d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 378
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_113
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 383
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_119
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 384
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_11f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 385
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_125
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 386
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_12b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 387
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_131
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 388
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_137
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 389
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_13d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_140} :catch_24

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 409
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_143
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 415
    :sswitch_160
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 417
    check-cast v20, [I

    check-cast v20, [I

    const/16 v24, 0x0

    aget v24, v20, v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a2

    const/4 v10, 0x1

    .line 418
    .local v10, newHsdpa:Z
    :goto_178
    const-string v24, "gsm.network.type"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 419
    .local v6, curState:Ljava/lang/String;
    const/4 v5, 0x0

    .line 421
    .local v5, curHsdpa:Z
    const-string v24, "HSDPA:9"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1a4

    .line 422
    const/4 v5, 0x1

    .line 428
    :cond_18a
    if-eq v5, v10, :cond_4f

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 417
    .end local v5           #curHsdpa:Z
    .end local v6           #curState:Ljava/lang/String;
    .end local v10           #newHsdpa:Z
    :cond_1a2
    const/4 v10, 0x0

    goto :goto_178

    .line 423
    .restart local v5       #curHsdpa:Z
    .restart local v6       #curState:Ljava/lang/String;
    .restart local v10       #newHsdpa:Z
    :cond_1a4
    const-string v24, "UMTS:3"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_18a

    goto/16 :goto_4f

    .line 435
    .end local v5           #curHsdpa:Z
    .end local v6           #curState:Ljava/lang/String;
    .end local v10           #newHsdpa:Z
    :sswitch_1b0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 441
    :sswitch_1cd
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 444
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v4, v0, [Ljava/lang/String;

    .line 446
    .local v4, a:[Ljava/lang/String;
    const/16 v24, 0x1

    check-cast v20, Ljava/lang/String;

    aput-object v20, v4, v24

    .line 450
    invoke-static {v4}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v21

    .line 451
    .local v21, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 458
    .end local v4           #a:[Ljava/lang/String;
    .end local v21           #sms:Landroid/telephony/SmsMessage;
    :sswitch_208
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 466
    :sswitch_235
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 468
    check-cast v20, [I

    move-object/from16 v22, v20

    check-cast v22, [I

    .line 470
    .local v22, smsIndex:[I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_275

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 476
    :cond_275
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " NEW_SMS_ON_SIM ERROR with wrong length "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_4f

    .end local v22           #smsIndex:[I
    :sswitch_296
    move-object/from16 v24, v20

    .line 481
    check-cast v24, [Ljava/lang/String;

    move-object/from16 v17, v24

    check-cast v17, [Ljava/lang/String;

    .line 483
    .local v17, resp:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2c5

    .line 484
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 485
    const/16 v24, 0x0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    const/16 v25, 0x0

    aget-object v25, v20, v25

    aput-object v25, v17, v24

    .line 486
    const/16 v24, 0x1

    const/16 v25, 0x0

    aput-object v25, v17, v24

    .line 488
    :cond_2c5
    const/16 v24, 0x0

    aget-object v24, v17, v24

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 495
    .end local v17           #resp:[Ljava/lang/String;
    :sswitch_2f6
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 501
    .local v13, nitzReceiveTime:J
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    .local v19, result:[Ljava/lang/Object;
    move-object/from16 v12, v20

    .line 503
    check-cast v12, Ljava/lang/String;

    .line 504
    .local v12, nitz:Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " RIL_UNSOL_NITZ_TIME_RECEIVED length = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "[/:,+-]"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->riljLog(Ljava/lang/String;)V

    .line 508
    const-string v24, "[/:,+-]"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_35d

    .line 509
    const/16 v24, 0x0

    const-string v25, ","

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 511
    :cond_35d
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " RIL_UNSOL_NITZ_TIME_RECEIVED striped nitz = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->riljLog(Ljava/lang/String;)V

    .line 514
    const/16 v24, 0x0

    aput-object v12, v19, v24

    .line 515
    const/16 v24, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v19, v24

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3a9

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 523
    :cond_3a9
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/SamsungRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto/16 :goto_4f

    .line 532
    .end local v12           #nitz:Ljava/lang/String;
    .end local v13           #nitzReceiveTime:J
    .end local v19           #result:[Ljava/lang/Object;
    :sswitch_3af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 538
    :sswitch_3d3
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 544
    :sswitch_3f8
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 553
    :sswitch_425
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 562
    :sswitch_450
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 571
    :sswitch_47d
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 580
    :sswitch_4aa
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 589
    :sswitch_4d7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_4f

    .line 597
    :sswitch_4f1
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 606
    :sswitch_51e
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 615
    :sswitch_54b
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 623
    :sswitch_578
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_4f

    .line 631
    :sswitch_592
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    move-object/from16 v21, v20

    .line 633
    check-cast v21, Landroid/telephony/SmsMessage;

    .line 635
    .restart local v21       #sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 642
    .end local v21           #sms:Landroid/telephony/SmsMessage;
    :sswitch_5c1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 651
    :sswitch_5ec
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_4f

    .line 659
    :sswitch_606
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_4f

    .line 667
    :sswitch_620
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 676
    :sswitch_64d
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 688
    :sswitch_67a
    :try_start_67a
    move-object/from16 v0, v20

    check-cast v0, Ljava/util/ArrayList;

    move-object v9, v0
    :try_end_67f
    .catch Ljava/lang/ClassCastException; {:try_start_67a .. :try_end_67f} :catch_6a0

    .line 694
    .local v9, listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_683
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 695
    .local v16, rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 696
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_683

    .line 689
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v16           #rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :catch_6a0
    move-exception v7

    .line 690
    .local v7, e:Ljava/lang/ClassCastException;
    const-string v24, "RILJ"

    const-string v25, "Unexpected exception casting to listInfoRecs"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4f

    .end local v7           #e:Ljava/lang/ClassCastException;
    :sswitch_6ae
    move-object/from16 v24, v20

    .line 701
    check-cast v24, [B

    check-cast v24, [B

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 708
    :sswitch_6e5
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 710
    check-cast v20, [I

    check-cast v20, [I

    const/16 v24, 0x0

    aget v24, v20, v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_71f

    const/4 v15, 0x1

    .line 711
    .local v15, playtone:Z
    :goto_707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 710
    .end local v15           #playtone:Z
    :cond_71f
    const/4 v15, 0x0

    goto :goto_707

    .line 717
    :sswitch_721
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4f

    .line 341
    :sswitch_data_74e
    .sparse-switch
        0x3e8 -> :sswitch_50
        0x3e9 -> :sswitch_77
        0x3ea -> :sswitch_7c
        0x3eb -> :sswitch_81
        0x3ec -> :sswitch_86
        0x3ed -> :sswitch_8b
        0x3ee -> :sswitch_90
        0x3f0 -> :sswitch_95
        0x3f1 -> :sswitch_9a
        0x3f2 -> :sswitch_9f
        0x3f3 -> :sswitch_a4
        0x3f4 -> :sswitch_a9
        0x3f5 -> :sswitch_ae
        0x3f6 -> :sswitch_b3
        0x3f7 -> :sswitch_b8
        0x3f8 -> :sswitch_bd
        0x3f9 -> :sswitch_c2
        0x3fa -> :sswitch_c7
        0x3fb -> :sswitch_d1
        0x3fc -> :sswitch_d7
        0x3fd -> :sswitch_dd
        0x3fe -> :sswitch_e3
        0x3ff -> :sswitch_cc
        0x400 -> :sswitch_e9
        0x401 -> :sswitch_ef
        0x402 -> :sswitch_f5
        0x403 -> :sswitch_fb
        0x404 -> :sswitch_101
        0x405 -> :sswitch_107
        0x406 -> :sswitch_10d
        0x2afa -> :sswitch_11f
        0x2aff -> :sswitch_119
        0x2b00 -> :sswitch_125
        0x2b01 -> :sswitch_12b
        0x2b02 -> :sswitch_13d
        0x2b03 -> :sswitch_137
        0x2b04 -> :sswitch_131
        0x2b08 -> :sswitch_113
    .end sparse-switch

    .line 400
    :sswitch_data_7e8
    .sparse-switch
        0x3e8 -> :sswitch_58
        0x3e9 -> :sswitch_143
        0x3ea -> :sswitch_1b0
        0x3eb -> :sswitch_1cd
        0x3ec -> :sswitch_208
        0x3ed -> :sswitch_235
        0x3ee -> :sswitch_296
        0x3f0 -> :sswitch_2f6
        0x3f1 -> :sswitch_3af
        0x3f2 -> :sswitch_3d3
        0x3f3 -> :sswitch_3f8
        0x3f4 -> :sswitch_425
        0x3f5 -> :sswitch_450
        0x3f6 -> :sswitch_47d
        0x3f7 -> :sswitch_4aa
        0x3f8 -> :sswitch_4d7
        0x3f9 -> :sswitch_4f1
        0x3fa -> :sswitch_51e
        0x3fb -> :sswitch_578
        0x3fc -> :sswitch_592
        0x3fd -> :sswitch_5c1
        0x3fe -> :sswitch_5ec
        0x3ff -> :sswitch_54b
        0x400 -> :sswitch_606
        0x401 -> :sswitch_620
        0x402 -> :sswitch_64d
        0x403 -> :sswitch_67a
        0x404 -> :sswitch_6ae
        0x405 -> :sswitch_6e5
        0x406 -> :sswitch_721
        0x2b08 -> :sswitch_160
    .end sparse-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 19
    .parameter "p"

    .prologue
    .line 733
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    .line 734
    .local v1, dataAvail:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    .line 735
    .local v7, pos:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataSize()I

    move-result v9

    .line 737
    .local v9, size:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel pos = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel dataAvail = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 742
    .local v6, num:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 744
    .local v8, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5e
    if-ge v3, v6, :cond_321

    .line 745
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v12, :cond_2f4

    .line 746
    new-instance v2, Lcom/android/internal/telephony/SamsungRIL$SamsungDriverCall;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/SamsungRIL$SamsungDriverCall;-><init>(Lcom/android/internal/telephony/SamsungRIL;)V

    .line 750
    .local v2, dc:Lcom/android/internal/telephony/DriverCall;
    :goto_6d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 752
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 753
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_2fb

    const/4 v12, 0x1

    :goto_8a
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 754
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_2fe

    const/4 v12, 0x1

    :goto_93
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 755
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 756
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_301

    const/4 v12, 0x1

    :goto_a2
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 757
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_304

    const/4 v4, 0x1

    .line 758
    .local v4, isVideo:Z
    :goto_ab
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_307

    const/4 v12, 0x1

    :goto_b2
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 759
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 760
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 761
    .local v5, np:I
    invoke-static {v5}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 762
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 764
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 766
    .local v11, uusInfoPresent:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "index = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isMpty = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isMT = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "als = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVoice = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVideo = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "number = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "numberPresentation = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "namePresentation = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "uusInfoPresent = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v12, 0x1

    if-ne v11, v12, :cond_30a

    .line 781
    new-instance v12, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v12}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 782
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 783
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 784
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 785
    .local v10, userData:[B
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 786
    const-string v12, "RILJ"

    const-string v13, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming UUS : data (string)="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v15}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming UUS : data (hex): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v14}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    .end local v10           #userData:[B
    :goto_2d1
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v13, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 801
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    iget-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v12, :cond_312

    .line 804
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SamsungRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 805
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is enabled"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :goto_2f0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5e

    .line 748
    .end local v2           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v4           #isVideo:Z
    .end local v5           #np:I
    .end local v11           #uusInfoPresent:I
    :cond_2f4
    new-instance v2, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .restart local v2       #dc:Lcom/android/internal/telephony/DriverCall;
    goto/16 :goto_6d

    .line 753
    :cond_2fb
    const/4 v12, 0x0

    goto/16 :goto_8a

    .line 754
    :cond_2fe
    const/4 v12, 0x0

    goto/16 :goto_93

    .line 756
    :cond_301
    const/4 v12, 0x0

    goto/16 :goto_a2

    .line 757
    :cond_304
    const/4 v4, 0x0

    goto/16 :goto_ab

    .line 758
    .restart local v4       #isVideo:Z
    :cond_307
    const/4 v12, 0x0

    goto/16 :goto_b2

    .line 795
    .restart local v5       #np:I
    .restart local v11       #uusInfoPresent:I
    :cond_30a
    const-string v12, "RILJ"

    const-string v13, "Incoming UUS : NOT present!"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d1

    .line 807
    :cond_312
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SamsungRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 808
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is disabled"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f0

    .line 812
    .end local v2           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v4           #isVideo:Z
    .end local v5           #np:I
    .end local v11           #uusInfoPresent:I
    :cond_321
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 814
    return-object v8
.end method

.method protected responseCdmaSubscription(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 12
    .parameter "p"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 999
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    .line 1001
    .local v1, response:[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v9, :cond_36

    .line 1003
    const-string/jumbo v3, "ril.prl_ver_1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v5

    .line 1004
    .local v0, prlVersion:Ljava/lang/String;
    const/4 v3, 0x5

    new-array v2, v3, [Ljava/lang/String;

    aget-object v3, v1, v6

    aput-object v3, v2, v6

    aget-object v3, v1, v5

    aput-object v3, v2, v5

    aget-object v3, v1, v7

    aput-object v3, v2, v7

    aget-object v3, v1, v8

    aput-object v3, v2, v8

    aput-object v0, v2, v9

    .end local v1           #response:[Ljava/lang/String;
    .local v2, response:[Ljava/lang/String;
    move-object v1, v2

    .line 1008
    .end local v0           #prlVersion:Ljava/lang/String;
    .end local v2           #response:[Ljava/lang/String;
    .restart local v1       #response:[Ljava/lang/String;
    :cond_36
    return-object v1
.end method

.method protected responseLastCallFailCause(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 6
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 819
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 821
    .local v0, response:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v1, :cond_23

    array-length v1, v0

    if-lez v1, :cond_23

    aget v1, v0, v3

    const v2, 0xffff

    if-ne v1, v2, :cond_23

    .line 825
    const-string v1, "RILJ"

    const-string v2, "Overriding ERROR_UNSPECIFIED fail cause with NORMAL_CLEARING."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/16 v1, 0x10

    aput v1, v0, v3

    .line 829
    :cond_23
    return-object v0
.end method

.method protected responseNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 6
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 892
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 895
    .local v0, response:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-nez v1, :cond_1c

    aget v1, v0, v3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1c

    .line 896
    const-string v1, "RILJ"

    const-string v2, "Overriding network type response from global to WCDMA preferred"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    aput v3, v0, v3

    .line 900
    :cond_1c
    return-object v0
.end method

.method protected responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 11
    .parameter "p"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 906
    new-instance v0, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v0}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 907
    .local v0, dataCall:Lcom/android/internal/telephony/DataCallState;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 909
    .local v2, strings:[Ljava/lang/String;
    array-length v3, v2

    if-lt v3, v8, :cond_d6

    .line 910
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 912
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v3, :cond_c2

    .line 914
    aget-object v3, v2, v6

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SamsungRIL;->startPppdCdmaService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 916
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DataCallState;->status:I

    .line 947
    :cond_30
    :goto_30
    return-object v0

    .line 921
    :cond_31
    const-string/jumbo v3, "net.cdma.ppp.interface"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, ifprop:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".local-ip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iput-object v3, v0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 925
    new-array v3, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".remote-ip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iput-object v3, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    .line 926
    new-array v3, v8, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iput-object v3, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    goto/16 :goto_30

    .line 929
    .end local v1           #ifprop:Ljava/lang/String;
    :cond_c2
    aget-object v3, v2, v6

    iput-object v3, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 931
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_30

    .line 932
    aget-object v3, v2, v8

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    goto/16 :goto_30

    .line 936
    :cond_d6
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v3, :cond_e9

    .line 940
    const-string v3, "RILJ"

    const-string v4, "Set ril.cdma.data_state=0 to make sure pppd_cdma is stopped."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string/jumbo v3, "ril.cdma.data_state"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    :cond_e9
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DataCallState;->status:I

    goto/16 :goto_30
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 12
    .parameter "p"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x3

    .line 835
    const/16 v1, 0xc

    .line 839
    .local v1, numInts:I
    new-array v2, v1, [I

    .line 840
    .local v2, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    const/4 v3, 0x7

    if-ge v0, v3, :cond_16

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 844
    :cond_16
    const/4 v0, 0x7

    :goto_17
    if-ge v0, v1, :cond_1e

    .line 845
    aput v4, v2, v0

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 848
    :cond_1e
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v3, :cond_2c

    .line 849
    aget v3, v2, v6

    if-gez v3, :cond_2b

    .line 850
    aget v3, v2, v6

    neg-int v3, v3

    aput v3, v2, v6

    .line 873
    :cond_2b
    :goto_2b
    return-object v2

    .line 857
    :cond_2c
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungRIL;->mSignalbarCount:Z

    if-eqz v3, :cond_70

    .line 861
    aget v3, v2, v7

    const v5, 0xff00

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x8

    mul-int/lit8 v3, v3, 0x3

    aput v3, v2, v7

    .line 865
    :goto_3c
    const/4 v3, 0x1

    aput v4, v2, v3

    .line 866
    aget v3, v2, v8

    if-gez v3, :cond_77

    const/16 v3, -0x78

    :goto_45
    aput v3, v2, v8

    .line 867
    aget v3, v2, v6

    if-gez v3, :cond_7b

    const/16 v3, -0xa0

    :goto_4d
    aput v3, v2, v6

    .line 868
    aget v3, v2, v9

    if-gez v3, :cond_7f

    const/16 v3, -0x78

    :goto_55
    aput v3, v2, v9

    .line 869
    const/4 v5, 0x5

    const/4 v3, 0x5

    aget v3, v2, v3

    if-gez v3, :cond_83

    move v3, v4

    :goto_5e
    aput v3, v2, v5

    .line 870
    const/4 v3, 0x6

    aget v3, v2, v3

    if-ltz v3, :cond_6c

    const/4 v3, 0x6

    aget v3, v2, v3

    const/16 v5, 0x8

    if-le v3, v5, :cond_2b

    .line 871
    :cond_6c
    const/4 v3, 0x6

    aput v4, v2, v3

    goto :goto_2b

    .line 863
    :cond_70
    aget v3, v2, v7

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v7

    goto :goto_3c

    .line 866
    :cond_77
    aget v3, v2, v8

    neg-int v3, v3

    goto :goto_45

    .line 867
    :cond_7b
    aget v3, v2, v6

    neg-int v3, v3

    goto :goto_4d

    .line 868
    :cond_7f
    aget v3, v2, v9

    neg-int v3, v3

    goto :goto_55

    .line 869
    :cond_83
    const/4 v3, 0x5

    aget v3, v2, v3

    neg-int v3, v3

    goto :goto_5e
.end method

.method protected responseVoiceRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 8
    .parameter "p"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/16 v3, 0x10

    const/4 v2, 0x6

    .line 878
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 880
    .local v0, response:[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v1, :cond_39

    array-length v1, v0

    if-le v1, v2, :cond_39

    .line 882
    aget-object v1, v0, v4

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 883
    aget-object v1, v0, v5

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 884
    aget-object v1, v0, v2

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 887
    :cond_39
    return-object v0
.end method

.method public setCurrentPreferredNetworkType()V
    .registers 2

    .prologue
    .line 1094
    const-string/jumbo v0, "setCurrentPreferredNetworkType IGNORED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungRIL;->riljLog(Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 7
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 1107
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungRIL;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1110
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1112
    new-instance v1, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/SamsungRIL;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;-><init>(Lcom/android/internal/telephony/SamsungRIL;Landroid/content/Context;)V

    .line 1113
    .local v1, handler:Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->setPreferedNetworkType(ILandroid/os/Message;)V

    .line 1117
    .end local v1           #handler:Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;
    :goto_1a
    return-void

    .line 1115
    :cond_1b
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SamsungRIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    goto :goto_1a
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .registers 7
    .parameter "on"
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 87
    const/16 v1, 0x17

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 89
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    if-eqz p1, :cond_3c

    .line 90
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungRIL;->riljLog(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 100
    return-void

    .line 93
    :cond_3c
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14
.end method
