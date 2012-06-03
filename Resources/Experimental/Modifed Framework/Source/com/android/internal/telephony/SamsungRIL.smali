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

.field static final RIL_UNSOL_DEVICE_READY_NOTI:I = 0x2b00

.field static final RIL_UNSOL_GPS_NOTI:I = 0x2b01

.field static final RIL_UNSOL_HSDPA_STATE_CHANGED:I = 0x2b08

.field static final RIL_UNSOL_O2_HOME_ZONE_INFO:I = 0x2aff

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST:I = 0x2b04

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST_2:I = 0x2b03

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST_3:I = 0x2b02

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

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 41
    const-string/jumbo v2, "ro.telephony.sends_barcount"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1a

    :goto_e
    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungRIL;->mSignalbarCount:Z

    .line 42
    const-string/jumbo v0, "ro.ril.samsung_cdma"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    .line 46
    return-void

    :cond_1a
    move v0, v1

    .line 41
    goto :goto_e
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SamsungRIL;ILandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SamsungRIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    return-void
.end method

.method private sendPreferedNetworktype(ILandroid/os/Message;)V
    .registers 6
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 1096
    const/16 v1, 0x49

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1099
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1100
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
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

    .line 1105
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1106
    return-void
.end method

.method private startPppdCdmaService(Ljava/lang/String;)Z
    .registers 8
    .parameter "ttyname"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 925
    const-string/jumbo v2, "net.cdma.datalinkinterface"

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string/jumbo v2, "ril.cdma.data_state"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v2, "RILJ"

    const-string v3, "Set ril.cdma.data_state=1, waiting for ril.cdma.data_state=2."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    if-ge v0, v5, :cond_35

    .line 934
    const-wide/16 v2, 0x64

    :try_start_1e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_62

    .line 936
    :goto_21
    const-string/jumbo v2, "ril.cdma.data_state"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_32

    .line 937
    const-string v2, "RILJ"

    const-string v3, "Got ril.cdma.data_state=2, connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :goto_31
    return v1

    .line 933
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 943
    :cond_35
    const/4 v0, 0x1

    :goto_36
    if-ge v0, v5, :cond_51

    .line 944
    const-wide/16 v2, 0x3e8

    :try_start_3a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_64

    .line 946
    :goto_3d
    const-string/jumbo v2, "ril.cdma.data_state"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4e

    .line 947
    const-string v2, "RILJ"

    const-string v3, "Got ril.cdma.data_state=2, connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 943
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 953
    :cond_51
    const-string v1, "RILJ"

    const-string v2, "Didn\'t get ril.cdma.data_state=2 timely, aborting."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-string/jumbo v1, "ril.cdma.data_state"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const/4 v1, 0x0

    goto :goto_31

    .line 934
    :catch_62
    move-exception v2

    goto :goto_21

    .line 944
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
    .line 962
    iget-boolean v0, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v0, :cond_13

    .line 964
    const-string v0, "RILJ"

    const-string v1, "Set ril.cdma.data_state=0."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const-string/jumbo v0, "ril.cdma.data_state"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->deactivateDataCall(IILandroid/os/Message;)V

    .line 969
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 10
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 269
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-nez v1, :cond_7a

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 270
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

    .line 271
    const/16 v1, 0x2720

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 272
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

    .line 279
    :goto_41
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    if-nez p3, :cond_86

    .line 283
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    :goto_52
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

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 294
    return-void

    .line 275
    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_7a
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 276
    .restart local v0       #rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_41

    .line 285
    :cond_86
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_52
.end method

.method protected notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .registers 8
    .parameter "infoRec"

    .prologue
    const/16 v5, 0x403

    .line 1023
    const/16 v0, 0x403

    .line 1025
    .local v0, response:I
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v2, :cond_53

    .line 1026
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 1027
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

    .line 1032
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

    .line 1039
    .end local v1           #sir:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    :goto_52
    return-void

    .line 1038
    :cond_53
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_52
.end method

