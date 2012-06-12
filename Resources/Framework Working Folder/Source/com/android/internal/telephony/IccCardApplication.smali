.class public Lcom/android/internal/telephony/IccCardApplication;
.super Ljava/lang/Object;
.source "IccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardApplication$PersoSubState;,
        Lcom/android/internal/telephony/IccCardApplication$AppState;,
        Lcom/android/internal/telephony/IccCardApplication$AppType;
    }
.end annotation


# instance fields
.field public aid:Ljava/lang/String;

.field public app_label:Ljava/lang/String;

.field public app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

.field public app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

.field public perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

.field public pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

.field public pin1_replaced:I

.field public pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;
    .registers 6
    .parameter "state"

    .prologue
    .line 137
    packed-switch p1, :pswitch_data_2e

    .line 145
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 148
    .local v0, newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :goto_1e
    return-object v0

    .line 139
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_1e

    .line 140
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_22
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_1e

    .line 141
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_25
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_1e

    .line 142
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_28
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_1e

    .line 143
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_2b
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_1e

    .line 137
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;
    .registers 6
    .parameter "type"

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_2e

    .line 128
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 131
    .local v0, newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_1e
    return-object v0

    .line 122
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_1e

    .line 123
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_22
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_1e

    .line 124
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_25
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_1e

    .line 125
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_28
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_1e

    .line 126
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_2b
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_1e

    .line 120
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    .registers 6
    .parameter "substate"

    .prologue
    .line 154
    packed-switch p1, :pswitch_data_68

    .line 181
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PersoSubstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 184
    .local v0, newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :goto_1e
    return-object v0

    .line 156
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 157
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_22
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 158
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_25
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 159
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_28
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 160
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_2b
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 161
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_2e
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 162
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_31
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 163
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_34
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 164
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_37
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 165
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_3a
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 166
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_3d
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 167
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_40
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 168
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_43
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 169
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_46
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 170
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_49
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 171
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_4c
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 172
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_4f
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 173
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_52
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 174
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_55
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 175
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_58
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 176
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_5b
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 177
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_5e
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 178
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_61
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 179
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_64
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 154
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
        :pswitch_5e
        :pswitch_61
        :pswitch_64
    .end packed-switch
.end method

.method PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;
    .registers 6
    .parameter "state"

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_2e

    .line 209
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PinState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 211
    .local v0, newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :goto_1e
    return-object v0

    .line 194
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 195
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_1e

    .line 197
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_22
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 198
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_1e

    .line 200
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_25
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 201
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_1e

    .line 203
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_28
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 204
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_1e

    .line 206
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_2b
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 207
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_1e

    .line 189
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-ne v1, v2, :cond_2e

    .line 220
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v1, v2, :cond_40

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v1, v2, :cond_40

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v1, v2, :cond_56

    .line 225
    :cond_40
    const-string v1, ",pin1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    const-string v1, ",pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    :cond_56
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method