.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 42
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 46
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 49
    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .registers 7
    .parameter "efid"

    .prologue
    .line 60
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string/jumbo v4, "qcomuiccstack"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 61
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 62
    .local v1, icccard:Lcom/android/internal/telephony/IccCard;
    if-eqz v1, :cond_22

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getEFPathForUICC(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    .end local v1           #icccard:Lcom/android/internal/telephony/IccCard;
    :cond_21
    :goto_21
    return-object v2

    .line 68
    :cond_22
    sparse-switch p1, :sswitch_data_52

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, path:Ljava/lang/String;
    if-nez v2, :cond_21

    .line 102
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 103
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_4a

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 104
    const-string v2, "3F007F105F3A"

    goto :goto_21

    .line 70
    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    .end local v2           #path:Ljava/lang/String;
    :sswitch_3e
    const-string v2, "3F007F10"

    goto :goto_21

    .line 82
    :sswitch_41
    const-string v2, "3F007F20"

    goto :goto_21

    .line 91
    :sswitch_44
    const-string v2, "3F007F20"

    goto :goto_21

    .line 95
    :sswitch_47
    const-string v2, "3F007F105F3A"

    goto :goto_21

    .line 106
    .restart local v0       #card:Lcom/android/internal/telephony/IccCard;
    .restart local v2       #path:Ljava/lang/String;
    :cond_4a
    const-string v3, "GSM"

    const-string v4, "Error: EF Path being returned in null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 68
    :sswitch_data_52
    .sparse-switch
        0x4f30 -> :sswitch_47
        0x6f11 -> :sswitch_44
        0x6f13 -> :sswitch_44
        0x6f14 -> :sswitch_44
        0x6f15 -> :sswitch_44
        0x6f16 -> :sswitch_44
        0x6f17 -> :sswitch_44
        0x6f18 -> :sswitch_44
        0x6f38 -> :sswitch_41
        0x6f3c -> :sswitch_3e
        0x6f46 -> :sswitch_41
        0x6fad -> :sswitch_41
        0x6fc5 -> :sswitch_41
        0x6fc7 -> :sswitch_41
        0x6fc8 -> :sswitch_41
        0x6fc9 -> :sswitch_41
        0x6fca -> :sswitch_41
        0x6fcb -> :sswitch_41
        0x6fcd -> :sswitch_41
    .end sparse-switch
.end method

.method protected getEFPathForUICC(I)Ljava/lang/String;
    .registers 5
    .parameter "efid"

    .prologue
    .line 112
    sparse-switch p1, :sswitch_data_18

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_10

    .line 142
    const-string v1, "GSM"

    const-string v2, "Error: EF Path being returned in null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0           #path:Ljava/lang/String;
    :cond_10
    :goto_10
    return-object v0

    .line 133
    :sswitch_11
    const-string v0, "3F007FFF"

    goto :goto_10

    .line 137
    :sswitch_14
    const-string v0, "3F007F105F3A"

    goto :goto_10

    .line 112
    nop

    :sswitch_data_18
    .sparse-switch
        0x4f30 -> :sswitch_11
        0x6f11 -> :sswitch_11
        0x6f13 -> :sswitch_11
        0x6f14 -> :sswitch_11
        0x6f15 -> :sswitch_14
        0x6f16 -> :sswitch_11
        0x6f17 -> :sswitch_11
        0x6f18 -> :sswitch_11
        0x6f38 -> :sswitch_11
        0x6f3b -> :sswitch_11
        0x6f3c -> :sswitch_11
        0x6f40 -> :sswitch_11
        0x6f46 -> :sswitch_11
        0x6fad -> :sswitch_11
        0x6fc5 -> :sswitch_11
        0x6fc7 -> :sswitch_11
        0x6fc8 -> :sswitch_11
        0x6fc9 -> :sswitch_11
        0x6fca -> :sswitch_11
        0x6fcb -> :sswitch_11
        0x6fcd -> :sswitch_11
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 57
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 147
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 151
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method