.method protected processSolicited(Landroid/os/Parcel;)V
    .registers 12
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 82
    const/4 v1, 0x0

    .line 84
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 85
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, error:I
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Serial: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SamsungRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 94
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_63

    .line 95
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_62
    return-void

    .line 100
    :cond_63
    const/4 v2, 0x0

    .line 102
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_6c

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_cf

    .line 104
    :cond_6c
    :try_start_6c
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_3be

    .line 214
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized solicited response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_8c} :catch_8c

    .line 216
    :catch_8c
    move-exception v5

    .line 219
    .local v5, tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/SamsungRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_c7

    .line 224
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 225
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 227
    :cond_c7
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_62

    .line 110
    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_cb
    :try_start_cb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_ce} :catch_8c

    move-result-object v2

    .line 232
    .end local v2           #ret:Ljava/lang/Object;
    :cond_cf
    :goto_cf
    if-eqz v0, :cond_de

    .line 234
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3b6

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v7, 0x19

    if-ne v6, v7, :cond_3b6

    .line 238
    :try_start_da
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_dd} :catch_381

    move-result-object v2

    .line 254
    :cond_de
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/SamsungRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/SamsungRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungRIL;->riljLog(Ljava/lang/String;)V

    .line 257
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_120

    .line 258
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 259
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 262
    :cond_120
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_62

    .line 111
    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_125
    :try_start_125
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_cf

    .line 112
    :pswitch_12a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_cf

    .line 113
    :pswitch_12f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_cf

    .line 114
    :pswitch_134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_cf

    .line 115
    :pswitch_139
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_cf

    .line 116
    :pswitch_13e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_cf

    .line 117
    :pswitch_143
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_cf

    .line 118
    :pswitch_148
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_cf

    .line 119
    :pswitch_14d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 120
    :pswitch_153
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 121
    :pswitch_159
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 122
    :pswitch_15f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 123
    :pswitch_165
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 124
    :pswitch_16b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 125
    :pswitch_171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 126
    :pswitch_177
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 127
    :pswitch_17d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseLastCallFailCause(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 128
    :pswitch_183
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 129
    :pswitch_189
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoiceRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 130
    :pswitch_18f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 131
    :pswitch_195
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 132
    :pswitch_19b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 133
    :pswitch_1a1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 134
    :pswitch_1a7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 135
    :pswitch_1ad
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 136
    :pswitch_1b3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 137
    :pswitch_1b9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 138
    :pswitch_1bf
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 139
    :pswitch_1c5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 140
    :pswitch_1cb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 141
    :pswitch_1d1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 142
    :pswitch_1d7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 143
    :pswitch_1dd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 144
    :pswitch_1e3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 145
    :pswitch_1e9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 146
    :pswitch_1ef
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 147
    :pswitch_1f5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 148
    :pswitch_1fb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 149
    :pswitch_201
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 150
    :pswitch_207
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 151
    :pswitch_20d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 152
    :pswitch_213
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 153
    :pswitch_219
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 154
    :pswitch_21f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 155
    :pswitch_225
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 156
    :pswitch_22b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 157
    :pswitch_231
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 158
    :pswitch_237
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 159
    :pswitch_23d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 160
    :pswitch_243
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 161
    :pswitch_249
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 162
    :pswitch_24f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 163
    :pswitch_255
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 164
    :pswitch_25b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 165
    :pswitch_261
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 166
    :pswitch_267
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 167
    :pswitch_26d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 168
    :pswitch_273
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 169
    :pswitch_279
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 170
    :pswitch_27f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 171
    :pswitch_285
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 172
    :pswitch_28b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 173
    :pswitch_291
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 174
    :pswitch_297
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 175
    :pswitch_29d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 176
    :pswitch_2a3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 177
    :pswitch_2a9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 178
    :pswitch_2af
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 179
    :pswitch_2b5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 180
    :pswitch_2bb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 181
    :pswitch_2c1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 182
    :pswitch_2c7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 183
    :pswitch_2cd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 184
    :pswitch_2d3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 185
    :pswitch_2d9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 186
    :pswitch_2df
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 187
    :pswitch_2e5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 188
    :pswitch_2eb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 189
    :pswitch_2f1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 190
    :pswitch_2f7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 191
    :pswitch_2fd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 192
    :pswitch_303
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 193
    :pswitch_309
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 194
    :pswitch_30f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 195
    :pswitch_315
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 196
    :pswitch_31b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 197
    :pswitch_321
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 198
    :pswitch_327
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 199
    :pswitch_32d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 200
    :pswitch_333
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 201
    :pswitch_339
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 202
    :pswitch_33f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 203
    :pswitch_345
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 204
    :pswitch_34b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCdmaSubscription(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 205
    :pswitch_351
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 206
    :pswitch_357
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 207
    :pswitch_35d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 208
    :pswitch_363
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 209
    :pswitch_369
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 210
    :pswitch_36f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 211
    :pswitch_375
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_cf

    .line 212
    :pswitch_37b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_37e
    .catch Ljava/lang/Throwable; {:try_start_125 .. :try_end_37e} :catch_8c

    move-result-object v2

    goto/16 :goto_cf

    .line 239
    .end local v2           #ret:Ljava/lang/Object;
    :catch_381
    move-exception v5

    .line 240
    .restart local v5       #tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/SamsungRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, Processing Samsung SMS fix "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 244
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_62

    .line 248
    .end local v5           #tr:Ljava/lang/Throwable;
    :cond_3b6
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 249
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_62

    .line 104
    :pswitch_data_3be
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_125
        :pswitch_12a
        :pswitch_12f
        :pswitch_134
        :pswitch_139
        :pswitch_13e
        :pswitch_143
        :pswitch_148
        :pswitch_14d
        :pswitch_153
        :pswitch_159
        :pswitch_15f
        :pswitch_165
        :pswitch_16b
        :pswitch_171
        :pswitch_177
        :pswitch_17d
        :pswitch_183
        :pswitch_189
        :pswitch_18f
        :pswitch_195
        :pswitch_19b
        :pswitch_1a1
        :pswitch_1a7
        :pswitch_1ad
        :pswitch_1b3
        :pswitch_1b9
        :pswitch_1bf
        :pswitch_1c5
        :pswitch_1cb
        :pswitch_1d1
        :pswitch_1d7
        :pswitch_1dd
        :pswitch_1e3
        :pswitch_1e9
        :pswitch_1ef
        :pswitch_1f5
        :pswitch_1fb
        :pswitch_201
        :pswitch_207
        :pswitch_20d
        :pswitch_213
        :pswitch_219
        :pswitch_21f
        :pswitch_225
        :pswitch_22b
        :pswitch_231
        :pswitch_237
        :pswitch_23d
        :pswitch_243
        :pswitch_249
        :pswitch_24f
        :pswitch_255
        :pswitch_25b
        :pswitch_261
        :pswitch_267
        :pswitch_26d
        :pswitch_273
        :pswitch_279
        :pswitch_27f
        :pswitch_285
        :pswitch_28b
        :pswitch_291
        :pswitch_297
        :pswitch_29d
        :pswitch_2a3
        :pswitch_2a9
        :pswitch_2af
        :pswitch_2b5
        :pswitch_2bb
        :pswitch_2c1
        :pswitch_2c7
        :pswitch_2cd
        :pswitch_2d3
        :pswitch_2d9
        :pswitch_2df
        :pswitch_2e5
        :pswitch_2eb
        :pswitch_2f1
        :pswitch_2f7
        :pswitch_2fd
        :pswitch_303
        :pswitch_309
        :pswitch_30f
        :pswitch_345
        :pswitch_315
        :pswitch_31b
        :pswitch_321
        :pswitch_327
        :pswitch_32d
        :pswitch_333
        :pswitch_339
        :pswitch_33f
        :pswitch_34b
        :pswitch_351
        :pswitch_357
        :pswitch_35d
        :pswitch_36f
        :pswitch_363
        :pswitch_369
        :pswitch_375
        :pswitch_37b
    .end packed-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .registers 31
    .parameter "p"

    .prologue
    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 304
    .local v18, response:I
    sparse-switch v18, :sswitch_data_74e

    .line 355
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

    .line 357
    :catch_24
    move-exception v23

    .line 358
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

    .line 685
    .end local v23           #tr:Ljava/lang/Throwable;
    :cond_4f
    :goto_4f
    return-void

    .line 311
    :sswitch_50
    :try_start_50
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_24

    move-result-object v20

    .line 363
    :goto_54
    sparse-switch v18, :sswitch_data_7e8

    goto :goto_4f

    .line 366
    :sswitch_58
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    .line 367
    .local v11, newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v11}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/SamsungRIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_4f

    .line 312
    .end local v11           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_77
    :try_start_77
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .local v20, ret:Ljava/lang/Object;
    goto :goto_54

    .line 313
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_7c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 314
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_81
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 315
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_86
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 316
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_8b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 317
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_90
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 318
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_95
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 319
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_9a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 320
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_9f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 321
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_a4
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 322
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_a9
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 323
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_ae
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 324
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_b3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 325
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_b8
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 326
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_bd
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 327
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_c2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 328
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_c7
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 329
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_cc
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto :goto_54

    .line 330
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_d1
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 331
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_d7
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 332
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_dd
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 333
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_e3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 334
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_e9
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 335
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_ef
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 336
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_f5
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 337
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_fb
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v20

    .local v20, ret:Ljava/util/ArrayList;
    goto/16 :goto_54

    .line 338
    .end local v20           #ret:Ljava/util/ArrayList;
    :sswitch_101
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .local v20, ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 339
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_107
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 340
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_10d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 341
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_113
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 346
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_119
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 347
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_11f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 348
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_125
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 349
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_12b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 350
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_131
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 351
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_137
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 352
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_13d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_140} :catch_24

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/Object;
    goto/16 :goto_54

    .line 372
    .end local v20           #ret:Ljava/lang/Object;
    :sswitch_143
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 374
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

    .line 378
    :sswitch_160
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 380
    check-cast v20, [I

    check-cast v20, [I

    const/16 v24, 0x0

    aget v24, v20, v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a2

    const/4 v10, 0x1

    .line 381
    .local v10, newHsdpa:Z
    :goto_178
    const-string v24, "gsm.network.type"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 382
    .local v6, curState:Ljava/lang/String;
    const/4 v5, 0x0

    .line 384
    .local v5, curHsdpa:Z
    const-string v24, "HSDPA:9"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1a4

    .line 385
    const/4 v5, 0x1

    .line 391
    :cond_18a
    if-eq v5, v10, :cond_4f

    .line 392
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

    .line 380
    .end local v5           #curHsdpa:Z
    .end local v6           #curState:Ljava/lang/String;
    .end local v10           #newHsdpa:Z
    :cond_1a2
    const/4 v10, 0x0

    goto :goto_178

    .line 386
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

    .line 398
    .end local v5           #curHsdpa:Z
    .end local v6           #curState:Ljava/lang/String;
    .end local v10           #newHsdpa:Z
    :sswitch_1b0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 400
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

    .line 404
    :sswitch_1cd
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 407
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v4, v0, [Ljava/lang/String;

    .line 409
    .local v4, a:[Ljava/lang/String;
    const/16 v24, 0x1

    check-cast v20, Ljava/lang/String;

    aput-object v20, v4, v24

    .line 413
    invoke-static {v4}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v21

    .line 414
    .local v21, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 415
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

    .line 421
    .end local v4           #a:[Ljava/lang/String;
    .end local v21           #sms:Landroid/telephony/SmsMessage;
    :sswitch_208
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 424
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

    .line 429
    :sswitch_235
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 431
    check-cast v20, [I

    move-object/from16 v22, v20

    check-cast v22, [I

    .line 433
    .local v22, smsIndex:[I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_275

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 435
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

    .line 439
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

    .line 444
    check-cast v24, [Ljava/lang/String;

    move-object/from16 v17, v24

    check-cast v17, [Ljava/lang/String;

    .line 446
    .local v17, resp:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2c5

    .line 447
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 448
    const/16 v24, 0x0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    const/16 v25, 0x0

    aget-object v25, v20, v25

    aput-object v25, v17, v24

    .line 449
    const/16 v24, 0x1

    const/16 v25, 0x0

    aput-object v25, v17, v24

    .line 451
    :cond_2c5
    const/16 v24, 0x0

    aget-object v24, v17, v24

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 453
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

    .line 458
    .end local v17           #resp:[Ljava/lang/String;
    :sswitch_2f6
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 464
    .local v13, nitzReceiveTime:J
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    .local v19, result:[Ljava/lang/Object;
    move-object/from16 v12, v20

    .line 466
    check-cast v12, Ljava/lang/String;

    .line 467
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

    .line 471
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

    .line 472
    const/16 v24, 0x0

    const-string v25, ","

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 473
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

    .line 475
    const/16 v24, 0x0

    aput-object v12, v19, v24

    .line 476
    const/16 v24, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v19, v24

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3a9

    .line 480
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

    .line 484
    :cond_3a9
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/SamsungRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto/16 :goto_4f

    .line 493
    .end local v12           #nitz:Ljava/lang/String;
    .end local v13           #nitzReceiveTime:J
    .end local v19           #result:[Ljava/lang/Object;
    :sswitch_3af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 494
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

    .line 499
    :sswitch_3d3
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 501
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

    .line 505
    :sswitch_3f8
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 508
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

    .line 514
    :sswitch_425
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 517
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

    .line 523
    :sswitch_450
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 526
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

    .line 532
    :sswitch_47d
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 535
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

    .line 541
    :sswitch_4aa
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 544
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

    .line 550
    :sswitch_4d7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_4f

    .line 558
    :sswitch_4f1
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 561
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

    .line 567
    :sswitch_51e
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 570
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

    .line 576
    :sswitch_54b
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 578
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

    .line 584
    :sswitch_578
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_4f

    .line 592
    :sswitch_592
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    move-object/from16 v21, v20

    .line 594
    check-cast v21, Landroid/telephony/SmsMessage;

    .line 596
    .restart local v21       #sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 597
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

    .line 603
    .end local v21           #sms:Landroid/telephony/SmsMessage;
    :sswitch_5c1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 606
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

    .line 612
    :sswitch_5ec
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_4f

    .line 620
    :sswitch_606
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->unsljLog(I)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_4f

    .line 628
    :sswitch_620
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 631
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

    .line 637
    :sswitch_64d
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 640
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

    .line 649
    :sswitch_67a
    :try_start_67a
    move-object/from16 v0, v20

    check-cast v0, Ljava/util/ArrayList;

    move-object v9, v0
    :try_end_67f
    .catch Ljava/lang/ClassCastException; {:try_start_67a .. :try_end_67f} :catch_6a0

    .line 655
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

    .line 656
    .local v16, rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 657
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungRIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_683

    .line 650
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v16           #rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :catch_6a0
    move-exception v7

    .line 651
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

    .line 662
    check-cast v24, [B

    check-cast v24, [B

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 664
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

    .line 669
    :sswitch_6e5
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 671
    check-cast v20, [I

    check-cast v20, [I

    const/16 v24, 0x0

    aget v24, v20, v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_71f

    const/4 v15, 0x1

    .line 672
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

    .line 671
    .end local v15           #playtone:Z
    :cond_71f
    const/4 v15, 0x0

    goto :goto_707

    .line 678
    :sswitch_721
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungRIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4f

    .line 681
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

    .line 304
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

    .line 363
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
    .line 694
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    .line 695
    .local v1, dataAvail:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    .line 696
    .local v6, pos:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataSize()I

    move-result v8

    .line 698
    .local v8, size:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel pos = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
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

    .line 704
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 706
    .local v5, num:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "num = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 709
    .local v7, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_77
    if-ge v3, v5, :cond_334

    .line 710
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v12, :cond_30a

    .line 711
    new-instance v2, Lcom/android/internal/telephony/SamsungRIL$SamsungDriverCall;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/SamsungRIL$SamsungDriverCall;-><init>(Lcom/android/internal/telephony/SamsungRIL;)V

    .line 715
    .local v2, dc:Lcom/android/internal/telephony/DriverCall;
    :goto_86
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 716
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

    .line 717
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 718
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

    .line 719
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 720
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

    .line 721
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_311

    const/4 v12, 0x1

    :goto_f3
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 722
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

    .line 723
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_314

    const/4 v12, 0x1

    :goto_116
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 724
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

    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 726
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

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 728
    .local v11, voiceSettings:I
    if-nez v11, :cond_317

    const/4 v12, 0x0

    :goto_159
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 729
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

    .line 730
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_31a

    const/4 v12, 0x1

    :goto_17c
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 732
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 734
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Samsung magic = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 736
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

    .line 737
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 738
    .local v4, np:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "np = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-static {v4}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 740
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 741
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

    .line 742
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 743
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

    .line 744
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 745
    .local v10, uusInfoPresent:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "uusInfoPresent = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v12, 0x1

    if-ne v10, v12, :cond_31d

    .line 748
    new-instance v12, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v12}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 749
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 750
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 752
    .local v9, userData:[B
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12, v9}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 753
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

    .line 757
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

    .line 759
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

    .line 766
    .end local v9           #userData:[B
    :goto_2e7
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v13, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 768
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    iget-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v12, :cond_325

    .line 771
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SamsungRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 772
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is enabled"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :goto_306
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_77

    .line 713
    .end local v2           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v4           #np:I
    .end local v10           #uusInfoPresent:I
    .end local v11           #voiceSettings:I
    :cond_30a
    new-instance v2, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .restart local v2       #dc:Lcom/android/internal/telephony/DriverCall;
    goto/16 :goto_86

    .line 721
    :cond_311
    const/4 v12, 0x0

    goto/16 :goto_f3

    .line 723
    :cond_314
    const/4 v12, 0x0

    goto/16 :goto_116

    .line 728
    .restart local v11       #voiceSettings:I
    :cond_317
    const/4 v12, 0x1

    goto/16 :goto_159

    .line 730
    :cond_31a
    const/4 v12, 0x0

    goto/16 :goto_17c

    .line 762
    .restart local v4       #np:I
    .restart local v10       #uusInfoPresent:I
    :cond_31d
    const-string v12, "RILJ"

    const-string v13, "Incoming UUS : NOT present!"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e7

    .line 774
    :cond_325
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SamsungRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 775
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is disabled"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_306

    .line 779
    .end local v2           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v4           #np:I
    .end local v10           #uusInfoPresent:I
    .end local v11           #voiceSettings:I
    :cond_334
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 781
    return-object v7
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

    .line 973
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    .line 975
    .local v1, response:[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v9, :cond_36

    .line 977
    const-string/jumbo v3, "ril.prl_ver_1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v5

    .line 978
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

    .line 982
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

    .line 786
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 788
    .local v0, response:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v1, :cond_23

    array-length v1, v0

    if-lez v1, :cond_23

    aget v1, v0, v3

    const v2, 0xffff

    if-ne v1, v2, :cond_23

    .line 792
    const-string v1, "RILJ"

    const-string v2, "Overriding ERROR_UNSPECIFIED fail cause with NORMAL_CLEARING."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/16 v1, 0x10

    aput v1, v0, v3

    .line 796
    :cond_23
    return-object v0
.end method

.method protected responseNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 6
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 866
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 869
    .local v0, response:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-nez v1, :cond_1c

    aget v1, v0, v3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1c

    .line 870
    const-string v1, "RILJ"

    const-string v2, "Overriding network type response from global to WCDMA preferred"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    aput v3, v0, v3

    .line 874
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

    .line 880
    new-instance v0, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v0}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 881
    .local v0, dataCall:Lcom/android/internal/telephony/DataCallState;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 883
    .local v2, strings:[Ljava/lang/String;
    array-length v3, v2

    if-lt v3, v8, :cond_d6

    .line 884
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 886
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v3, :cond_c2

    .line 888
    aget-object v3, v2, v6

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SamsungRIL;->startPppdCdmaService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 890
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DataCallState;->status:I

    .line 921
    :cond_30
    :goto_30
    return-object v0

    .line 895
    :cond_31
    const-string/jumbo v3, "net.cdma.ppp.interface"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 896
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

    .line 898
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

    .line 899
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

    .line 900
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

    .line 903
    .end local v1           #ifprop:Ljava/lang/String;
    :cond_c2
    aget-object v3, v2, v6

    iput-object v3, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 905
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_30

    .line 906
    aget-object v3, v2, v8

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    goto/16 :goto_30

    .line 910
    :cond_d6
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v3, :cond_e9

    .line 914
    const-string v3, "RILJ"

    const-string v4, "Set ril.cdma.data_state=0 to make sure pppd_cdma is stopped."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string/jumbo v3, "ril.cdma.data_state"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
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

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 803
    const/16 v1, 0xc

    .line 807
    .local v1, numInts:I
    new-array v2, v1, [I

    .line 809
    .local v2, response:[I
    const-string v3, "SPH-D710"

    const-string/jumbo v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 810
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v1, :cond_3d

    .line 811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 810
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 817
    .end local v0           #i:I
    :cond_24
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_25
    const/4 v3, 0x7

    if-ge v0, v3, :cond_31

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 821
    :cond_31
    const/4 v0, 0x7

    :goto_32
    if-ge v0, v1, :cond_39

    .line 822
    aput v4, v2, v0

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 825
    :cond_39
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v3, :cond_3e

    .line 847
    :cond_3d
    :goto_3d
    return-object v2

    .line 831
    :cond_3e
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungRIL;->mSignalbarCount:Z

    if-eqz v3, :cond_82

    .line 835
    aget v3, v2, v6

    const v5, 0xff00

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x8

    mul-int/lit8 v3, v3, 0x3

    aput v3, v2, v6

    .line 839
    :goto_4e
    const/4 v3, 0x1

    aput v4, v2, v3

    .line 840
    aget v3, v2, v7

    if-gez v3, :cond_89

    const/16 v3, -0x78

    :goto_57
    aput v3, v2, v7

    .line 841
    aget v3, v2, v8

    if-gez v3, :cond_8d

    const/16 v3, -0xa0

    :goto_5f
    aput v3, v2, v8

    .line 842
    aget v3, v2, v9

    if-gez v3, :cond_91

    const/16 v3, -0x78

    :goto_67
    aput v3, v2, v9

    .line 843
    const/4 v5, 0x5

    const/4 v3, 0x5

    aget v3, v2, v3

    if-gez v3, :cond_95

    move v3, v4

    :goto_70
    aput v3, v2, v5

    .line 844
    const/4 v3, 0x6

    aget v3, v2, v3

    if-ltz v3, :cond_7e

    const/4 v3, 0x6

    aget v3, v2, v3

    const/16 v5, 0x8

    if-le v3, v5, :cond_3d

    .line 845
    :cond_7e
    const/4 v3, 0x6

    aput v4, v2, v3

    goto :goto_3d

    .line 837
    :cond_82
    aget v3, v2, v6

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v6

    goto :goto_4e

    .line 840
    :cond_89
    aget v3, v2, v7

    neg-int v3, v3

    goto :goto_57

    .line 841
    :cond_8d
    aget v3, v2, v8

    neg-int v3, v3

    goto :goto_5f

    .line 842
    :cond_91
    aget v3, v2, v9

    neg-int v3, v3

    goto :goto_67

    .line 843
    :cond_95
    const/4 v3, 0x5

    aget v3, v2, v3

    neg-int v3, v3

    goto :goto_70
.end method

.method protected responseVoiceRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 8
    .parameter "p"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/16 v3, 0x10

    const/4 v2, 0x6

    .line 852
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 854
    .local v0, response:[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungRIL;->mIsSamsungCdma:Z

    if-eqz v1, :cond_39

    array-length v1, v0

    if-le v1, v2, :cond_39

    .line 856
    aget-object v1, v0, v4

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 857
    aget-object v1, v0, v5

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 858
    aget-object v1, v0, v2

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 861
    :cond_39
    return-object v0
.end method

.method public setCurrentPreferredNetworkType()V
    .registers 2

    .prologue
    .line 1068
    const-string/jumbo v0, "setCurrentPreferredNetworkType IGNORED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungRIL;->riljLog(Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 7
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 1081
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungRIL;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1084
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1086
    new-instance v1, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/SamsungRIL;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;-><init>(Lcom/android/internal/telephony/SamsungRIL;Landroid/content/Context;)V

    .line 1087
    .local v1, handler:Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->setPreferedNetworkType(ILandroid/os/Message;)V

    .line 1091
    .end local v1           #handler:Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;
    :goto_1a
    return-void

    .line 1089
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

    .line 62
    const/16 v1, 0x17

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 65
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    if-eqz p1, :cond_3c

    .line 67
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
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

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 76
    return-void

    .line 70
    :cond_3c
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14
.end method
