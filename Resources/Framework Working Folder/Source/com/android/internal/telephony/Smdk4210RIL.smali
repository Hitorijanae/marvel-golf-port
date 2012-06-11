.class public Lcom/android/internal/telephony/Smdk4210RIL;
.super Lcom/android/internal/telephony/RIL;
.source "Smdk4210RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Smdk4210RIL$1;,
        Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;
    }
.end annotation


# static fields
.field static final RIL_REQUEST_DIAL_EMERGENCY:I = 0x2720

.field static final RIL_UNSOL_DEVICE_READY_NOTI:I = 0x2b00

.field static final RIL_UNSOL_HSDPA_STATE_CHANGED:I = 0x2b08

.field static final RIL_UNSOL_O2_HOME_ZONE_INFO:I = 0x2aff

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST_1:I = 0x2b02

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST_2:I = 0x2b03

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST_3:I = 0x2b04

.field static final RIL_UNSOL_STK_SEND_SMS_RESULT:I = 0x2afa


# instance fields
.field protected mSmdk4210Handler:Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;

.field protected mSmdk4210Thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 81
    return-void
.end method

.method private NeedReconnect()Z
    .registers 5

    .prologue
    .line 95
    iget-object v2, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 97
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 99
    .local v1, ni_active:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    :goto_2a
    return v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/Smdk4210RIL;ILandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/Smdk4210RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    return-void
.end method

.method private notifyRegistrantsRilConnectionChanged(I)V
    .registers 6
    .parameter "rilVer"

    .prologue
    const/4 v3, 0x0

    .line 813
    iput p1, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mRilVersion:I

    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_16

    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 818
    :cond_16
    return-void
.end method

