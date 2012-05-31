.class public Lcom/android/internal/telephony/LGEQualcommRIL;
.super Lcom/android/internal/telephony/RIL;
.source "LGEQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGEQualcommRIL$1;,
        Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;
    }
.end annotation


# instance fields
.field RILJ_LOGD:Z

.field RILJ_LOGV:Z

.field private final RIL_INT_RADIO_OFF:I

.field private final RIL_INT_RADIO_ON:I

.field private final RIL_INT_RADIO_ON_NG:I

.field private final RIL_INT_RADIO_UNAVALIABLE:I

.field protected mAid:Ljava/lang/String;

.field protected mIccHandler:Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;

.field protected mIccThread:Landroid/os/HandlerThread;

.field protected mPinState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGV:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RIL_INT_RADIO_OFF:I

    .line 58
    iput v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RIL_INT_RADIO_UNAVALIABLE:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RIL_INT_RADIO_ON:I

    .line 60
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RIL_INT_RADIO_ON_NG:I

    .line 65
    return-void
.end method

.method private setRadioStateFromRILInt(I)V
    .registers 8
    .parameter "stateCode"

    .prologue
    const/4 v4, 0x0

    .line 303
    sparse-switch p1, :sswitch_data_60

    .line 334
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

    .line 305
    :sswitch_1d
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 306
    .local v2, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;

    if-eqz v3, :cond_27

    .line 307
    iput-object v4, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 308
    iput-object v4, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;

    .line 337
    :cond_27
    :goto_27
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 338
    return-void

    .line 312
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2b
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 313
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_27

    .line 316
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2e
    iget-object v3, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;

    if-nez v3, :cond_52

    .line 317
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "IccHandler"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, handlerThread:Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 320
    iget-object v3, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 322
    iget-object v3, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 323
    .local v1, looper:Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;

    invoke-direct {v3, p0, p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;-><init>(Lcom/android/internal/telephony/LGEQualcommRIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;

    .line 324
    iget-object v3, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->run()V

    .line 326
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :cond_52
    iget v3, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mPhoneType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5d

    .line 327
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 331
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_59
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_27

    .line 329
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_5d
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_59

    .line 303
    :sswitch_data_60
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1 -> :sswitch_2b
        0x2 -> :sswitch_2e
        0xa -> :sswitch_2e
    .end sparse-switch
.end method


# virtual methods
.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 520
    const/4 v1, 0x6

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 522
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_2d

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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 524
    :cond_2d
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 529
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 536
    const/4 v1, 0x7

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 538
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_2d

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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 540
    :cond_2d
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 545
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 859
    const-string/jumbo v1, "ro.cm.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "e73"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_41

    .line 861
    const/16 v1, 0xdc

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 864
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_3d

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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 866
    :cond_3d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 870
    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    :goto_40
    return-void

    .line 868
    :cond_41
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->getBasebandVersion(Landroid/os/Message;)V

    goto :goto_40
.end method

.method protected getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;
    .registers 10
    .parameter "p"
    .parameter "version"

    .prologue
    .line 770
    new-instance v1, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v1}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 772
    .local v1, dataCall:Lcom/android/internal/telephony/DataCallState;
    const-string v3, "datacall"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LGEQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v2

    .line 774
    .local v2, oldRil:Z
    if-nez v2, :cond_12

    .line 775
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;

    move-result-object v1

    .line 794
    .end local v1           #dataCall:Lcom/android/internal/telephony/DataCallState;
    :goto_11
    return-object v1

    .line 777
    .restart local v1       #dataCall:Lcom/android/internal/telephony/DataCallState;
    :cond_12
    const/4 v3, 0x3

    iput v3, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 781
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 784
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 786
    :cond_3c
    const-string/jumbo v3, "rmnet0"

    iput-object v3, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 790
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 791
    iget-object v3, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "net."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dns1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 792
    iget-object v3, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "net."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dns2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto/16 :goto_11
.end method

.method public getIMSI(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    const/16 v3, 0xb

    .line 563
    invoke-static {v3, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 565
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_4b

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

    iget-object v2, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 573
    :cond_4b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 574
    return-void
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
    .line 608
    const/16 v1, 0x1c

    invoke-static {v1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 611
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 612
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_b9

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

    iget-object v2, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 629
    :cond_b9
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 630
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)V
    .registers 12
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 74
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/LGEQualcommRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 80
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_33

    .line 81
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

    .line 246
    :goto_32
    return-void

    .line 86
    :cond_33
    const/4 v2, 0x0

    .line 88
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_b9

    .line 91
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

    .line 93
    const/16 v6, 0x33

    iput v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 97
    :cond_55
    :try_start_55
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_37a

    .line 213
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

    .line 215
    :catch_75
    move-exception v5

    .line 218
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

    invoke-static {v8}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_b0

    .line 223
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 224
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 226
    :cond_b0
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_32

    .line 103
    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_b5
    :try_start_b5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_b8} :catch_75

    move-result-object v2

    .line 231
    .end local v2           #ret:Ljava/lang/Object;
    :cond_b9
    :goto_b9
    if-eqz v0, :cond_32e

    .line 232
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 233
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_32

    .line 104
    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_c3
    :try_start_c3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 105
    :pswitch_c8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 106
    :pswitch_cd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 107
    :pswitch_d2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 108
    :pswitch_d7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 109
    :pswitch_dc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 110
    :pswitch_e1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 111
    :pswitch_e6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 112
    :pswitch_eb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 113
    :pswitch_f0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 114
    :pswitch_f5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 115
    :pswitch_fa
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 116
    :pswitch_ff
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 117
    :pswitch_104
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 118
    :pswitch_109
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 119
    :pswitch_10e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 120
    :pswitch_113
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 121
    :pswitch_118
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 122
    :pswitch_11d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 123
    :pswitch_122
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 124
    :pswitch_127
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 125
    :pswitch_12c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 126
    :pswitch_131
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b9

    .line 127
    :pswitch_136
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 128
    :pswitch_13c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 129
    :pswitch_142
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 130
    :pswitch_148
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 131
    :pswitch_14e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 132
    :pswitch_154
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 133
    :pswitch_15a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 134
    :pswitch_160
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 135
    :pswitch_166
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 136
    :pswitch_16c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 137
    :pswitch_172
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 138
    :pswitch_178
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 139
    :pswitch_17e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 140
    :pswitch_184
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 141
    :pswitch_18a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 142
    :pswitch_190
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 143
    :pswitch_196
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 144
    :pswitch_19c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 145
    :pswitch_1a2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 146
    :pswitch_1a8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 147
    :pswitch_1ae
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 148
    :pswitch_1b4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 149
    :pswitch_1ba
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 150
    :pswitch_1c0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 151
    :pswitch_1c6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 152
    :pswitch_1cc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 153
    :pswitch_1d2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 154
    :pswitch_1d8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 155
    :pswitch_1de
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 156
    :pswitch_1e4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 157
    :pswitch_1ea
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 158
    :pswitch_1f0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 159
    :pswitch_1f6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 160
    :pswitch_1fc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 161
    :pswitch_202
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 162
    :pswitch_208
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 163
    :pswitch_20e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 164
    :pswitch_214
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 165
    :pswitch_21a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 166
    :pswitch_220
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 167
    :pswitch_226
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 168
    :pswitch_22c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 169
    :pswitch_232
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 170
    :pswitch_238
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 171
    :pswitch_23e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 172
    :pswitch_244
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 173
    :pswitch_24a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 174
    :pswitch_250
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 175
    :pswitch_256
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 176
    :pswitch_25c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 177
    :pswitch_262
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 178
    :pswitch_268
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 179
    :pswitch_26e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 180
    :pswitch_274
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 181
    :pswitch_27a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 182
    :pswitch_280
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 183
    :pswitch_286
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 184
    :pswitch_28c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 185
    :pswitch_292
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 186
    :pswitch_298
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 187
    :pswitch_29e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 188
    :pswitch_2a4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 189
    :pswitch_2aa
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 190
    :pswitch_2b0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 191
    :pswitch_2b6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 192
    :pswitch_2bc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 193
    :pswitch_2c2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 194
    :pswitch_2c8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 195
    :pswitch_2ce
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 196
    :pswitch_2d4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 197
    :pswitch_2da
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 198
    :pswitch_2e0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 199
    :pswitch_2e6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 200
    :pswitch_2ec
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 201
    :pswitch_2f2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 202
    :pswitch_2f8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 203
    :pswitch_2fe
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 204
    :pswitch_304
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 205
    :pswitch_30a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 206
    :pswitch_310
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 207
    :pswitch_316
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 208
    :pswitch_31c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 209
    :pswitch_322
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b9

    .line 210
    :pswitch_328
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_32b
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_32b} :catch_75

    move-result-object v2

    goto/16 :goto_b9

    .line 237
    .end local v2           #ret:Ljava/lang/Object;
    :cond_32e
    iget-boolean v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

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

    invoke-static {v7}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 240
    :cond_366
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_374

    .line 241
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 242
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 245
    :cond_374
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_32

    .line 97
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

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 253
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .local v1, response:I
    sparse-switch v1, :sswitch_data_5c

    .line 267
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 270
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 295
    :cond_12
    :goto_12
    :sswitch_12
    return-void

    .line 256
    :sswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 257
    :sswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 274
    .local v2, ret:Ljava/lang/Object;
    :goto_1b
    sparse-switch v1, :sswitch_data_7e

    goto :goto_12

    .line 276
    :sswitch_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 277
    .local v3, state:I
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LGEQualcommRIL;->setRadioStateFromRILInt(I)V

    goto :goto_12

    .line 258
    .end local v2           #ret:Ljava/lang/Object;
    .end local v3           #state:I
    :sswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1b

    .line 259
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1b

    .line 260
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1b

    .line 261
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1b

    .line 262
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1b

    .line 263
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1b

    .line 287
    :sswitch_45
    iget-boolean v4, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_4c

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 289
    :cond_4c
    iget-object v4, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_12

    .line 290
    iget-object v4, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_12

    .line 255
    nop

    :sswitch_data_5c
    .sparse-switch
        0x3e8 -> :sswitch_13
        0x407 -> :sswitch_17
        0x408 -> :sswitch_27
        0x409 -> :sswitch_2c
        0x40a -> :sswitch_31
        0x40b -> :sswitch_36
        0x40c -> :sswitch_3b
        0x40d -> :sswitch_40
    .end sparse-switch

    .line 274
    :sswitch_data_7e
    .sparse-switch
        0x3e8 -> :sswitch_1f
        0x407 -> :sswitch_12
        0x408 -> :sswitch_12
        0x409 -> :sswitch_12
        0x40a -> :sswitch_12
        0x40b -> :sswitch_12
        0x40c -> :sswitch_12
        0x40d -> :sswitch_45
    .end sparse-switch
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 9
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 653
    const/16 v2, 0x2a

    invoke-static {v2, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 655
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v2, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    if-eqz v2, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " aid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " facility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 658
    :cond_44
    const-string v2, "SC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string/jumbo v2, "ro.cm.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "e73"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6b

    .line 660
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 661
    .local v0, iccstatus:[I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mPinState:I

    aput v3, v0, v2

    .line 662
    const/4 v2, 0x0

    invoke-static {p4, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 663
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 676
    .end local v0           #iccstatus:[I
    :goto_6a
    return-void

    .line 666
    :cond_6b
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 669
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 670
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 672
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_6a
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 13
    .parameter "p"

    .prologue
    .line 708
    new-instance v7, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v7}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 709
    .local v7, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 710
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 712
    .local v4, gsmUmtsSubscriptionAppCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_18
    if-ge v5, v4, :cond_2a

    .line 713
    if-nez v5, :cond_26

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/IccCardStatus;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 712
    :goto_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 716
    :cond_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    goto :goto_23

    .line 719
    :cond_2a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 720
    .local v3, cdmaSubscriptionAppCount:I
    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v3, :cond_41

    .line 721
    if-nez v5, :cond_3d

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/IccCardStatus;->setCdmaSubscriptionAppIndex(I)V

    .line 720
    :goto_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 724
    :cond_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    goto :goto_3a

    .line 726
    :cond_41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 729
    .local v6, numApplications:I
    const/16 v8, 0x8

    if-le v6, v8, :cond_4b

    .line 730
    const/16 v6, 0x8

    .line 732
    :cond_4b
    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/IccCardStatus;->setNumApplications(I)V

    .line 734
    const/4 v5, 0x0

    :goto_4f
    if-ge v5, v6, :cond_ac

    .line 735
    new-instance v2, Lcom/android/internal/telephony/IccCardApplication;

    invoke-direct {v2}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .line 736
    .local v2, ca:Lcom/android/internal/telephony/IccCardApplication;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/IccCardApplication;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/IccCardApplication;->AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/IccCardApplication;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 744
    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/IccCardStatus;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 734
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 751
    .end local v2           #ca:Lcom/android/internal/telephony/IccCardApplication;
    :cond_ac
    const/4 v0, -0x1

    .line 752
    .local v0, appIndex:I
    iget v8, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mPhoneType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e6

    .line 753
    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    .line 754
    const-string v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "This is a CDMA PHONE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :goto_ce
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v1

    .line 761
    .local v1, application:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v8, v1, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    .line 762
    iget-object v8, v1, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v9, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-eq v8, v9, :cond_e2

    iget-object v8, v1, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v9, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v8, v9, :cond_103

    :cond_e2
    const/4 v8, 0x0

    :goto_e3
    iput v8, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mPinState:I

    .line 765
    return-object v7

    .line 756
    .end local v1           #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_e6
    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    .line 757
    const-string v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "This is a GSM PHONE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    .line 762
    .restart local v1       #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_103
    const/4 v8, 0x1

    goto :goto_e3
.end method

.method protected responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 10
    .parameter "p"

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 836
    .local v2, strings:[Ljava/lang/String;
    array-length v3, v2

    rem-int/lit8 v3, v3, 0x5

    if-eqz v3, :cond_2e

    .line 837
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

    .line 842
    :cond_2e
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v2

    div-int/lit8 v3, v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 844
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_37
    array-length v3, v2

    if-ge v0, v3, :cond_55

    .line 845
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

    .line 844
    add-int/lit8 v0, v0, 0x5

    goto :goto_37

    .line 853
    :cond_55
    return-object v1
.end method

.method protected responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 10
    .parameter "p"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 802
    const-string v3, "datacall"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LGEQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v2

    .line 804
    .local v2, oldRil:Z
    if-nez v2, :cond_f

    .line 805
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 827
    :goto_e
    return-object v1

    .line 807
    :cond_f
    new-instance v1, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v1}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 808
    .local v1, dataCall:Lcom/android/internal/telephony/DataCallState;
    const/4 v3, 0x3

    iput v3, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 809
    iput v6, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 810
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 811
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 812
    iget-object v3, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 813
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "RIL_REQUEST_SETUP_DATA_CALL response, no ifname"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 816
    :cond_32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 818
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 821
    :cond_44
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 822
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

    .line 823
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

    .line 824
    iput v7, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 825
    iput v6, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    goto/16 :goto_e
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 10
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 683
    const/16 v2, 0x2b

    invoke-static {v2, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 686
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v2, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    if-eqz v2, :cond_4e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " aid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " facility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lockstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 691
    :cond_4e
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 694
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 695
    if-eqz p2, :cond_7b

    const-string v0, "1"

    .line 696
    .local v0, lockString:Ljava/lang/String;
    :goto_64
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 697
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 698
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 701
    return-void

    .line 695
    .end local v0           #lockString:Ljava/lang/String;
    :cond_7b
    const-string v0, "0"

    goto :goto_64
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 635
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 639
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 642
    :cond_38
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 644
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const-string v2, "NOCHANGE"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 647
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 12
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "ipVersion"
    .parameter "result"

    .prologue
    .line 581
    const/16 v1, 0x1b

    invoke-static {v1, p8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 584
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const-string v2, "IP"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_9f

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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 599
    :cond_9f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 600
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 457
    const/4 v1, 0x2

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 460
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_2d

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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 462
    :cond_2d
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 463
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 466
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 489
    const/4 v1, 0x4

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 491
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_2d

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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 493
    :cond_2d
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 497
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 473
    const/4 v1, 0x3

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 475
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_2d

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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 477
    :cond_2d
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 482
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "puk"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 504
    const/4 v1, 0x5

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 506
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_2d

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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 508
    :cond_2d
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 509
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 513
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 550
    const/16 v1, 0x8

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 552
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL;->RILJ_LOGD:Z

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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 554
    :cond_2e
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 558
    return-void
.end method
