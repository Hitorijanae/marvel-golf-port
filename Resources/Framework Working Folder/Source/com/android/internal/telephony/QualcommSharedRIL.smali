.class public Lcom/android/internal/telephony/QualcommSharedRIL;
.super Lcom/android/internal/telephony/RIL;
.source "QualcommSharedRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/QualcommSharedRIL$1;,
        Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;
    }
.end annotation


# instance fields
.field RILJ_LOGD:Z

.field RILJ_LOGV:Z

.field private final RIL_INT_RADIO_OFF:I

.field private final RIL_INT_RADIO_ON:I

.field private final RIL_INT_RADIO_ON_HTC:I

.field private final RIL_INT_RADIO_ON_NG:I

.field private final RIL_INT_RADIO_UNAVALIABLE:I

.field protected mAid:Ljava/lang/String;

.field protected mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

.field protected mIccThread:Landroid/os/HandlerThread;

.field protected mLastDataIface:[Ljava/lang/String;

.field protected mUSIM:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 7
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 48
    iput-boolean v2, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mUSIM:Z

    .line 49
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mLastDataIface:[Ljava/lang/String;

    .line 50
    iput-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGV:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    .line 53
    iput v2, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RIL_INT_RADIO_OFF:I

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RIL_INT_RADIO_UNAVALIABLE:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RIL_INT_RADIO_ON:I

    .line 56
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RIL_INT_RADIO_ON_NG:I

    .line 57
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RIL_INT_RADIO_ON_HTC:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mSetPreferredNetworkType:I

    .line 63
    return-void
.end method

.method private notifyRegistrantsRilConnectionChanged(I)V
    .registers 6
    .parameter "rilVer"

    .prologue
    const/4 v3, 0x0

    .line 625
    iput p1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mRilVersion:I

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_16

    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 630
    :cond_16
    return-void
.end method

.method private setRadioStateFromRILInt(I)V
    .registers 8
    .parameter "stateCode"

    .prologue
    const/4 v4, 0x0

    .line 638
    sparse-switch p1, :sswitch_data_60

    .line 670
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized RIL_RadioState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 640
    :sswitch_1d
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 641
    .local v2, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    if-eqz v3, :cond_27

    .line 642
    iput-object v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 643
    iput-object v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    .line 673
    :cond_27
    :goto_27
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 674
    return-void

    .line 647
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2b
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 648
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_27

    .line 652
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2e
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    if-nez v3, :cond_52

    .line 653
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "IccHandler"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, handlerThread:Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 656
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 658
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 659
    .local v1, looper:Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    invoke-direct {v3, p0, p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;-><init>(Lcom/android/internal/telephony/QualcommSharedRIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    .line 660
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->run()V

    .line 662
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :cond_52
    iget v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mPhoneType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5d

    .line 663
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 667
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_59
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_27

    .line 665
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_5d
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_59

    .line 638
    :sswitch_data_60
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1 -> :sswitch_2b
        0x2 -> :sswitch_2e
        0xa -> :sswitch_2e
        0xd -> :sswitch_2e
    .end sparse-switch
.end method


# virtual methods
.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 73
    return-void
.end method

.method protected getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;
    .registers 12
    .parameter "p"
    .parameter "version"

    .prologue
    const/4 v8, 0x0

    .line 212
    new-instance v1, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v1}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 214
    .local v1, dataCall:Lcom/android/internal/telephony/DataCallState;
    const-string v5, "datacall"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/QualcommSharedRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v4

    .line 216
    .local v4, oldRil:Z
    if-nez v4, :cond_16

    const/4 v5, 0x5

    if-ge p2, v5, :cond_16

    .line 217
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;

    move-result-object v1

    .line 266
    .end local v1           #dataCall:Lcom/android/internal/telephony/DataCallState;
    :cond_15
    :goto_15
    return-object v1

    .line 218
    .restart local v1       #dataCall:Lcom/android/internal/telephony/DataCallState;
    :cond_16
    if-nez v4, :cond_93

    .line 219
    iput p2, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 226
    iget v5, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v6

    if-ne v5, v6, :cond_5c

    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5c

    iget v5, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v5, :cond_5c

    .line 228
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "getDataCallState, no ifname"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 230
    :cond_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 232
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 234
    :cond_6e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, dnses:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_80

    .line 236
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 238
    :cond_80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, gateways:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 240
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    goto :goto_15

    .line 243
    .end local v0           #addresses:Ljava/lang/String;
    .end local v2           #dnses:Ljava/lang/String;
    .end local v3           #gateways:Ljava/lang/String;
    :cond_93
    const/4 v5, 0x4

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 247
    iget-object v5, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mLastDataIface:[Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    aget-object v5, v5, v6

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 250
    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 251
    iget-object v5, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mLastDataIface:[Ljava/lang/String;

    aget-object v5, v5, v8

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 254
    :cond_c1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .restart local v0       #addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d3

    .line 256
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 258
    :cond_d3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 261
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 262
    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "net."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dns1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 263
    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "net."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".dns2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    goto/16 :goto_15
.end method

.method public getIMSI(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    const/16 v3, 0xb

    .line 102
    invoke-static {v3, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 104
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> getIMSI:RIL_REQUEST_GET_IMSI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL;->riljLog(Ljava/lang/String;)V

    .line 113
    :cond_51
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/QualcommSharedRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 114
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/QualcommSharedRIL;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_b

    .line 324
    :goto_a
    return-void

    .line 318
    :cond_b
    const/16 v1, 0x4b

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 321
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_39

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

    invoke-static {v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL;->riljLog(Ljava/lang/String;)V

    .line 323
    :cond_39
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/QualcommSharedRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_a
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 13
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 122
    const/16 v1, 0x1c

    invoke-static {v1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 125
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mUSIM:Z

    if-eqz v1, :cond_12

    .line 126
    const-string v1, "7F20$"

    const-string v2, "7FFF"

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 128
    :cond_12
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_c5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL;->riljLog(Ljava/lang/String;)V

    .line 146
    :cond_c5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/QualcommSharedRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 147
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)V
    .registers 12
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 382
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 386
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/QualcommSharedRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 388
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_33

    .line 389
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

    .line 554
    :goto_32
    return-void

    .line 394
    :cond_33
    const/4 v2, 0x0

    .line 396
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_b9

    .line 399
    :cond_3c
    const-string/jumbo v6, "ro.cm.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "e73"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_55

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v7, 0xdc

    if-ne v6, v7, :cond_55

    .line 401
    const/16 v6, 0x33

    iput v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 405
    :cond_55
    :try_start_55
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_37a

    .line 521
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
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_75} :catch_75

    .line 523
    :catch_75
    move-exception v5

    .line 526
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

    invoke-static {v8}, Lcom/android/internal/telephony/QualcommSharedRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_b0

    .line 531
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 532
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 534
    :cond_b0
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_32

    .line 411
    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_b5
    :try_start_b5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_b8} :catch_75

    move-result-object v2

    .line 539
    .end local v2           #ret:Ljava/lang/Object;
    :cond_b9
    :goto_b9
    if-eqz v0, :cond_32e

    .line 540
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 541
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_32

    .line 412
    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_c3
    :try_start_c3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 413
    :pswitch_c8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 414
    :pswitch_cd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 415
    :pswitch_d2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 416
    :pswitch_d7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 417
    :pswitch_dc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 418
    :pswitch_e1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 419
    :pswitch_e6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 420
    :pswitch_eb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 421
    :pswitch_f0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 422
    :pswitch_f5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 423
    :pswitch_fa
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 424
    :pswitch_ff
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 425
    :pswitch_104
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 426
    :pswitch_109
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 427
    :pswitch_10e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 428
    :pswitch_113
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 429
    :pswitch_118
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 430
    :pswitch_11d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 431
    :pswitch_122
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 432
    :pswitch_127
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 433
    :pswitch_12c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 434
    :pswitch_131
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 435
    :pswitch_136
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 436
    :pswitch_13c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 437
    :pswitch_142
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 438
    :pswitch_148
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 439
    :pswitch_14e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 440
    :pswitch_154
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 441
    :pswitch_15a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 442
    :pswitch_160
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 443
    :pswitch_166
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 444
    :pswitch_16c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 445
    :pswitch_172
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 446
    :pswitch_178
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 447
    :pswitch_17e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 448
    :pswitch_184
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 449
    :pswitch_18a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 450
    :pswitch_190
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 451
    :pswitch_196
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 452
    :pswitch_19c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 453
    :pswitch_1a2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 454
    :pswitch_1a8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 455
    :pswitch_1ae
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 456
    :pswitch_1b4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 457
    :pswitch_1ba
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 458
    :pswitch_1c0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 459
    :pswitch_1c6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 460
    :pswitch_1cc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 461
    :pswitch_1d2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 462
    :pswitch_1d8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 463
    :pswitch_1de
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 464
    :pswitch_1e4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 465
    :pswitch_1ea
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 466
    :pswitch_1f0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 467
    :pswitch_1f6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 468
    :pswitch_1fc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 469
    :pswitch_202
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 470
    :pswitch_208
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 471
    :pswitch_20e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 472
    :pswitch_214
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 473
    :pswitch_21a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 474
    :pswitch_220
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 475
    :pswitch_226
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 476
    :pswitch_22c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 477
    :pswitch_232
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 478
    :pswitch_238
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 479
    :pswitch_23e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 480
    :pswitch_244
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 481
    :pswitch_24a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 482
    :pswitch_250
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 483
    :pswitch_256
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 484
    :pswitch_25c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 485
    :pswitch_262
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 486
    :pswitch_268
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 487
    :pswitch_26e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 488
    :pswitch_274
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 489
    :pswitch_27a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 490
    :pswitch_280
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 491
    :pswitch_286
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 492
    :pswitch_28c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 493
    :pswitch_292
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 494
    :pswitch_298
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 495
    :pswitch_29e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 496
    :pswitch_2a4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 497
    :pswitch_2aa
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 498
    :pswitch_2b0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 499
    :pswitch_2b6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 500
    :pswitch_2bc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 501
    :pswitch_2c2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 502
    :pswitch_2c8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 503
    :pswitch_2ce
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 504
    :pswitch_2d4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 505
    :pswitch_2da
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 506
    :pswitch_2e0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 507
    :pswitch_2e6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 508
    :pswitch_2ec
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 509
    :pswitch_2f2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 510
    :pswitch_2f8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 511
    :pswitch_2fe
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 512
    :pswitch_304
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 513
    :pswitch_30a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 514
    :pswitch_310
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 515
    :pswitch_316
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 516
    :pswitch_31c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 517
    :pswitch_322
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 518
    :pswitch_328
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_32b
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_32b} :catch_75

    move-result-object v2

    goto/16 :goto_b9

    .line 545
    .end local v2           #ret:Ljava/lang/Object;
    :cond_32e
    iget-boolean v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v6, :cond_366

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

    invoke-static {v7}, Lcom/android/internal/telephony/QualcommSharedRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/QualcommSharedRIL;->riljLog(Ljava/lang/String;)V

    .line 548
    :cond_366
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_374

    .line 549
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 550
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 553
    :cond_374
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_32

    .line 405
    nop

    :pswitch_data_37a
    .packed-switch 0x1
        :pswitch_b5
        :pswitch_c3
        :pswitch_c8
        :pswitch_cd
        :pswitch_d2
        :pswitch_d7
        :pswitch_dc
        :pswitch_e1
        :pswitch_e6
        :pswitch_eb
        :pswitch_f0
        :pswitch_f5
        :pswitch_fa
        :pswitch_ff
        :pswitch_104
        :pswitch_109
        :pswitch_10e
        :pswitch_113
        :pswitch_118
        :pswitch_11d
        :pswitch_122
        :pswitch_127
        :pswitch_12c
        :pswitch_131
        :pswitch_136
        :pswitch_13c
        :pswitch_142
        :pswitch_148
        :pswitch_14e
        :pswitch_154
        :pswitch_15a
        :pswitch_160
        :pswitch_166
        :pswitch_16c
        :pswitch_172
        :pswitch_178
        :pswitch_17e
        :pswitch_184
        :pswitch_18a
        :pswitch_190
        :pswitch_196
        :pswitch_19c
        :pswitch_1a2
        :pswitch_1a8
        :pswitch_1ae
        :pswitch_1b4
        :pswitch_1ba
        :pswitch_1c0
        :pswitch_1c6
        :pswitch_1cc
        :pswitch_1d2
        :pswitch_1d8
        :pswitch_1de
        :pswitch_1e4
        :pswitch_1ea
        :pswitch_1f0
        :pswitch_1f6
        :pswitch_1fc
        :pswitch_202
        :pswitch_208
        :pswitch_20e
        :pswitch_214
        :pswitch_21a
        :pswitch_220
        :pswitch_226
        :pswitch_22c
        :pswitch_232
        :pswitch_238
        :pswitch_23e
        :pswitch_244
        :pswitch_24a
        :pswitch_250
        :pswitch_256
        :pswitch_25c
        :pswitch_262
        :pswitch_268
        :pswitch_26e
        :pswitch_274
        :pswitch_27a
        :pswitch_280
        :pswitch_286
        :pswitch_28c
        :pswitch_292
        :pswitch_298
        :pswitch_29e
        :pswitch_2d4
        :pswitch_2a4
        :pswitch_2aa
        :pswitch_2b0
        :pswitch_2b6
        :pswitch_2bc
        :pswitch_2c2
        :pswitch_2c8
        :pswitch_2ce
        :pswitch_2da
        :pswitch_2e0
        :pswitch_2e6
        :pswitch_2ec
        :pswitch_2fe
        :pswitch_2f2
        :pswitch_2f8
        :pswitch_304
        :pswitch_30a
        :pswitch_310
        :pswitch_316
        :pswitch_31c
        :pswitch_322
        :pswitch_328
    .end packed-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .registers 9
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 561
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 565
    .local v1, response:I
    const-string v4, "datacall"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/QualcommSharedRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 566
    packed-switch v1, :pswitch_data_74

    .line 576
    :cond_14
    sparse-switch v1, :sswitch_data_80

    .line 586
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 589
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 617
    :cond_1d
    :goto_1d
    :sswitch_1d
    return-void

    .line 571
    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 572
    .local v2, ret:Ljava/lang/Object;
    goto :goto_1d

    .line 577
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 593
    .restart local v2       #ret:Ljava/lang/Object;
    :goto_27
    sparse-switch v1, :sswitch_data_9a

    goto :goto_1d

    .line 595
    :sswitch_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 596
    .local v3, state:I
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/QualcommSharedRIL;->setRadioStateFromRILInt(I)V

    goto :goto_1d

    .line 578
    .end local v2           #ret:Ljava/lang/Object;
    .end local v3           #state:I
    :sswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_27

    .line 579
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_27

    .line 580
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_27

    .line 581
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_27

    .line 582
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_27

    .line 599
    :sswitch_4c
    iget-boolean v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_53

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 601
    :cond_53
    check-cast v2, [I

    .end local v2           #ret:Ljava/lang/Object;
    check-cast v2, [I

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/QualcommSharedRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto :goto_1d

    .line 607
    .restart local v2       #ret:Ljava/lang/Object;
    :sswitch_5e
    iget-boolean v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_65

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 609
    :cond_65
    iget-object v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1d

    .line 610
    iget-object v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1d

    .line 566
    :pswitch_data_74
    .packed-switch 0x407
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    .line 576
    :sswitch_data_80
    .sparse-switch
        0x3e8 -> :sswitch_23
        0x40a -> :sswitch_33
        0x40b -> :sswitch_38
        0x40c -> :sswitch_3d
        0x40d -> :sswitch_42
        0x40e -> :sswitch_47
    .end sparse-switch

    .line 593
    :sswitch_data_9a
    .sparse-switch
        0x3e8 -> :sswitch_2b
        0x40a -> :sswitch_4c
        0x40b -> :sswitch_1d
        0x40c -> :sswitch_1d
        0x40d -> :sswitch_5e
    .end sparse-switch
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 11
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 89
    iget-object v4, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/QualcommSharedRIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 90
    return-void
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 11
    .parameter "p"

    .prologue
    .line 154
    new-instance v5, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 155
    .local v5, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setCdmaSubscriptionAppIndex(I)V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setImsSubscriptionAppIndex(I)V

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 165
    .local v4, numApplications:I
    const/16 v6, 0x8

    if-le v4, v6, :cond_32

    .line 166
    const/16 v4, 0x8

    .line 168
    :cond_32
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/IccCardStatus;->setNumApplications(I)V

    .line 170
    const/4 v3, 0x0

    .local v3, i:I
    :goto_36
    if-ge v3, v4, :cond_93

    .line 171
    new-instance v2, Lcom/android/internal/telephony/IccCardApplication;

    invoke-direct {v2}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .line 172
    .local v2, ca:Lcom/android/internal/telephony/IccCardApplication;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 184
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/IccCardStatus;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 186
    .end local v2           #ca:Lcom/android/internal/telephony/IccCardApplication;
    :cond_93
    const/4 v0, -0x1

    .line 187
    .local v0, appIndex:I
    iget v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mPhoneType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f3

    .line 188
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    .line 189
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a CDMA PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_b5
    if-lez v4, :cond_f2

    .line 196
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v1

    .line 197
    .local v1, application:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    .line 198
    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v7, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v6, v7, :cond_110

    const/4 v6, 0x1

    :goto_c6
    iput-boolean v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mUSIM:Z

    .line 200
    iget v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mPreferredNetworkType:I

    iput v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mSetPreferredNetworkType:I

    .line 202
    iget-object v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 203
    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    .line 204
    :cond_d8
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v1           #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_f2
    return-object v5

    .line 191
    :cond_f3
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    .line 192
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a GSM PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 198
    .restart local v1       #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_110
    const/4 v6, 0x0

    goto :goto_c6
.end method

.method protected responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 10
    .parameter "p"

    .prologue
    .line 821
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 824
    .local v2, strings:[Ljava/lang/String;
    array-length v3, v2

    rem-int/lit8 v3, v3, 0x5

    if-eqz v3, :cond_2e

    .line 825
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS: invalid response. Got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strings, expected multiple of 5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 830
    :cond_2e
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v2

    div-int/lit8 v3, v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 832
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_37
    array-length v3, v2

    if-ge v0, v3, :cond_55

    .line 833
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo;

    add-int/lit8 v4, v0, 0x0

    aget-object v4, v2, v4

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v2, v5

    add-int/lit8 v6, v0, 0x2

    aget-object v6, v2, v6

    add-int/lit8 v7, v0, 0x3

    aget-object v7, v2, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    add-int/lit8 v0, v0, 0x5

    goto :goto_37

    .line 841
    :cond_55
    return-object v1
.end method

.method protected responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 10
    .parameter "p"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 274
    const-string v3, "datacall"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/QualcommSharedRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v2

    .line 276
    .local v2, oldRil:Z
    if-nez v2, :cond_f

    .line 277
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 310
    :goto_e
    return-object v1

    .line 279
    :cond_f
    new-instance v1, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v1}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 280
    .local v1, dataCall:Lcom/android/internal/telephony/DataCallState;
    const/4 v3, 0x4

    iput v3, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 282
    iput v6, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 285
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v4

    if-ne v3, v4, :cond_40

    iget-object v3, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v3, :cond_40

    .line 287
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "RIL_REQUEST_SETUP_DATA_CALL response, no ifname"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 291
    :cond_40
    const-string/jumbo v3, "singlepdp"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/QualcommSharedRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 292
    iget-object v3, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 296
    :cond_5d
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mLastDataIface:[Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 301
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 304
    :cond_77
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 305
    iget-object v3, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "net."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 306
    iget-object v3, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "net."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 307
    iput v7, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 308
    iput v6, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    goto/16 :goto_e
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 10
    .parameter "p"

    .prologue
    const/4 v7, -0x1

    .line 349
    const/16 v2, 0xc

    .line 352
    .local v2, numInts:I
    const-string/jumbo v5, "signalstrength"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/QualcommSharedRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v3

    .line 353
    .local v3, oldRil:Z
    const/4 v1, 0x0

    .line 356
    .local v1, noLte:Z
    new-array v4, v2, [I

    .line 357
    .local v4, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v2, :cond_3f

    .line 358
    if-nez v3, :cond_14

    if-eqz v1, :cond_38

    :cond_14
    const/4 v5, 0x6

    if-le v0, v5, :cond_38

    const/16 v5, 0xc

    if-ge v0, v5, :cond_38

    .line 359
    aput v7, v4, v0

    .line 363
    :goto_1d
    const/4 v5, 0x7

    if-ne v0, v5, :cond_29

    aget v5, v4, v0

    const/16 v6, 0x63

    if-ne v5, v6, :cond_29

    .line 364
    aput v7, v4, v0

    .line 365
    const/4 v1, 0x1

    .line 367
    :cond_29
    const/16 v5, 0x8

    if-ne v0, v5, :cond_35

    if-nez v1, :cond_35

    .line 368
    aget v5, v4, v0

    mul-int/lit8 v5, v5, -0x1

    aput v5, v4, v0

    .line 357
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 361
    :cond_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aput v5, v4, v0

    goto :goto_1d

    .line 372
    :cond_3f
    return-object v4
.end method

.method public setCurrentPreferredNetworkType()V
    .registers 3

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentPreferredNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mSetPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/QualcommSharedRIL;->riljLog(Ljava/lang/String;)V

    .line 329
    :cond_1d
    iget v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mSetPreferredNetworkType:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 330
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 13
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 96
    iget-object v5, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/QualcommSharedRIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 97
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 804
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 808
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_38

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

    invoke-static {v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL;->riljLog(Ljava/lang/String;)V

    .line 811
    :cond_38
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 813
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const-string v2, "NOCHANGE"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/QualcommSharedRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 816
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 4
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mUSIM:Z

    if-nez v0, :cond_d

    const/16 v0, 0x9

    if-ne p1, v0, :cond_d

    iget v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mSetPreferredNetworkType:I

    if-ltz v0, :cond_d

    .line 339
    const/4 p1, 0x0

    .line 341
    :cond_d
    iput p1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mSetPreferredNetworkType:I

    .line 343
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 344
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/QualcommSharedRIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 68
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 78
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 83
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 791
    const/16 v1, 0x8

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 793
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_2e

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

    invoke-static {v2}, Lcom/android/internal/telephony/QualcommSharedRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL;->riljLog(Ljava/lang/String;)V

    .line 795
    :cond_2e
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/QualcommSharedRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 799
    return-void
.end method