.method private sendPreferedNetworktype(ILandroid/os/Message;)V
    .registers 6
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 136
    const/16 v1, 0x49

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 139
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
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

    invoke-static {v2}, Lcom/android/internal/telephony/Smdk4210RIL;->requestToString(I)Ljava/lang/String;

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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->riljLog(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Smdk4210RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 146
    return-void
.end method


# virtual methods
.method protected processSolicited(Landroid/os/Parcel;)V
    .registers 12
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 239
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/Smdk4210RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 245
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_33

    .line 246
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

    .line 412
    :goto_32
    return-void

    .line 251
    :cond_33
    const/4 v2, 0x0

    .line 253
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_9f

    .line 255
    :cond_3c
    :try_start_3c
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_38c

    .line 363
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
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_5c} :catch_5c

    .line 365
    :catch_5c
    move-exception v5

    .line 368
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

    invoke-static {v8}, Lcom/android/internal/telephony/Smdk4210RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_97

    .line 373
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 374
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 376
    :cond_97
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_32

    .line 257
    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_9b
    :try_start_9b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9e} :catch_5c

    move-result-object v2

    .line 381
    .end local v2           #ret:Ljava/lang/Object;
    :cond_9f
    :goto_9f
    if-eqz v0, :cond_30f

    .line 383
    const/4 v6, -0x1

    if-ne v0, v6, :cond_aa

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v7, 0x19

    if-eq v6, v7, :cond_30b

    .line 385
    :cond_aa
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 386
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_32

    .line 258
    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_b1
    :try_start_b1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 259
    :pswitch_b6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 260
    :pswitch_bb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 261
    :pswitch_c0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 262
    :pswitch_c5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 263
    :pswitch_ca
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 264
    :pswitch_cf
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 265
    :pswitch_d4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 266
    :pswitch_d9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 267
    :pswitch_de
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 268
    :pswitch_e3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 269
    :pswitch_e8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 270
    :pswitch_ed
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 271
    :pswitch_f2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 272
    :pswitch_f7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 273
    :pswitch_fc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 274
    :pswitch_101
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 275
    :pswitch_106
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 276
    :pswitch_10b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 277
    :pswitch_110
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 278
    :pswitch_115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 279
    :pswitch_11a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 280
    :pswitch_11f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 281
    :pswitch_125
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 282
    :pswitch_12b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 283
    :pswitch_131
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 284
    :pswitch_137
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 285
    :pswitch_13d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 286
    :pswitch_143
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 287
    :pswitch_149
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 288
    :pswitch_14f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 289
    :pswitch_155
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 290
    :pswitch_15b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 291
    :pswitch_161
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 292
    :pswitch_167
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 293
    :pswitch_16d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 294
    :pswitch_173
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 295
    :pswitch_179
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 296
    :pswitch_17f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 297
    :pswitch_185
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 298
    :pswitch_18b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 299
    :pswitch_191
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 300
    :pswitch_197
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 301
    :pswitch_19d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 302
    :pswitch_1a3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 303
    :pswitch_1a9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 304
    :pswitch_1af
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 305
    :pswitch_1b5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 306
    :pswitch_1bb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 307
    :pswitch_1c1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 308
    :pswitch_1c7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 309
    :pswitch_1cd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 310
    :pswitch_1d3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 311
    :pswitch_1d9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 312
    :pswitch_1df
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 313
    :pswitch_1e5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 314
    :pswitch_1eb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 315
    :pswitch_1f1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 316
    :pswitch_1f7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 317
    :pswitch_1fd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 318
    :pswitch_203
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 319
    :pswitch_209
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 320
    :pswitch_20f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 321
    :pswitch_215
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 322
    :pswitch_21b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 323
    :pswitch_221
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 324
    :pswitch_227
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 325
    :pswitch_22d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 326
    :pswitch_233
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 327
    :pswitch_239
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 328
    :pswitch_23f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 329
    :pswitch_245
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 330
    :pswitch_24b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 331
    :pswitch_251
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 332
    :pswitch_257
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 333
    :pswitch_25d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 334
    :pswitch_263
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 335
    :pswitch_269
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 336
    :pswitch_26f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 337
    :pswitch_275
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 338
    :pswitch_27b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 339
    :pswitch_281
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 340
    :pswitch_287
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 341
    :pswitch_28d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 342
    :pswitch_293
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 343
    :pswitch_299
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 344
    :pswitch_29f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 345
    :pswitch_2a5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 346
    :pswitch_2ab
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 347
    :pswitch_2b1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 348
    :pswitch_2b7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 349
    :pswitch_2bd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 350
    :pswitch_2c3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 351
    :pswitch_2c9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 352
    :pswitch_2cf
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 353
    :pswitch_2d5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 354
    :pswitch_2db
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 355
    :pswitch_2e1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 356
    :pswitch_2e7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 357
    :pswitch_2ed
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 358
    :pswitch_2f3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 359
    :pswitch_2f9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 360
    :pswitch_2ff
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 361
    :pswitch_305
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_308
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_308} :catch_5c

    move-result-object v2

    goto/16 :goto_9f

    .line 391
    .end local v2           #ret:Ljava/lang/Object;
    :cond_30b
    :try_start_30b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_30e
    .catch Ljava/lang/Throwable; {:try_start_30b .. :try_end_30e} :catch_356

    move-result-object v2

    .line 403
    :cond_30f
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

    invoke-static {v7}, Lcom/android/internal/telephony/Smdk4210RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/Smdk4210RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/Smdk4210RIL;->riljLog(Ljava/lang/String;)V

    .line 406
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_351

    .line 407
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 408
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 411
    :cond_351
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_32

    .line 392
    :catch_356
    move-exception v5

    .line 393
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

    invoke-static {v8}, Lcom/android/internal/telephony/Smdk4210RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, Processing Samsung SMS fix "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 397
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_32

    .line 255
    nop

    :pswitch_data_38c
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_b1
        :pswitch_b6
        :pswitch_bb
        :pswitch_c0
        :pswitch_c5
        :pswitch_ca
        :pswitch_cf
        :pswitch_d4
        :pswitch_d9
        :pswitch_de
        :pswitch_e3
        :pswitch_e8
        :pswitch_ed
        :pswitch_f2
        :pswitch_f7
        :pswitch_fc
        :pswitch_101
        :pswitch_106
        :pswitch_10b
        :pswitch_110
        :pswitch_115
        :pswitch_11a
        :pswitch_11f
        :pswitch_125
        :pswitch_12b
        :pswitch_131
        :pswitch_137
        :pswitch_13d
        :pswitch_143
        :pswitch_149
        :pswitch_14f
        :pswitch_155
        :pswitch_15b
        :pswitch_161
        :pswitch_167
        :pswitch_16d
        :pswitch_173
        :pswitch_179
        :pswitch_17f
        :pswitch_185
        :pswitch_18b
        :pswitch_191
        :pswitch_197
        :pswitch_19d
        :pswitch_1a3
        :pswitch_1a9
        :pswitch_1af
        :pswitch_1b5
        :pswitch_1bb
        :pswitch_1c1
        :pswitch_1c7
        :pswitch_1cd
        :pswitch_1d3
        :pswitch_1d9
        :pswitch_1df
        :pswitch_1e5
        :pswitch_1eb
        :pswitch_1f1
        :pswitch_1f7
        :pswitch_1fd
        :pswitch_203
        :pswitch_209
        :pswitch_20f
        :pswitch_215
        :pswitch_21b
        :pswitch_221
        :pswitch_227
        :pswitch_22d
        :pswitch_233
        :pswitch_239
        :pswitch_23f
        :pswitch_245
        :pswitch_24b
        :pswitch_251
        :pswitch_257
        :pswitch_25d
        :pswitch_263
        :pswitch_269
        :pswitch_26f
        :pswitch_275
        :pswitch_27b
        :pswitch_281
        :pswitch_287
        :pswitch_28d
        :pswitch_2c3
        :pswitch_293
        :pswitch_299
        :pswitch_29f
        :pswitch_2a5
        :pswitch_2ab
        :pswitch_2b1
        :pswitch_2b7
        :pswitch_2bd
        :pswitch_2c9
        :pswitch_2cf
        :pswitch_2d5
        :pswitch_2db
        :pswitch_2ed
        :pswitch_2e1
        :pswitch_2e7
        :pswitch_2f3
        :pswitch_2f9
        :pswitch_2ff
        :pswitch_305
    .end packed-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .registers 27
    .parameter "p"

    .prologue
    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 422
    .local v14, response:I
    sparse-switch v14, :sswitch_data_700

    .line 465
    :try_start_7
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unrecognized unsol response: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_22} :catch_22

    .line 467
    :catch_22
    move-exception v19

    .line 468
    .local v19, tr:Ljava/lang/Throwable;
    const-string v20, "RILJ"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception processing unsol response: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Exception:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    .end local v19           #tr:Ljava/lang/Throwable;
    :cond_4b
    :goto_4b
    return-void

    .line 424
    :sswitch_4c
    :try_start_4c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4f} :catch_22

    move-result-object v16

    .line 473
    :goto_50
    packed-switch v14, :pswitch_data_796

    :pswitch_53
    goto :goto_4b

    .line 476
    :pswitch_54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    .line 477
    .local v8, newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/Smdk4210RIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_4b

    .line 425
    .end local v8           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_71
    :try_start_71
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .local v16, ret:Ljava/lang/Object;
    goto :goto_50

    .line 426
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_76
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 427
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_7b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 428
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_80
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 429
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_85
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 430
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_8a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 431
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_8f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 432
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_94
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 433
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_99
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 434
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_9e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 435
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_a3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 436
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_a8
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 437
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_ad
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 438
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_b2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 439
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_b7
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 440
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_bc
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 441
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_c1
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 442
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_c6
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 443
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_cb
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 444
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_d0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 445
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_d6
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 446
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_dc
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 447
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_e2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 448
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_e8
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 449
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_ee
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 450
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_f4
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v16

    .local v16, ret:Ljava/util/ArrayList;
    goto/16 :goto_50

    .line 451
    .end local v16           #ret:Ljava/util/ArrayList;
    :sswitch_fa
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .local v16, ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 452
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_100
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 453
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_106
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 454
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_10c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 455
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_112
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 456
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_118
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 457
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_11e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 460
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_124
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 461
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_12a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 462
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_130
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_133
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_133} :catch_22

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 482
    .end local v16           #ret:Ljava/lang/Object;
    :pswitch_136
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 488
    :pswitch_151
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 494
    :pswitch_16c
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 497
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v4, v0, [Ljava/lang/String;

    .line 499
    .local v4, a:[Ljava/lang/String;
    const/16 v20, 0x1

    check-cast v16, Ljava/lang/String;

    aput-object v16, v4, v20

    .line 503
    invoke-static {v4}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v17

    .line 504
    .local v17, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 511
    .end local v4           #a:[Ljava/lang/String;
    .end local v17           #sms:Landroid/telephony/SmsMessage;
    :pswitch_1a5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 519
    :pswitch_1d0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 521
    check-cast v16, [I

    move-object/from16 v18, v16

    check-cast v18, [I

    .line 523
    .local v18, smsIndex:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_20e

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 529
    :cond_20e
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " NEW_SMS_ON_SIM ERROR with wrong length "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_4b

    .end local v18           #smsIndex:[I
    :pswitch_22f
    move-object/from16 v20, v16

    .line 534
    check-cast v20, [Ljava/lang/String;

    move-object/from16 v13, v20

    check-cast v13, [Ljava/lang/String;

    .line 536
    .local v13, resp:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_25a

    .line 537
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v13, v0, [Ljava/lang/String;

    .line 538
    const/16 v20, 0x0

    check-cast v16, [Ljava/lang/String;

    check-cast v16, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v21, v16, v21

    aput-object v21, v13, v20

    .line 539
    const/16 v20, 0x1

    const/16 v21, 0x0

    aput-object v21, v13, v20

    .line 541
    :cond_25a
    const/16 v20, 0x0

    aget-object v20, v13, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 548
    .end local v13           #resp:[Ljava/lang/String;
    :pswitch_287
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 552
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 554
    .local v9, nitzReceiveTime:J
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/Object;

    .line 556
    .local v15, result:[Ljava/lang/Object;
    const/16 v20, 0x0

    aput-object v16, v15, v20

    .line 557
    const/16 v20, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v15, v20

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2c6

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 565
    :cond_2c6
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto/16 :goto_4b

    .line 574
    .end local v9           #nitzReceiveTime:J
    .end local v15           #result:[Ljava/lang/Object;
    :pswitch_2cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 580
    :pswitch_2f0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 586
    :pswitch_313
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 595
    :pswitch_33e
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 604
    :pswitch_367
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 613
    :pswitch_392
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 622
    :pswitch_3bd
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 631
    :pswitch_3e8
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_4b

    .line 639
    :pswitch_400
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 648
    :pswitch_42b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 657
    :pswitch_456
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 665
    :pswitch_481
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_4b

    .line 673
    :pswitch_499
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    move-object/from16 v17, v16

    .line 675
    check-cast v17, Landroid/telephony/SmsMessage;

    .line 677
    .restart local v17       #sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 684
    .end local v17           #sms:Landroid/telephony/SmsMessage;
    :pswitch_4c6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 693
    :pswitch_4ef
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_4b

    .line 701
    :pswitch_507
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_4b

    .line 709
    :pswitch_51f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 718
    :pswitch_54a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 730
    :pswitch_575
    :try_start_575
    move-object/from16 v0, v16

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0
    :try_end_57a
    .catch Ljava/lang/ClassCastException; {:try_start_575 .. :try_end_57a} :catch_595

    .line 736
    .local v7, listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_57e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 737
    .local v12, rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 738
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/Smdk4210RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_57e

    .line 731
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v12           #rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :catch_595
    move-exception v5

    .line 732
    .local v5, e:Ljava/lang/ClassCastException;
    const-string v20, "RILJ"

    const-string v21, "Unexpected exception casting to listInfoRecs"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4b

    .end local v5           #e:Ljava/lang/ClassCastException;
    :pswitch_5a3
    move-object/from16 v20, v16

    .line 743
    check-cast v20, [B

    check-cast v20, [B

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 750
    :pswitch_5d8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 752
    check-cast v16, [I

    check-cast v16, [I

    const/16 v20, 0x0

    aget v20, v16, v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_610

    const/4 v11, 0x1

    .line 753
    .local v11, playtone:Z
    :goto_5f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 752
    .end local v11           #playtone:Z
    :cond_610
    const/4 v11, 0x0

    goto :goto_5f8

    .line 759
    :pswitch_612
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 768
    :pswitch_63d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 777
    :pswitch_668
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 786
    :pswitch_693
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 795
    :pswitch_6b8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 798
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Smdk4210RIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 799
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mPreferredNetworkType:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Smdk4210RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    .line 800
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaSubscription:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Smdk4210RIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 801
    check-cast v16, [I

    check-cast v16, [I

    const/16 v20, 0x0

    aget v20, v16, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto/16 :goto_4b

    .line 422
    nop

    :sswitch_data_700
    .sparse-switch
        0x3e8 -> :sswitch_4c
        0x3e9 -> :sswitch_71
        0x3ea -> :sswitch_76
        0x3eb -> :sswitch_7b
        0x3ec -> :sswitch_80
        0x3ed -> :sswitch_85
        0x3ee -> :sswitch_8a
        0x3f0 -> :sswitch_8f
        0x3f1 -> :sswitch_94
        0x3f2 -> :sswitch_99
        0x3f3 -> :sswitch_9e
        0x3f4 -> :sswitch_a3
        0x3f5 -> :sswitch_a8
        0x3f6 -> :sswitch_ad
        0x3f7 -> :sswitch_b2
        0x3f8 -> :sswitch_b7
        0x3f9 -> :sswitch_bc
        0x3fa -> :sswitch_c1
        0x3fb -> :sswitch_cb
        0x3fc -> :sswitch_d0
        0x3fd -> :sswitch_d6
        0x3fe -> :sswitch_dc
        0x3ff -> :sswitch_c6
        0x400 -> :sswitch_e2
        0x401 -> :sswitch_e8
        0x402 -> :sswitch_ee
        0x403 -> :sswitch_f4
        0x404 -> :sswitch_fa
        0x405 -> :sswitch_100
        0x406 -> :sswitch_106
        0x407 -> :sswitch_10c
        0x408 -> :sswitch_112
        0x409 -> :sswitch_118
        0x40a -> :sswitch_11e
        0x2b02 -> :sswitch_124
        0x2b03 -> :sswitch_12a
        0x2b04 -> :sswitch_130
    .end sparse-switch

    .line 473
    :pswitch_data_796
    .packed-switch 0x3e8
        :pswitch_54
        :pswitch_136
        :pswitch_151
        :pswitch_16c
        :pswitch_1a5
        :pswitch_1d0
        :pswitch_22f
        :pswitch_53
        :pswitch_287
        :pswitch_2cc
        :pswitch_2f0
        :pswitch_313
        :pswitch_33e
        :pswitch_367
        :pswitch_392
        :pswitch_3bd
        :pswitch_3e8
        :pswitch_400
        :pswitch_42b
        :pswitch_481
        :pswitch_499
        :pswitch_4c6
        :pswitch_4ef
        :pswitch_456
        :pswitch_507
        :pswitch_51f
        :pswitch_54a
        :pswitch_575
        :pswitch_5a3
        :pswitch_5d8
        :pswitch_612
        :pswitch_63d
        :pswitch_668
        :pswitch_693
        :pswitch_6b8
    .end packed-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 19
    .parameter "p"

    .prologue
    .line 827
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    .line 828
    .local v1, dataAvail:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    .line 829
    .local v6, pos:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataSize()I

    move-result v8

    .line 831
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

    .line 832
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

    .line 833
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

    .line 836
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 838
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

    .line 839
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 841
    .local v7, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_77
    if-ge v3, v5, :cond_325

    .line 843
    new-instance v2, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 845
    .local v2, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 846
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

    .line 847
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 848
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

    .line 849
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 850
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

    .line 851
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_302

    const/4 v12, 0x1

    :goto_eb
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 852
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

    .line 853
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_305

    const/4 v12, 0x1

    :goto_10e
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 854
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

    .line 855
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 856
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

    .line 857
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 858
    .local v11, voiceSettings:I
    if-nez v11, :cond_308

    const/4 v12, 0x0

    :goto_151
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 859
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

    .line 860
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_30b

    const/4 v12, 0x1

    :goto_174
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 862
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 864
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

    .line 865
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 866
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

    .line 867
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 868
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

    .line 869
    invoke-static {v4}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 870
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 871
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

    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 873
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

    .line 874
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 875
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

    .line 877
    const/4 v12, 0x1

    if-ne v10, v12, :cond_30e

    .line 878
    new-instance v12, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v12}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 879
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 880
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 881
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 882
    .local v9, userData:[B
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12, v9}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 883
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

    .line 887
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

    .line 889
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

    .line 896
    .end local v9           #userData:[B
    :goto_2df
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v13, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 898
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    iget-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v12, :cond_316

    .line 901
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 902
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is enabled"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_2fe
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_77

    .line 851
    .end local v4           #np:I
    .end local v10           #uusInfoPresent:I
    .end local v11           #voiceSettings:I
    :cond_302
    const/4 v12, 0x0

    goto/16 :goto_eb

    .line 853
    :cond_305
    const/4 v12, 0x0

    goto/16 :goto_10e

    .line 858
    .restart local v11       #voiceSettings:I
    :cond_308
    const/4 v12, 0x1

    goto/16 :goto_151

    .line 860
    :cond_30b
    const/4 v12, 0x0

    goto/16 :goto_174

    .line 892
    .restart local v4       #np:I
    .restart local v10       #uusInfoPresent:I
    :cond_30e
    const-string v12, "RILJ"

    const-string v13, "Incoming UUS : NOT present!"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2df

    .line 904
    :cond_316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 905
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is disabled"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2fe

    .line 909
    .end local v2           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v4           #np:I
    .end local v10           #uusInfoPresent:I
    .end local v11           #voiceSettings:I
    :cond_325
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 911
    return-object v7
.end method

.method protected responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 6
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 916
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 918
    .local v0, response:[I
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_12

    .line 922
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mPreferredNetworkType:I

    .line 926
    :cond_12
    aget v1, v0, v3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_20

    .line 927
    const-string v1, "RILJ"

    const-string v2, "Overriding network type response from GLOBAL to WCDMA preferred"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    aput v3, v0, v3

    .line 931
    :cond_20
    return-object v0
.end method

.method protected responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 10
    .parameter "p"

    .prologue
    .line 937
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 940
    .local v2, strings:[Ljava/lang/String;
    array-length v3, v2

    rem-int/lit8 v3, v3, 0x5

    if-eqz v3, :cond_2e

    .line 941
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS: invalid response. Got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strings, expected multible of 5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 946
    :cond_2e
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v2

    div-int/lit8 v3, v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 948
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_37
    array-length v3, v2

    if-ge v0, v3, :cond_55

    .line 949
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

    .line 948
    add-int/lit8 v0, v0, 0x5

    goto :goto_37

    .line 957
    :cond_55
    return-object v1
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 13
    .parameter "p"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, -0x1

    .line 963
    const/16 v1, 0xc

    .line 967
    .local v1, numInts:I
    new-array v2, v1, [I

    .line 968
    .local v2, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_15

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 968
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 973
    :cond_15
    const/4 v0, 0x7

    :goto_16
    if-ge v0, v1, :cond_1d

    .line 974
    aput v4, v2, v0

    .line 973
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 979
    :cond_1d
    const/4 v3, 0x0

    const/4 v5, 0x0

    aget v5, v2, v5

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x8

    mul-int/lit8 v5, v5, 0x3

    aput v5, v2, v3

    .line 980
    const/4 v3, 0x1

    aput v4, v2, v3

    .line 981
    aget v3, v2, v7

    if-gez v3, :cond_5d

    const/16 v3, -0x78

    :goto_34
    aput v3, v2, v7

    .line 982
    aget v3, v2, v8

    if-gez v3, :cond_61

    const/16 v3, -0xa0

    :goto_3c
    aput v3, v2, v8

    .line 983
    aget v3, v2, v9

    if-gez v3, :cond_65

    const/16 v3, -0x78

    :goto_44
    aput v3, v2, v9

    .line 984
    aget v3, v2, v10

    if-gez v3, :cond_69

    move v3, v4

    :goto_4b
    aput v3, v2, v10

    .line 985
    const/4 v3, 0x6

    aget v3, v2, v3

    if-ltz v3, :cond_59

    const/4 v3, 0x6

    aget v3, v2, v3

    const/16 v5, 0x8

    if-le v3, v5, :cond_5c

    .line 986
    :cond_59
    const/4 v3, 0x6

    aput v4, v2, v3

    .line 989
    :cond_5c
    return-object v2

    .line 981
    :cond_5d
    aget v3, v2, v7

    neg-int v3, v3

    goto :goto_34

    .line 982
    :cond_61
    aget v3, v2, v8

    neg-int v3, v3

    goto :goto_3c

    .line 983
    :cond_65
    aget v3, v2, v9

    neg-int v3, v3

    goto :goto_44

    .line 984
    :cond_69
    aget v3, v2, v10

    neg-int v3, v3

    goto :goto_4b
.end method

.method public setCurrentPreferredNetworkType()V
    .registers 2

    .prologue
    .line 85
    const-string/jumbo v0, "setCurrentPreferredNetworkType IGNORED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Smdk4210RIL;->riljLog(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 7
    .parameter "networkType"
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0}, Lcom/android/internal/telephony/Smdk4210RIL;->NeedReconnect()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 113
    iget-object v2, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmdk4210Handler:Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;

    if-nez v2, :cond_29

    .line 115
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "mSmdk4210Thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, handlerThread:Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmdk4210Thread:Landroid/os/HandlerThread;

    .line 118
    iget-object v2, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmdk4210Thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmdk4210Thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 121
    .local v1, looper:Landroid/os/Looper;
    new-instance v2, Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;-><init>(Lcom/android/internal/telephony/Smdk4210RIL;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmdk4210Handler:Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;

    .line 123
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :cond_29
    iget-object v2, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmdk4210Handler:Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;->setPreferedNetworkType(ILandroid/os/Message;)V

    .line 132
    :goto_2e
    return-void

    .line 125
    :cond_2f
    iget-object v2, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmdk4210Handler:Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;

    if-eqz v2, :cond_37

    .line 126
    iput-object v3, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmdk4210Thread:Landroid/os/HandlerThread;

    .line 127
    iput-object v3, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmdk4210Handler:Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;

    .line 129
    :cond_37
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/Smdk4210RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    goto :goto_2e
.end method
