.class Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;
.super Landroid/os/Handler;
.source "LGEQualcommRIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGEQualcommRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IccHandler"
.end annotation


# static fields
.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x3

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x2

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x4

.field private static final EVENT_RADIO_ON:I = 0x1


# instance fields
.field private mRadioOn:Z

.field private mRil:Lcom/android/internal/telephony/RIL;

.field final synthetic this$0:Lcom/android/internal/telephony/LGEQualcommRIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGEQualcommRIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .registers 5
    .parameter
    .parameter "ril"
    .parameter "looper"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->this$0:Lcom/android/internal/telephony/LGEQualcommRIL;

    .line 350
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRadioOn:Z

    .line 351
    iput-object p2, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    .line 352
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "paramMessage"

    .prologue
    const/4 v8, 0x2

    .line 355
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_15c

    .line 439
    :goto_6
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Unknown Event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_20
    :goto_20
    return-void

    .line 357
    :pswitch_21
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRadioOn:Z

    .line 358
    const-string v6, "RILJ"

    const-string v7, "Radio on -> Forcing sim status update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_20

    .line 362
    :pswitch_33
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 363
    .local v4, asyncResult:Landroid/os/AsyncResult;
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_45

    .line 364
    const-string v6, "RILJ"

    const-string v7, "IccCardStatusDone shouldn\'t return exceptions!"

    iget-object v8, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 367
    :cond_45
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/IccCardStatus;

    .line 368
    .local v5, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v6

    if-nez v6, :cond_71

    .line 369
    iget-object v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6}, Lcom/android/internal/telephony/RIL;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 373
    iget-object v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->this$0:Lcom/android/internal/telephony/LGEQualcommRIL;

    iget v6, v6, Lcom/android/internal/telephony/LGEQualcommRIL;->mPhoneType:I

    if-ne v6, v8, :cond_69

    .line 374
    iget-object v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_20

    .line 376
    :cond_69
    iget-object v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_20

    .line 379
    :cond_71
    const/4 v0, -0x1

    .line 380
    .local v0, appIndex:I
    iget-object v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->this$0:Lcom/android/internal/telephony/LGEQualcommRIL;

    iget v6, v6, Lcom/android/internal/telephony/LGEQualcommRIL;->mPhoneType:I

    if-ne v6, v8, :cond_ce

    .line 381
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    .line 382
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

    .line 388
    :goto_94
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v3

    .line 389
    .local v3, application:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v1, v3, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 390
    .local v1, app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;
    iget-object v2, v3, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 392
    .local v2, app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;
    sget-object v6, Lcom/android/internal/telephony/LGEQualcommRIL$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_168

    goto/16 :goto_20

    .line 395
    :pswitch_a9
    sget-object v6, Lcom/android/internal/telephony/LGEQualcommRIL$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_172

    .line 404
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Currently we don\'t handle SIMs of type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 384
    .end local v1           #app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;
    .end local v2           #app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v3           #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_ce
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    .line 385
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

    goto :goto_94

    .line 398
    .restart local v1       #app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;
    .restart local v2       #app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .restart local v3       #application:Lcom/android/internal/telephony/IccCardApplication;
    :pswitch_eb
    iget-object v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_20

    .line 401
    :pswitch_f4
    iget-object v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_20

    .line 409
    :pswitch_fd
    sget-object v6, Lcom/android/internal/telephony/LGEQualcommRIL$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_17c

    .line 418
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Currently we don\'t handle SIMs of type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 412
    :pswitch_122
    iget-object v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_20

    .line 415
    :pswitch_12b
    iget-object v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_20

    .line 428
    .end local v0           #appIndex:I
    .end local v1           #app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;
    .end local v2           #app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v3           #application:Lcom/android/internal/telephony/IccCardApplication;
    .end local v4           #asyncResult:Landroid/os/AsyncResult;
    .end local v5           #status:Lcom/android/internal/telephony/IccCardStatus;
    :pswitch_134
    iget-boolean v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRadioOn:Z

    if-eqz v6, :cond_14d

    .line 429
    const-string v6, "RILJ"

    const-string v7, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v7, 0x3

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_20

    .line 432
    :cond_14d
    const-string v6, "RILJ"

    const-string v7, "Received EVENT_ICC_STATUS_CHANGED while radio is not ON. Ignoring"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 436
    :pswitch_156
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRadioOn:Z

    goto/16 :goto_6

    .line 355
    nop

    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_21
        :pswitch_134
        :pswitch_33
        :pswitch_156
    .end packed-switch

    .line 392
    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_a9
        :pswitch_a9
        :pswitch_fd
    .end packed-switch

    .line 395
    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_eb
        :pswitch_eb
        :pswitch_f4
    .end packed-switch

    .line 409
    :pswitch_data_17c
    .packed-switch 0x1
        :pswitch_122
        :pswitch_122
        :pswitch_12b
    .end packed-switch
.end method

.method public run()V
    .registers 5

    .prologue
    .line 445
    iget-object v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/RIL;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 446
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 447
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/LGEQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->getIccCardStatus(Landroid/os/Message;)V

    .line 448
    return-void
.end method
