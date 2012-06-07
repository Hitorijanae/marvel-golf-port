.class public Landroid/telephony/HtcCmasMessage;
.super Ljava/lang/Object;
.source "HtcCmasMessage.java"


# static fields
.field public static final CERTAINTY_LIKELY:I = 0x1

.field public static final CERTAINTY_OBSERVED:I = 0x0

.field public static final FORMAT_CDMA:I = 0x2

.field public static final FORMAT_GSM:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static final SEVERITY_EXTREME:I = 0x0

.field public static final SEVERITY_SEVERE:I = 0x1

.field public static final URGENCY_EXPECTED:I = 0x1

.field public static final URGENCY_IMMEDIATE:I


# instance fields
.field protected alertHandling:I

.field protected alertText:[B

.field protected alertTextStr:Ljava/lang/String;

.field protected category:I

.field protected certainty:I

.field protected charSetEncoding:I

.field protected charSetEncodingSet:Z

.field protected cmasFormat:I

.field protected cmasId:I

.field protected cmasType:I

.field protected expiredMillis:J

.field protected gs:I

.field protected language:I

.field protected mPdu:[B

.field protected messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field protected msgId:I

.field protected pageCount:I

.field protected pageSeg:I

.field protected protocolVersion:I

.field protected responseType:I

.field protected severity:I

.field protected sn:I

.field protected urgency:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, Landroid/telephony/HtcCmasMessage;->cmasFormat:I

    .line 82
    iput-boolean v1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    .line 90
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->category:I

    .line 92
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->responseType:I

    .line 94
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->severity:I

    .line 96
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->urgency:I

    .line 98
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->certainty:I

    .line 102
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->cmasId:I

    .line 104
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->alertHandling:I

    .line 106
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->language:I

    .line 122
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v0, p0, Landroid/telephony/HtcCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 141
    iput v1, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    return-void
.end method

.method public static getCmaeCategory(II)Ljava/lang/String;
    .registers 3
    .parameter "format"
    .parameter "cateId"

    .prologue
    .line 233
    packed-switch p0, :pswitch_data_a

    .line 238
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 235
    :pswitch_5
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCmaeCategory(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 233
    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch
.end method

.method public static getCmaeCertainty(I)Ljava/lang/String;
    .registers 3
    .parameter "cerId"

    .prologue
    .line 291
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 292
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_1a

    .line 298
    const/4 v1, 0x0

    :goto_8
    return-object v1

    .line 294
    :pswitch_9
    const v1, 0x104053a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 296
    :pswitch_11
    const v1, 0x104053b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 292
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
    .end packed-switch
.end method

.method public static getCmaeResponseType(II)Ljava/lang/String;
    .registers 3
    .parameter "format"
    .parameter "respId"

    .prologue
    .line 248
    packed-switch p0, :pswitch_data_a

    .line 253
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 250
    :pswitch_5
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCmaeResponseType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 248
    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch
.end method

.method public static getCmaeSeverity(I)Ljava/lang/String;
    .registers 3
    .parameter "sevId"

    .prologue
    .line 261
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 262
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_1a

    .line 268
    const/4 v1, 0x0

    :goto_8
    return-object v1

    .line 264
    :pswitch_9
    const v1, 0x1040536

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 266
    :pswitch_11
    const v1, 0x1040537

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 262
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
    .end packed-switch
.end method

.method public static getCmaeUrgency(I)Ljava/lang/String;
    .registers 3
    .parameter "urgId"

    .prologue
    .line 276
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 277
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_1a

    .line 283
    const/4 v1, 0x0

    :goto_8
    return-object v1

    .line 279
    :pswitch_9
    const v1, 0x1040538

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 281
    :pswitch_11
    const v1, 0x1040539

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 277
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
    .end packed-switch
.end method

.method public static getCmasMessage(I[B)Landroid/telephony/HtcCmasMessage;
    .registers 3
    .parameter "format"
    .parameter "pdu"

    .prologue
    .line 158
    packed-switch p0, :pswitch_data_e

    .line 166
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 161
    :pswitch_5
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/GsmCmasMessage;-><init>()V

    .line 163
    .local v0, gsmCmas:Lcom/android/internal/telephony/gsm/GsmCmasMessage;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->parseGsmPdu([B)V

    goto :goto_4

    .line 158
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static getGsmAllCmasChannelCount()I
    .registers 1

    .prologue
    .line 212
    const/4 v0, 0x3

    return v0
.end method

.method public static getGsmAllCmasChannelListStr()Ljava/lang/String;
    .registers 1

    .prologue
    .line 205
    const-string v0, "4370,4371,4372,4373,4374,4375,4376,4377,4378,4379,4380"

    return-object v0
.end method

.method public static getGsmCmasChannelList(I)[I
    .registers 4
    .parameter "c_type"

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 171
    packed-switch p0, :pswitch_data_2a

    .line 183
    const/4 v0, 0x0

    :goto_7
    return-object v0

    .line 173
    :pswitch_8
    new-array v0, v0, [I

    const/16 v1, 0x1112

    aput v1, v0, v2

    goto :goto_7

    .line 175
    :pswitch_f
    new-array v0, v1, [I

    fill-array-data v0, :array_38

    goto :goto_7

    .line 177
    :pswitch_15
    new-array v0, v1, [I

    fill-array-data v0, :array_44

    goto :goto_7

    .line 179
    :pswitch_1b
    new-array v0, v0, [I

    const/16 v1, 0x111b

    aput v1, v0, v2

    goto :goto_7

    .line 181
    :pswitch_22
    new-array v0, v0, [I

    const/16 v1, 0x111c

    aput v1, v0, v2

    goto :goto_7

    .line 171
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_22
    .end packed-switch

    .line 175
    :array_38
    .array-data 0x4
        0x13t 0x11t 0x0t 0x0t
        0x14t 0x11t 0x0t 0x0t
        0x15t 0x11t 0x0t 0x0t
        0x16t 0x11t 0x0t 0x0t
    .end array-data

    .line 177
    :array_44
    .array-data 0x4
        0x17t 0x11t 0x0t 0x0t
        0x18t 0x11t 0x0t 0x0t
        0x19t 0x11t 0x0t 0x0t
        0x1at 0x11t 0x0t 0x0t
    .end array-data
.end method

.method public static getGsmCmasChannelListStr(I)Ljava/lang/String;
    .registers 2
    .parameter "c_type"

    .prologue
    .line 187
    packed-switch p0, :pswitch_data_14

    .line 201
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 189
    :pswitch_5
    const-string v0, "4370"

    goto :goto_4

    .line 192
    :pswitch_8
    const-string v0, "4371-4374"

    goto :goto_4

    .line 194
    :pswitch_b
    const-string v0, "4375-4378"

    goto :goto_4

    .line 197
    :pswitch_e
    const-string v0, "4379"

    goto :goto_4

    .line 199
    :pswitch_11
    const-string v0, "4380"

    goto :goto_4

    .line 187
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static isGsmCmas(I)Z
    .registers 2
    .parameter "msgId"

    .prologue
    .line 218
    const/16 v0, 0x1112

    if-lt p0, v0, :cond_a

    const/16 v0, 0x111c

    if-gt p0, v0, :cond_a

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public getAlertHandling()I
    .registers 2

    .prologue
    .line 491
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->alertHandling:I

    return v0
.end method

.method public getAlertText()[B
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->alertText:[B

    return-object v0
.end method

.method public getAlertTextStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->alertTextStr:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()I
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->category:I

    return v0
.end method

.method public getCertainty()I
    .registers 2

    .prologue
    .line 459
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->certainty:I

    return v0
.end method

.method public getCharSetEncoding()I
    .registers 2

    .prologue
    .line 338
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->charSetEncoding:I

    return v0
.end method

.method public getCmasFormat()I
    .registers 2

    .prologue
    .line 306
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasFormat:I

    return v0
.end method

.method public getCmasId()I
    .registers 2

    .prologue
    .line 475
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasId:I

    return v0
.end method

.method public getCmasType()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    return v0
.end method

.method public getExpiredMillis()J
    .registers 3

    .prologue
    .line 522
    iget-wide v0, p0, Landroid/telephony/HtcCmasMessage;->expiredMillis:J

    return-wide v0
.end method

.method public getGs()I
    .registers 2

    .prologue
    .line 554
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->gs:I

    return v0
.end method

.method public getLanguage()I
    .registers 2

    .prologue
    .line 507
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->language:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .registers 2

    .prologue
    .line 585
    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 569
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->msgId:I

    return v0
.end method

.method public getPageCount()I
    .registers 2

    .prologue
    .line 617
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->pageCount:I

    return v0
.end method

.method public getPageSeg()I
    .registers 2

    .prologue
    .line 601
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->pageSeg:I

    return v0
.end method

.method public getPdu()[B
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->mPdu:[B

    return-object v0
.end method

.method public getProtocolVersion()I
    .registers 2

    .prologue
    .line 322
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->protocolVersion:I

    return v0
.end method

.method public getResponseType()I
    .registers 2

    .prologue
    .line 414
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->responseType:I

    return v0
.end method

.method public getSeverity()I
    .registers 2

    .prologue
    .line 429
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->severity:I

    return v0
.end method

.method public getSn()I
    .registers 2

    .prologue
    .line 538
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->sn:I

    return v0
.end method

.method public getUrgency()I
    .registers 2

    .prologue
    .line 444
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->urgency:I

    return v0
.end method

.method public isCharSetEncodingSet()Z
    .registers 2

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    return v0
.end method

.method public parseGsmPdu([B)V
    .registers 2
    .parameter "pdu"

    .prologue
    .line 155
    return-void
.end method

.method public setAlertHandling(I)V
    .registers 2
    .parameter "alertHandling"

    .prologue
    .line 499
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->alertHandling:I

    .line 500
    return-void
.end method

.method public setAlertText([B)V
    .registers 2
    .parameter "alertText"

    .prologue
    .line 378
    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->alertText:[B

    .line 379
    return-void
.end method

.method public setAlertTextStr(Ljava/lang/String;)V
    .registers 2
    .parameter "alertTextStr"

    .prologue
    .line 392
    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->alertTextStr:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setCategory(I)V
    .registers 2
    .parameter "category"

    .prologue
    .line 407
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->category:I

    .line 408
    return-void
.end method

.method public setCertainty(I)V
    .registers 2
    .parameter "certainty"

    .prologue
    .line 467
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->certainty:I

    .line 468
    return-void
.end method

.method public setCharSetEncoding(I)V
    .registers 2
    .parameter "charSetEncoding"

    .prologue
    .line 346
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncoding:I

    .line 347
    return-void
.end method

.method public setCharSetEncodingSet(Z)V
    .registers 2
    .parameter "charSetEncodingSet"

    .prologue
    .line 362
    iput-boolean p1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    .line 363
    return-void
.end method

.method public setCmasFormat(I)V
    .registers 2
    .parameter "cmasFormat"

    .prologue
    .line 314
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->cmasFormat:I

    .line 315
    return-void
.end method

.method public setCmasId(I)V
    .registers 2
    .parameter "cmasId"

    .prologue
    .line 483
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->cmasId:I

    .line 484
    return-void
.end method

.method public setExpiredMillis(J)V
    .registers 3
    .parameter "expiredMillis"

    .prologue
    .line 530
    iput-wide p1, p0, Landroid/telephony/HtcCmasMessage;->expiredMillis:J

    .line 531
    return-void
.end method

.method public setGs(I)V
    .registers 2
    .parameter "gs"

    .prologue
    .line 562
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->gs:I

    .line 563
    return-void
.end method

.method public setLanguage(I)V
    .registers 2
    .parameter "language"

    .prologue
    .line 515
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->language:I

    .line 516
    return-void
.end method

.method public setMessageClass(Landroid/telephony/SmsMessage$MessageClass;)V
    .registers 2
    .parameter "messageClass"

    .prologue
    .line 593
    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 594
    return-void
.end method

.method public setMsgId(I)V
    .registers 2
    .parameter "msgId"

    .prologue
    .line 577
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->msgId:I

    .line 578
    return-void
.end method

.method public setPageCount(I)V
    .registers 2
    .parameter "pageCount"

    .prologue
    .line 625
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->pageCount:I

    .line 626
    return-void
.end method

.method public setPageSeg(I)V
    .registers 2
    .parameter "pageSeg"

    .prologue
    .line 609
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->pageSeg:I

    .line 610
    return-void
.end method

.method public setProtocolVersion(I)V
    .registers 2
    .parameter "protocolVersion"

    .prologue
    .line 330
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->protocolVersion:I

    .line 331
    return-void
.end method

.method public setResponseType(I)V
    .registers 2
    .parameter "responseType"

    .prologue
    .line 422
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->responseType:I

    .line 423
    return-void
.end method

.method public setSeverity(I)V
    .registers 2
    .parameter "severity"

    .prologue
    .line 437
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->severity:I

    .line 438
    return-void
.end method

.method public setSn(I)V
    .registers 2
    .parameter "sn"

    .prologue
    .line 546
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->sn:I

    .line 547
    return-void
.end method

.method public setUrgency(I)V
    .registers 2
    .parameter "urgency"

    .prologue
    .line 452
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->urgency:I

    .line 453
    return-void
.end method

.method public setmPdu([B)V
    .registers 2
    .parameter "mPdu"

    .prologue
    .line 640
    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->mPdu:[B

    .line 641
    return-void
.end method
