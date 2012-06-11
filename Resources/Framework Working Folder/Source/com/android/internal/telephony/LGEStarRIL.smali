.class public Lcom/android/internal/telephony/LGEStarRIL;
.super Lcom/android/internal/telephony/RIL;
.source "LGEStarRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field static final RIL_REQUEST_HANG_UP_CALL:I = 0xcc


# instance fields
.field protected mCallState:I

.field protected mPrepSetupPending:Z

.field private saveDataCall:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 9
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 88
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/LGEStarRIL;->mCallState:I

    .line 146
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/LGEStarRIL;->mPrepSetupPending:Z

    .line 93
    const-string/jumbo v3, "ro.build.product"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "p99"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_49

    .line 94
    iget-object v3, p0, Lcom/android/internal/telephony/LGEStarRIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    new-instance v1, Lcom/android/internal/telephony/LGEStarRIL$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/LGEStarRIL$1;-><init>(Lcom/android/internal/telephony/LGEStarRIL;)V

    .line 107
    .local v1, mIntentReceiver:Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    :goto_35
    new-instance v2, Lcom/android/internal/telephony/LGEStarRIL$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/LGEStarRIL$3;-><init>(Lcom/android/internal/telephony/LGEStarRIL;)V

    .line 141
    .local v2, mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const/16 v4, 0x20

    invoke-virtual {v3, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 144
    return-void

    .line 114
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #mIntentReceiver:Landroid/content/BroadcastReceiver;
    .end local v2           #mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    :cond_49
    new-instance v1, Lcom/android/internal/telephony/LGEStarRIL$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/LGEStarRIL$2;-><init>(Lcom/android/internal/telephony/LGEStarRIL;)V

    .line 127
    .restart local v1       #mIntentReceiver:Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_35
.end method

.method static requestToString(I)Ljava/lang/String;
    .registers 2
    .parameter "request"

    .prologue
    .line 1060
    sparse-switch p0, :sswitch_data_1a4

    .line 1175
    const-string v0, "<unknown request>"

    :goto_5
    return-object v0

    .line 1061
    :sswitch_6
    const-string v0, "GET_SIM_STATUS"

    goto :goto_5

    .line 1062
    :sswitch_9
    const-string v0, "ENTER_SIM_PIN"

    goto :goto_5

    .line 1063
    :sswitch_c
    const-string v0, "ENTER_SIM_PUK"

    goto :goto_5

    .line 1064
    :sswitch_f
    const-string v0, "ENTER_SIM_PIN2"

    goto :goto_5

    .line 1065
    :sswitch_12
    const-string v0, "ENTER_SIM_PUK2"

    goto :goto_5

    .line 1066
    :sswitch_15
    const-string v0, "CHANGE_SIM_PIN"

    goto :goto_5

    .line 1067
    :sswitch_18
    const-string v0, "CHANGE_SIM_PIN2"

    goto :goto_5

    .line 1068
    :sswitch_1b
    const-string v0, "ENTER_NETWORK_DEPERSONALIZATION"

    goto :goto_5

    .line 1069
    :sswitch_1e
    const-string v0, "GET_CURRENT_CALLS"

    goto :goto_5

    .line 1070
    :sswitch_21
    const-string v0, "DIAL"

    goto :goto_5

    .line 1071
    :sswitch_24
    const-string v0, "GET_IMSI"

    goto :goto_5

    .line 1072
    :sswitch_27
    const-string v0, "HANGUP"

    goto :goto_5

    .line 1073
    :sswitch_2a
    const-string v0, "HANGUP_WAITING_OR_BACKGROUND"

    goto :goto_5

    .line 1074
    :sswitch_2d
    const-string v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    goto :goto_5

    .line 1075
    :sswitch_30
    const-string v0, "HANG_UP_CALL"

    goto :goto_5

    .line 1076
    :sswitch_33
    const-string v0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    goto :goto_5

    .line 1077
    :sswitch_36
    const-string v0, "CONFERENCE"

    goto :goto_5

    .line 1078
    :sswitch_39
    const-string v0, "UDUB"

    goto :goto_5

    .line 1079
    :sswitch_3c
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    goto :goto_5

    .line 1080
    :sswitch_3f
    const-string v0, "SIGNAL_STRENGTH"

    goto :goto_5

    .line 1081
    :sswitch_42
    const-string v0, "REGISTRATION_STATE"

    goto :goto_5

    .line 1082
    :sswitch_45
    const-string v0, "GPRS_REGISTRATION_STATE"

    goto :goto_5

    .line 1083
    :sswitch_48
    const-string v0, "OPERATOR"

    goto :goto_5

    .line 1084
    :sswitch_4b
    const-string v0, "RADIO_POWER"

    goto :goto_5

    .line 1085
    :sswitch_4e
    const-string v0, "DTMF"

    goto :goto_5

    .line 1086
    :sswitch_51
    const-string v0, "SEND_SMS"

    goto :goto_5

    .line 1087
    :sswitch_54
    const-string v0, "SEND_SMS_EXPECT_MORE"

    goto :goto_5

    .line 1088
    :sswitch_57
    const-string v0, "SETUP_DATA_CALL"

    goto :goto_5

    .line 1089
    :sswitch_5a
    const-string v0, "SIM_IO"

    goto :goto_5

    .line 1090
    :sswitch_5d
    const-string v0, "SEND_USSD"

    goto :goto_5

    .line 1091
    :sswitch_60
    const-string v0, "CANCEL_USSD"

    goto :goto_5

    .line 1092
    :sswitch_63
    const-string v0, "GET_CLIR"

    goto :goto_5

    .line 1093
    :sswitch_66
    const-string v0, "SET_CLIR"

    goto :goto_5

    .line 1094
    :sswitch_69
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    goto :goto_5

    .line 1095
    :sswitch_6c
    const-string v0, "SET_CALL_FORWARD"

    goto :goto_5

    .line 1096
    :sswitch_6f
    const-string v0, "QUERY_CALL_WAITING"

    goto :goto_5

    .line 1097
    :sswitch_72
    const-string v0, "SET_CALL_WAITING"

    goto :goto_5

    .line 1098
    :sswitch_75
    const-string v0, "SMS_ACKNOWLEDGE"

    goto :goto_5

    .line 1099
    :sswitch_78
    const-string v0, "GET_IMEI"

    goto :goto_5

    .line 1100
    :sswitch_7b
    const-string v0, "GET_IMEISV"

    goto :goto_5

    .line 1101
    :sswitch_7e
    const-string v0, "ANSWER"

    goto :goto_5

    .line 1102
    :sswitch_81
    const-string v0, "DEACTIVATE_DATA_CALL"

    goto :goto_5

    .line 1103
    :sswitch_84
    const-string v0, "QUERY_FACILITY_LOCK"

    goto/16 :goto_5

    .line 1104
    :sswitch_88
    const-string v0, "SET_FACILITY_LOCK"

    goto/16 :goto_5

    .line 1105
    :sswitch_8c
    const-string v0, "CHANGE_BARRING_PASSWORD"

    goto/16 :goto_5

    .line 1106
    :sswitch_90
    const-string v0, "QUERY_NETWORK_SELECTION_MODE"

    goto/16 :goto_5

    .line 1107
    :sswitch_94
    const-string v0, "SET_NETWORK_SELECTION_AUTOMATIC"

    goto/16 :goto_5

    .line 1108
    :sswitch_98
    const-string v0, "SET_NETWORK_SELECTION_MANUAL"

    goto/16 :goto_5

    .line 1109
    :sswitch_9c
    const-string v0, "QUERY_AVAILABLE_NETWORKS "

    goto/16 :goto_5

    .line 1110
    :sswitch_a0
    const-string v0, "DTMF_START"

    goto/16 :goto_5

    .line 1111
    :sswitch_a4
    const-string v0, "DTMF_STOP"

    goto/16 :goto_5

    .line 1112
    :sswitch_a8
    const-string v0, "BASEBAND_VERSION"

    goto/16 :goto_5

    .line 1113
    :sswitch_ac
    const-string v0, "SEPARATE_CONNECTION"

    goto/16 :goto_5

    .line 1114
    :sswitch_b0
    const-string v0, "SET_MUTE"

    goto/16 :goto_5

    .line 1115
    :sswitch_b4
    const-string v0, "GET_MUTE"

    goto/16 :goto_5

    .line 1116
    :sswitch_b8
    const-string v0, "QUERY_CLIP"

    goto/16 :goto_5

    .line 1117
    :sswitch_bc
    const-string v0, "LAST_DATA_CALL_FAIL_CAUSE"

    goto/16 :goto_5

    .line 1118
    :sswitch_c0
    const-string v0, "DATA_CALL_LIST"

    goto/16 :goto_5

    .line 1119
    :sswitch_c4
    const-string v0, "RESET_RADIO"

    goto/16 :goto_5

    .line 1120
    :sswitch_c8
    const-string v0, "OEM_HOOK_RAW"

    goto/16 :goto_5

    .line 1121
    :sswitch_cc
    const-string v0, "OEM_HOOK_STRINGS"

    goto/16 :goto_5

    .line 1122
    :sswitch_d0
    const-string v0, "SCREEN_STATE"

    goto/16 :goto_5

    .line 1123
    :sswitch_d4
    const-string v0, "SET_SUPP_SVC_NOTIFICATION"

    goto/16 :goto_5

    .line 1124
    :sswitch_d8
    const-string v0, "WRITE_SMS_TO_SIM"

    goto/16 :goto_5

    .line 1125
    :sswitch_dc
    const-string v0, "DELETE_SMS_ON_SIM"

    goto/16 :goto_5

    .line 1126
    :sswitch_e0
    const-string v0, "SET_BAND_MODE"

    goto/16 :goto_5

    .line 1127
    :sswitch_e4
    const-string v0, "QUERY_AVAILABLE_BAND_MODE"

    goto/16 :goto_5

    .line 1128
    :sswitch_e8
    const-string v0, "REQUEST_STK_GET_PROFILE"

    goto/16 :goto_5

    .line 1129
    :sswitch_ec
    const-string v0, "REQUEST_STK_SET_PROFILE"

    goto/16 :goto_5

    .line 1130
    :sswitch_f0
    const-string v0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    goto/16 :goto_5

    .line 1131
    :sswitch_f4
    const-string v0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    goto/16 :goto_5

    .line 1132
    :sswitch_f8
    const-string v0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    goto/16 :goto_5

    .line 1133
    :sswitch_fc
    const-string v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    goto/16 :goto_5

    .line 1134
    :sswitch_100
    const-string v0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_5

    .line 1135
    :sswitch_104
    const-string v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_5

    .line 1136
    :sswitch_108
    const-string v0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    goto/16 :goto_5

    .line 1137
    :sswitch_10c
    const-string v0, "REQUEST_SET_LOCATION_UPDATES"

    goto/16 :goto_5

    .line 1138
    :sswitch_110
    const-string v0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE"

    goto/16 :goto_5

    .line 1139
    :sswitch_114
    const-string v0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    goto/16 :goto_5

    .line 1140
    :sswitch_118
    const-string v0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    goto/16 :goto_5

    .line 1141
    :sswitch_11c
    const-string v0, "RIL_REQUEST_SET_TTY_MODE"

    goto/16 :goto_5

    .line 1142
    :sswitch_120
    const-string v0, "RIL_REQUEST_QUERY_TTY_MODE"

    goto/16 :goto_5

    .line 1143
    :sswitch_124
    const-string v0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_5

    .line 1144
    :sswitch_128
    const-string v0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_5

    .line 1145
    :sswitch_12c
    const-string v0, "RIL_REQUEST_CDMA_FLASH"

    goto/16 :goto_5

    .line 1146
    :sswitch_130
    const-string v0, "RIL_REQUEST_CDMA_BURST_DTMF"

    goto/16 :goto_5

    .line 1147
    :sswitch_134
    const-string v0, "RIL_REQUEST_CDMA_SEND_SMS"

    goto/16 :goto_5

    .line 1148
    :sswitch_138
    const-string v0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    goto/16 :goto_5

    .line 1149
    :sswitch_13c
    const-string v0, "RIL_REQUEST_GSM_GET_BROADCAST_CONFIG"

    goto/16 :goto_5

    .line 1150
    :sswitch_140
    const-string v0, "RIL_REQUEST_GSM_SET_BROADCAST_CONFIG"

    goto/16 :goto_5

    .line 1151
    :sswitch_144
    const-string v0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    goto/16 :goto_5

    .line 1152
    :sswitch_148
    const-string v0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    goto/16 :goto_5

    .line 1153
    :sswitch_14c
    const-string v0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    goto/16 :goto_5

    .line 1154
    :sswitch_150
    const-string v0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    goto/16 :goto_5

    .line 1155
    :sswitch_154
    const-string v0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    goto/16 :goto_5

    .line 1156
    :sswitch_158
    const-string v0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    goto/16 :goto_5

    .line 1157
    :sswitch_15c
    const-string v0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    goto/16 :goto_5

    .line 1158
    :sswitch_160
    const-string v0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    goto/16 :goto_5

    .line 1159
    :sswitch_164
    const-string v0, "RIL_REQUEST_DEVICE_IDENTITY"

    goto/16 :goto_5

    .line 1160
    :sswitch_168
    const-string v0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    goto/16 :goto_5

    .line 1161
    :sswitch_16c
    const-string v0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    goto/16 :goto_5

    .line 1162
    :sswitch_170
    const-string v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    goto/16 :goto_5

    .line 1163
    :sswitch_174
    const-string v0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    goto/16 :goto_5

    .line 1164
    :sswitch_178
    const-string v0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    goto/16 :goto_5

    .line 1165
    :sswitch_17c
    const-string v0, "RIL_REQUEST_GET_TE_CHARACTER_SET"

    goto/16 :goto_5

    .line 1166
    :sswitch_180
    const-string v0, "ADAPTED_NETWORK_NAME"

    goto/16 :goto_5

    .line 1167
    :sswitch_184
    const-string v0, "SHOW_PDP_ADDRESS"

    goto/16 :goto_5

    .line 1168
    :sswitch_188
    const-string v0, "RIL_REQUEST_SET_TIME_ZONE_REPORTING"

    goto/16 :goto_5

    .line 1169
    :sswitch_18c
    const-string v0, "SET_GMM_ATTACH_MODE"

    goto/16 :goto_5

    .line 1170
    :sswitch_190
    const-string v0, "GET_SERVICE_LINE"

    goto/16 :goto_5

    .line 1171
    :sswitch_194
    const-string v0, "GET_SERVICE_LINE"

    goto/16 :goto_5

    .line 1172
    :sswitch_198
    const-string v0, "RIL_REQUEST_SET_PRODUCT_RAT"

    goto/16 :goto_5

    .line 1173
    :sswitch_19c
    const-string v0, "SEND_COMMAND"

    goto/16 :goto_5

    .line 1174
    :sswitch_1a0
    const-string v0, "SEND_COMMAND"

    goto/16 :goto_5

    .line 1060
    :sswitch_data_1a4
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_9
        0x3 -> :sswitch_c
        0x4 -> :sswitch_f
        0x5 -> :sswitch_12
        0x6 -> :sswitch_15
        0x7 -> :sswitch_18
        0x8 -> :sswitch_1b
        0x9 -> :sswitch_1e
        0xa -> :sswitch_21
        0xb -> :sswitch_24
        0xc -> :sswitch_27
        0xd -> :sswitch_2a
        0xe -> :sswitch_2d
        0xf -> :sswitch_33
        0x10 -> :sswitch_36
        0x11 -> :sswitch_39
        0x12 -> :sswitch_3c
        0x13 -> :sswitch_3f
        0x14 -> :sswitch_42
        0x15 -> :sswitch_45
        0x16 -> :sswitch_48
        0x17 -> :sswitch_4b
        0x18 -> :sswitch_4e
        0x19 -> :sswitch_51
        0x1a -> :sswitch_54
        0x1b -> :sswitch_57
        0x1c -> :sswitch_5a
        0x1d -> :sswitch_5d
        0x1e -> :sswitch_60
        0x1f -> :sswitch_63
        0x20 -> :sswitch_66
        0x21 -> :sswitch_69
        0x22 -> :sswitch_6c
        0x23 -> :sswitch_6f
        0x24 -> :sswitch_72
        0x25 -> :sswitch_75
        0x26 -> :sswitch_78
        0x27 -> :sswitch_7b
        0x28 -> :sswitch_7e
        0x29 -> :sswitch_81
        0x2a -> :sswitch_84
        0x2b -> :sswitch_88
        0x2c -> :sswitch_8c
        0x2d -> :sswitch_90
        0x2e -> :sswitch_94
        0x2f -> :sswitch_98
        0x30 -> :sswitch_9c
        0x31 -> :sswitch_a0
        0x32 -> :sswitch_a4
        0x33 -> :sswitch_a8
        0x34 -> :sswitch_ac
        0x35 -> :sswitch_b0
        0x36 -> :sswitch_b4
        0x37 -> :sswitch_b8
        0x38 -> :sswitch_bc
        0x39 -> :sswitch_c0
        0x3a -> :sswitch_c4
        0x3b -> :sswitch_c8
        0x3c -> :sswitch_cc
        0x3d -> :sswitch_d0
        0x3e -> :sswitch_d4
        0x3f -> :sswitch_d8
        0x40 -> :sswitch_dc
        0x41 -> :sswitch_e0
        0x42 -> :sswitch_e4
        0x43 -> :sswitch_e8
        0x44 -> :sswitch_ec
        0x45 -> :sswitch_f0
        0x46 -> :sswitch_f4
        0x47 -> :sswitch_f8
        0x48 -> :sswitch_fc
        0x49 -> :sswitch_100
        0x4a -> :sswitch_104
        0x4b -> :sswitch_108
        0x4c -> :sswitch_10c
        0x4d -> :sswitch_110
        0x4e -> :sswitch_114
        0x4f -> :sswitch_118
        0x50 -> :sswitch_11c
        0x51 -> :sswitch_120
        0x52 -> :sswitch_124
        0x53 -> :sswitch_128
        0x54 -> :sswitch_12c
        0x55 -> :sswitch_130
        0x56 -> :sswitch_150
        0x57 -> :sswitch_134
        0x58 -> :sswitch_138
        0x59 -> :sswitch_13c
        0x5a -> :sswitch_140
        0x5b -> :sswitch_14c
        0x5c -> :sswitch_144
        0x5d -> :sswitch_148
        0x5e -> :sswitch_154
        0x5f -> :sswitch_158
        0x60 -> :sswitch_15c
        0x61 -> :sswitch_160
        0x62 -> :sswitch_164
        0x63 -> :sswitch_170
        0x64 -> :sswitch_168
        0x65 -> :sswitch_16c
        0x66 -> :sswitch_174
        0x67 -> :sswitch_178
        0x8f -> :sswitch_180
        0x98 -> :sswitch_17c
        0xa1 -> :sswitch_184
        0xbd -> :sswitch_188
        0xcc -> :sswitch_30
        0x111 -> :sswitch_18c
        0x11e -> :sswitch_190
        0x126 -> :sswitch_194
        0x128 -> :sswitch_198
        0x12a -> :sswitch_19c
        0x130 -> :sswitch_1a0
    .end sparse-switch
.end method


# virtual methods
.method protected LGEswitchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .registers 10
    .parameter "newState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 201
    iget-boolean v3, p0, Lcom/android/internal/telephony/LGEStarRIL;->mPrepSetupPending:Z

    if-nez v3, :cond_d

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p1, v3, :cond_d

    .line 203
    iput-boolean v5, p0, Lcom/android/internal/telephony/LGEStarRIL;->mPrepSetupPending:Z

    .line 205
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_dc

    iget-boolean v3, p0, Lcom/android/internal/telephony/LGEStarRIL;->mPrepSetupPending:Z

    if-eqz v3, :cond_dc

    .line 206
    const/16 v3, 0x49

    invoke-static {v3, v6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 209
    .local v0, rrPnt:Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v4, p0, Lcom/android/internal/telephony/LGEStarRIL;->mPreferredNetworkType:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/LGEStarRIL;->mPreferredNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 217
    const-string/jumbo v3, "ro.build.product"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "p999"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    const/16 v3, 0x130

    :goto_6e
    invoke-static {v3, v6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 219
    .local v2, rrSc:Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 226
    const/16 v3, 0x3d

    invoke-static {v3, v6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 228
    .local v1, rrSSt:Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 234
    iput-boolean v7, p0, Lcom/android/internal/telephony/LGEStarRIL;->mPrepSetupPending:Z

    .line 237
    .end local v0           #rrPnt:Lcom/android/internal/telephony/RILRequest;
    .end local v1           #rrSSt:Lcom/android/internal/telephony/RILRequest;
    .end local v2           #rrSc:Lcom/android/internal/telephony/RILRequest;
    :cond_dc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 238
    return-void

    .line 217
    .restart local v0       #rrPnt:Lcom/android/internal/telephony/RILRequest;
    :cond_e0
    const/16 v3, 0x12a

    goto :goto_6e
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .registers 7
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 348
    const/16 v1, 0x29

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 351
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 359
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .registers 7
    .parameter "result"

    .prologue
    const/16 v4, 0xb

    .line 398
    invoke-static {v4, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 400
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> getIMSI:RIL_REQUEST_GET_IMSI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 408
    const-string/jumbo v2, "ro.build.product"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "p999"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const/16 v2, 0x126

    :goto_49
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 410
    .local v1, rrSL:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
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

    invoke-static {v3}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 414
    return-void

    .line 408
    .end local v1           #rrSL:Lcom/android/internal/telephony/RILRequest;
    :cond_7c
    const/16 v2, 0x11e

    goto :goto_49
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 379
    const/16 v1, 0x2d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 383
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 387
    const/16 v1, 0x8f

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 390
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 394
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 249
    iget v1, p0, Lcom/android/internal/telephony/LGEStarRIL;->mCallState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_33

    const/16 v1, 0xd

    :goto_7
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 254
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 257
    return-void

    .line 249
    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_33
    const/16 v1, 0xcc

    goto :goto_7
.end method

.method protected processSolicited(Landroid/os/Parcel;)V
    .registers 13
    .parameter "p"

    .prologue
    const/4 v10, 0x0

    .line 419
    const/4 v1, 0x0

    .line 421
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 422
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 426
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/LGEStarRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 428
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_33

    .line 429
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected solicited response! sn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :goto_32
    return-void

    .line 434
    :cond_33
    const/4 v2, 0x0

    .line 436
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-lez v7, :cond_9f

    .line 438
    :cond_3c
    :try_start_3c
    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v7, :sswitch_data_3aa

    .line 555
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized solicited response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_5c} :catch_5c

    .line 557
    :catch_5c
    move-exception v6

    .line 560
    .local v6, tr:Ljava/lang/Throwable;
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exception, possible invalid RIL response"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_97

    .line 565
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 566
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 568
    :cond_97
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_32

    .line 439
    .end local v6           #tr:Ljava/lang/Throwable;
    :sswitch_9b
    :try_start_9b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9e} :catch_5c

    move-result-object v2

    .line 573
    .end local v2           #ret:Ljava/lang/Object;
    :cond_9f
    :goto_9f
    if-eqz v0, :cond_33c

    .line 574
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 575
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_32

    .line 440
    .restart local v2       #ret:Ljava/lang/Object;
    :sswitch_a8
    :try_start_a8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 441
    :sswitch_ad
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 442
    :sswitch_b2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 443
    :sswitch_b7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 444
    :sswitch_bc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 445
    :sswitch_c1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 446
    :sswitch_c6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 447
    :sswitch_cb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 448
    :sswitch_d0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 449
    :sswitch_d5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 450
    :sswitch_da
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 451
    :sswitch_df
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 452
    :sswitch_e4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 453
    :sswitch_e9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 454
    :sswitch_ee
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 455
    :sswitch_f3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 456
    :sswitch_f8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 457
    :sswitch_fd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 458
    :sswitch_102
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 459
    :sswitch_107
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 460
    :sswitch_10c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 461
    :sswitch_111
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 462
    :sswitch_116
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 463
    :sswitch_11b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9f

    .line 464
    :sswitch_120
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 465
    :sswitch_126
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 466
    :sswitch_12c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 467
    :sswitch_132
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 468
    :sswitch_138
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 469
    :sswitch_13e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 470
    :sswitch_144
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 471
    :sswitch_14a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 472
    :sswitch_150
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 473
    :sswitch_156
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 474
    :sswitch_15c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 475
    :sswitch_162
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 476
    :sswitch_168
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 477
    :sswitch_16e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 478
    :sswitch_174
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 479
    :sswitch_17a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 480
    :sswitch_180
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 481
    :sswitch_186
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 482
    :sswitch_18c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 483
    :sswitch_192
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 484
    :sswitch_198
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 485
    :sswitch_19e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 486
    :sswitch_1a4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 487
    :sswitch_1aa
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 488
    :sswitch_1b0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 489
    :sswitch_1b6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 490
    :sswitch_1bc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 491
    :sswitch_1c2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 492
    :sswitch_1c8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 493
    :sswitch_1ce
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 494
    :sswitch_1d4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 495
    :sswitch_1da
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 496
    :sswitch_1e0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 497
    :sswitch_1e6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 498
    :sswitch_1ec
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 499
    :sswitch_1f2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 500
    :sswitch_1f8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 501
    :sswitch_1fe
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 502
    :sswitch_204
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 503
    :sswitch_20a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 504
    :sswitch_210
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 505
    :sswitch_216
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 506
    :sswitch_21c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 507
    :sswitch_222
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 508
    :sswitch_228
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 509
    :sswitch_22e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 510
    :sswitch_234
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 511
    :sswitch_23a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 512
    :sswitch_240
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 513
    :sswitch_246
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 514
    :sswitch_24c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 515
    :sswitch_252
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 516
    :sswitch_258
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 517
    :sswitch_25e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 518
    :sswitch_264
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 519
    :sswitch_26a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 520
    :sswitch_270
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 521
    :sswitch_276
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 522
    :sswitch_27c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 523
    :sswitch_282
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 524
    :sswitch_288
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 525
    :sswitch_28e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 526
    :sswitch_294
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 527
    :sswitch_29a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 528
    :sswitch_2a0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 529
    :sswitch_2a6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 530
    :sswitch_2ac
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 531
    :sswitch_2b2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 532
    :sswitch_2b8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 533
    :sswitch_2be
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 534
    :sswitch_2c4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 535
    :sswitch_2ca
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 536
    :sswitch_2d0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 537
    :sswitch_2d6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 538
    :sswitch_2dc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 539
    :sswitch_2e2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 540
    :sswitch_2e8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 541
    :sswitch_2ee
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 542
    :sswitch_2f4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 543
    :sswitch_2fa
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 544
    :sswitch_300
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 545
    :sswitch_306
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responsePdpAddress(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 546
    :sswitch_30c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 547
    :sswitch_312
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 548
    :sswitch_318
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 549
    :sswitch_31e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 550
    :sswitch_324
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 551
    :sswitch_32a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 552
    :sswitch_330
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9f

    .line 553
    :sswitch_336
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_339
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_339} :catch_5c

    move-result-object v2

    goto/16 :goto_9f

    .line 579
    .end local v2           #ret:Ljava/lang/Object;
    :cond_33c
    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v8, 0x1b

    if-ne v7, v8, :cond_362

    move-object v7, v2

    .line 580
    check-cast v7, [Ljava/lang/String;

    move-object v5, v7

    check-cast v5, [Ljava/lang/String;

    .line 581
    .local v5, strings:[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x2

    if-le v7, v8, :cond_358

    const/4 v7, 0x1

    aget-object v7, v5, v7

    const-string/jumbo v8, "vsnet"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_362

    .line 582
    :cond_358
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 583
    iget-object v7, p0, Lcom/android/internal/telephony/LGEStarRIL;->saveDataCall:Landroid/os/Message;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/LGEStarRIL;->showPdpAddress(Landroid/os/Message;)V

    goto/16 :goto_32

    .line 588
    .end local v5           #strings:[Ljava/lang/String;
    :cond_362
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

    invoke-static {v8}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v8, v2}, Lcom/android/internal/telephony/LGEStarRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 591
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_3a4

    .line 592
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v2, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 593
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 596
    :cond_3a4
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_32

    .line 438
    nop

    :sswitch_data_3aa
    .sparse-switch
        0x1 -> :sswitch_9b
        0x2 -> :sswitch_a8
        0x3 -> :sswitch_ad
        0x4 -> :sswitch_b2
        0x5 -> :sswitch_b7
        0x6 -> :sswitch_bc
        0x7 -> :sswitch_c1
        0x8 -> :sswitch_c6
        0x9 -> :sswitch_cb
        0xa -> :sswitch_d0
        0xb -> :sswitch_d5
        0xc -> :sswitch_da
        0xd -> :sswitch_df
        0xe -> :sswitch_e4
        0xf -> :sswitch_ee
        0x10 -> :sswitch_f3
        0x11 -> :sswitch_f8
        0x12 -> :sswitch_fd
        0x13 -> :sswitch_102
        0x14 -> :sswitch_107
        0x15 -> :sswitch_10c
        0x16 -> :sswitch_111
        0x17 -> :sswitch_116
        0x18 -> :sswitch_11b
        0x19 -> :sswitch_120
        0x1a -> :sswitch_126
        0x1b -> :sswitch_12c
        0x1c -> :sswitch_132
        0x1d -> :sswitch_138
        0x1e -> :sswitch_13e
        0x1f -> :sswitch_144
        0x20 -> :sswitch_14a
        0x21 -> :sswitch_150
        0x22 -> :sswitch_156
        0x23 -> :sswitch_15c
        0x24 -> :sswitch_162
        0x25 -> :sswitch_168
        0x26 -> :sswitch_16e
        0x27 -> :sswitch_174
        0x28 -> :sswitch_17a
        0x29 -> :sswitch_180
        0x2a -> :sswitch_186
        0x2b -> :sswitch_18c
        0x2c -> :sswitch_192
        0x2d -> :sswitch_198
        0x2e -> :sswitch_19e
        0x2f -> :sswitch_1a4
        0x30 -> :sswitch_1aa
        0x31 -> :sswitch_1b0
        0x32 -> :sswitch_1b6
        0x33 -> :sswitch_1bc
        0x34 -> :sswitch_1c2
        0x35 -> :sswitch_1c8
        0x36 -> :sswitch_1ce
        0x37 -> :sswitch_1d4
        0x38 -> :sswitch_1da
        0x39 -> :sswitch_1e0
        0x3a -> :sswitch_1e6
        0x3b -> :sswitch_1ec
        0x3c -> :sswitch_1f2
        0x3d -> :sswitch_1f8
        0x3e -> :sswitch_1fe
        0x3f -> :sswitch_204
        0x40 -> :sswitch_20a
        0x41 -> :sswitch_210
        0x42 -> :sswitch_216
        0x43 -> :sswitch_21c
        0x44 -> :sswitch_222
        0x45 -> :sswitch_228
        0x46 -> :sswitch_22e
        0x47 -> :sswitch_234
        0x48 -> :sswitch_23a
        0x49 -> :sswitch_240
        0x4a -> :sswitch_246
        0x4b -> :sswitch_24c
        0x4c -> :sswitch_252
        0x4d -> :sswitch_258
        0x4e -> :sswitch_25e
        0x4f -> :sswitch_264
        0x50 -> :sswitch_26a
        0x51 -> :sswitch_270
        0x52 -> :sswitch_276
        0x53 -> :sswitch_27c
        0x54 -> :sswitch_282
        0x55 -> :sswitch_288
        0x56 -> :sswitch_2be
        0x57 -> :sswitch_28e
        0x58 -> :sswitch_294
        0x59 -> :sswitch_29a
        0x5a -> :sswitch_2a0
        0x5b -> :sswitch_2a6
        0x5c -> :sswitch_2ac
        0x5d -> :sswitch_2b2
        0x5e -> :sswitch_2b8
        0x5f -> :sswitch_2c4
        0x60 -> :sswitch_2ca
        0x61 -> :sswitch_2d0
        0x62 -> :sswitch_2d6
        0x63 -> :sswitch_2e8
        0x64 -> :sswitch_2dc
        0x65 -> :sswitch_2e2
        0x66 -> :sswitch_2ee
        0x67 -> :sswitch_2f4
        0x8f -> :sswitch_2fa
        0x98 -> :sswitch_300
        0xa1 -> :sswitch_306
        0xbd -> :sswitch_30c
        0xcc -> :sswitch_e9
        0x111 -> :sswitch_312
        0x117 -> :sswitch_318
        0x11e -> :sswitch_31e
        0x126 -> :sswitch_324
        0x128 -> :sswitch_32a
        0x12a -> :sswitch_330
        0x130 -> :sswitch_336
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .registers 26
    .parameter "p"

    .prologue
    .line 626
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 628
    .local v13, response:I
    packed-switch v13, :pswitch_data_5a4

    .line 661
    :pswitch_7
    :try_start_7
    new-instance v19, Ljava/lang/RuntimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unrecognized unsol response: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_22} :catch_22

    .line 663
    :catch_22
    move-exception v18

    .line 664
    .local v18, tr:Ljava/lang/Throwable;
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception processing unsol response: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Exception:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .end local v18           #tr:Ljava/lang/Throwable;
    :cond_4b
    :goto_4b
    return-void

    .line 629
    :pswitch_4c
    :try_start_4c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4f} :catch_22

    move-result-object v15

    .line 669
    :goto_50
    packed-switch v13, :pswitch_data_5e6

    :pswitch_53
    goto :goto_4b

    .line 672
    :pswitch_54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LGEStarRIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    .line 673
    .local v8, newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 675
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/LGEStarRIL;->LGEswitchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_4b

    .line 630
    .end local v8           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_71
    :try_start_71
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .local v15, ret:Ljava/lang/Object;
    goto :goto_50

    .line 631
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_76
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 632
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_7b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 633
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_80
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 634
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_85
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 635
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_8a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 636
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_8f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseNitz(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 637
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_94
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 638
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_99
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseDataCallListChanged(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 639
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_9e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 640
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_a3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 641
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_a8
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 642
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_ad
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 643
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_b2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 644
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_b7
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 645
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_bc
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 646
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_c1
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 647
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_c6
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 648
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_cb
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_50

    .line 649
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_d0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 650
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_d6
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 651
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_dc
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 652
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_e2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 653
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_e8
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 654
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_ee
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 655
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_f4
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v15

    .local v15, ret:Ljava/util/ArrayList;
    goto/16 :goto_50

    .line 656
    .end local v15           #ret:Ljava/util/ArrayList;
    :pswitch_fa
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .local v15, ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 657
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_100
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 658
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_106
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEStarRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_109
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_109} :catch_22

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_50

    .line 678
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_10c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLog(I)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 684
    :pswitch_127
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLog(I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 690
    :pswitch_142
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLog(I)V

    .line 693
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v4, v0, [Ljava/lang/String;

    .line 695
    .local v4, a:[Ljava/lang/String;
    const/16 v19, 0x1

    check-cast v15, Ljava/lang/String;

    aput-object v15, v4, v19

    .line 699
    invoke-static {v4}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v16

    .line 700
    .local v16, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 707
    .end local v4           #a:[Ljava/lang/String;
    .end local v16           #sms:Landroid/telephony/SmsMessage;
    :pswitch_17b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 715
    :pswitch_1a2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 717
    check-cast v15, [I

    move-object/from16 v17, v15

    check-cast v17, [I

    .line 719
    .local v17, smsIndex:[I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1de

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 725
    :cond_1de
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " NEW_SMS_ON_SIM ERROR with wrong length "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_4b

    .end local v17           #smsIndex:[I
    :pswitch_1ff
    move-object/from16 v19, v15

    .line 730
    check-cast v19, [Ljava/lang/String;

    move-object/from16 v12, v19

    check-cast v12, [Ljava/lang/String;

    .line 732
    .local v12, resp:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_22a

    .line 733
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [Ljava/lang/String;

    .line 734
    const/16 v19, 0x0

    check-cast v15, [Ljava/lang/String;

    check-cast v15, [Ljava/lang/String;

    const/16 v20, 0x0

    aget-object v20, v15, v20

    aput-object v20, v12, v19

    .line 735
    const/16 v19, 0x1

    const/16 v20, 0x0

    aput-object v20, v12, v19

    .line 737
    :cond_22a
    const/16 v19, 0x0

    aget-object v19, v12, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v12, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 744
    .end local v12           #resp:[Ljava/lang/String;
    :pswitch_257
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 748
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 751
    .local v9, nitzReceiveTime:J
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/Object;

    .line 753
    .local v14, result:[Ljava/lang/Object;
    const/16 v19, 0x0

    aput-object v15, v14, v19

    .line 754
    const/16 v19, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v14, v19

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_294

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v14, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 762
    :cond_294
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/LGEStarRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto/16 :goto_4b

    .line 771
    .end local v9           #nitzReceiveTime:J
    .end local v14           #result:[Ljava/lang/Object;
    :pswitch_29a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 777
    :pswitch_2bc
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 783
    :pswitch_2db
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 792
    :pswitch_302
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLog(I)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 801
    :pswitch_329
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 810
    :pswitch_350
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 819
    :pswitch_377
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 828
    :pswitch_39e
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLog(I)V

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_4b

    .line 836
    :pswitch_3b6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 845
    :pswitch_3dd
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 854
    :pswitch_404
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 862
    :pswitch_42b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLog(I)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_4b

    .line 870
    :pswitch_443
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLog(I)V

    move-object/from16 v16, v15

    .line 872
    check-cast v16, Landroid/telephony/SmsMessage;

    .line 874
    .restart local v16       #sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 881
    .end local v16           #sms:Landroid/telephony/SmsMessage;
    :pswitch_470
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLog(I)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 890
    :pswitch_497
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLog(I)V

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_4b

    .line 898
    :pswitch_4af
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLog(I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_4b

    .line 906
    :pswitch_4c7
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 915
    :pswitch_4ee
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 927
    :pswitch_515
    :try_start_515
    move-object v0, v15

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0
    :try_end_519
    .catch Ljava/lang/ClassCastException; {:try_start_515 .. :try_end_519} :catch_534

    .line 933
    .local v7, listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_51d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 934
    .local v11, rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 935
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/LGEStarRIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_51d

    .line 928
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v11           #rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :catch_534
    move-exception v5

    .line 929
    .local v5, e:Ljava/lang/ClassCastException;
    const-string v19, "RILJ"

    const-string v20, "Unexpected exception casting to listInfoRecs"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4b

    .end local v5           #e:Ljava/lang/ClassCastException;
    :pswitch_542
    move-object/from16 v19, v15

    .line 940
    check-cast v19, [B

    check-cast v19, [B

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 947
    :pswitch_575
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogvRet(ILjava/lang/Object;)V

    goto/16 :goto_4b

    .line 952
    :pswitch_57c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/LGEStarRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b

    .line 628
    nop

    :pswitch_data_5a4
    .packed-switch 0x3e8
        :pswitch_4c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
        :pswitch_8a
        :pswitch_7
        :pswitch_8f
        :pswitch_94
        :pswitch_99
        :pswitch_9e
        :pswitch_a3
        :pswitch_a8
        :pswitch_ad
        :pswitch_b2
        :pswitch_b7
        :pswitch_bc
        :pswitch_c1
        :pswitch_cb
        :pswitch_d0
        :pswitch_d6
        :pswitch_dc
        :pswitch_c6
        :pswitch_e2
        :pswitch_e8
        :pswitch_ee
        :pswitch_f4
        :pswitch_fa
        :pswitch_100
        :pswitch_106
    .end packed-switch

    .line 669
    :pswitch_data_5e6
    .packed-switch 0x3e8
        :pswitch_54
        :pswitch_10c
        :pswitch_127
        :pswitch_142
        :pswitch_17b
        :pswitch_1a2
        :pswitch_1ff
        :pswitch_53
        :pswitch_257
        :pswitch_29a
        :pswitch_2bc
        :pswitch_2db
        :pswitch_302
        :pswitch_329
        :pswitch_350
        :pswitch_377
        :pswitch_39e
        :pswitch_3b6
        :pswitch_3dd
        :pswitch_42b
        :pswitch_443
        :pswitch_470
        :pswitch_497
        :pswitch_404
        :pswitch_4af
        :pswitch_4c7
        :pswitch_4ee
        :pswitch_515
        :pswitch_542
        :pswitch_575
        :pswitch_57c
    .end packed-switch
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    .line 284
    const/16 v1, 0x21

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 287
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    if-nez p2, :cond_15

    .line 290
    const/16 p2, 0x1ff

    .line 291
    :cond_15
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 300
    return-void
.end method

.method protected responseDataCallListChanged(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 9
    .parameter "p"

    .prologue
    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 604
    .local v4, ver:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 605
    .local v1, num:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "responseDataCallList ver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " num="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 607
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 608
    .local v2, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    if-ge v0, v1, :cond_4e

    .line 609
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/telephony/LGEStarRIL;->getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;

    move-result-object v3

    .line 610
    .local v3, tmpRes:Lcom/android/internal/telephony/DataCallState;
    iget v5, v3, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v5, :cond_48

    iget-object v5, v3, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    const-string/jumbo v6, "vsnet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_48

    .line 612
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LGEStarRIL;->showPdpAddress(Landroid/os/Message;)V

    .line 613
    :cond_48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 616
    .end local v3           #tmpRes:Lcom/android/internal/telephony/DataCallState;
    :cond_4e
    return-object v2
.end method

.method protected responseNitz(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 22
    .parameter "p"

    .prologue
    .line 1007
    const/4 v5, 0x0

    .line 1012
    .local v5, dst:I
    const-string/jumbo v16, "ro.build.product"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "p999"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c9

    const/4 v6, 0x1

    .line 1014
    .local v6, isIfx:Z
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1017
    .local v7, num:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1020
    .local v10, parceldata:Ljava/lang/String;
    if-eqz v6, :cond_56

    .line 1021
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1022
    .local v9, parcelarray:[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v17, v9, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v9, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1023
    array-length v0, v9

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_cc

    const/16 v16, 0x2

    aget-object v11, v9, v16

    .line 1024
    .local v11, parcelextra:Ljava/lang/String;
    :goto_52
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1029
    .end local v9           #parcelarray:[Ljava/lang/String;
    .end local v11           #parcelextra:Ljava/lang/String;
    :cond_56
    :try_start_56
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v16, "yy/MM/dd,HH:mm:ss"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1030
    .local v3, dateFormatter:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v16, "yy/MM/dd,HH:mm:ss"

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v4, dateParser:Ljava/text/SimpleDateFormat;
    if-eqz v6, :cond_cf

    .line 1035
    mul-int/lit8 v16, v7, 0xf

    mul-int/lit8 v16, v16, 0x3c

    move/from16 v0, v16

    mul-int/lit16 v8, v0, 0x3e8

    .line 1036
    .local v8, offset:I
    invoke-virtual {v4, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    int-to-long v0, v8

    move-wide/from16 v18, v0

    sub-long v14, v16, v18

    .line 1037
    .local v14, when:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 1038
    .local v2, d:Ljava/util/Date;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_89
    .catch Ljava/text/ParseException; {:try_start_56 .. :try_end_89} :catch_da

    move-result-object v12

    .line 1049
    .end local v2           #d:Ljava/util/Date;
    .end local v3           #dateFormatter:Ljava/text/SimpleDateFormat;
    .end local v4           #dateParser:Ljava/text/SimpleDateFormat;
    .end local v8           #offset:I
    .end local v14           #when:J
    .local v12, response:Ljava/lang/String;
    :goto_8a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-gez v7, :cond_f7

    const-string v16, ""

    :goto_99
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1050
    if-eqz v6, :cond_c8

    .line 1052
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1055
    :cond_c8
    return-object v12

    .line 1012
    .end local v6           #isIfx:Z
    .end local v7           #num:I
    .end local v10           #parceldata:Ljava/lang/String;
    .end local v12           #response:Ljava/lang/String;
    :cond_c9
    const/4 v6, 0x0

    goto/16 :goto_12

    .line 1023
    .restart local v6       #isIfx:Z
    .restart local v7       #num:I
    .restart local v9       #parcelarray:[Ljava/lang/String;
    .restart local v10       #parceldata:Ljava/lang/String;
    :cond_cc
    const-string v11, "0"

    goto :goto_52

    .line 1040
    .end local v9           #parcelarray:[Ljava/lang/String;
    .restart local v3       #dateFormatter:Ljava/text/SimpleDateFormat;
    .restart local v4       #dateParser:Ljava/text/SimpleDateFormat;
    :cond_cf
    :try_start_cf
    invoke-virtual {v4, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_d8
    .catch Ljava/text/ParseException; {:try_start_cf .. :try_end_d8} :catch_da

    move-result-object v12

    .restart local v12       #response:Ljava/lang/String;
    goto :goto_8a

    .line 1043
    .end local v3           #dateFormatter:Ljava/text/SimpleDateFormat;
    .end local v4           #dateParser:Ljava/text/SimpleDateFormat;
    .end local v12           #response:Ljava/lang/String;
    :catch_da
    move-exception v13

    .line 1044
    .local v13, tpe:Ljava/text/ParseException;
    const-string v16, "RILJ"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "NITZ TZ conversion failed: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    move-object v12, v10

    .restart local v12       #response:Ljava/lang/String;
    goto :goto_8a

    .line 1049
    .end local v13           #tpe:Ljava/text/ParseException;
    :cond_f7
    const-string v16, "+"

    goto :goto_99
.end method

.method protected responsePdpAddress(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 13
    .parameter "p"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 967
    new-array v1, v10, [Ljava/lang/String;

    .line 968
    .local v1, dnses:[Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/String;

    .line 970
    .local v2, gateways:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 972
    .local v4, num:I
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/String;

    .line 974
    .local v5, response:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 976
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 977
    .local v3, ifname:Ljava/lang/String;
    aput-object v3, v5, v9

    .line 979
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_c4

    .line 980
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "net."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".ip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v5, v10

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v8

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v9

    .line 983
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    .line 984
    aget-object v6, v1, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7e

    .line 985
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "net."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dns1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_7e
    aget-object v6, v1, v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a5

    .line 987
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "net."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dns2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v1, v9

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :cond_a5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "net."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".gw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v2, v8

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :cond_c4
    new-instance v0, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v0}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 992
    .local v0, callState:Lcom/android/internal/telephony/DataCallState;
    const/4 v6, 0x4

    iput v6, v0, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 993
    iput v8, v0, Lcom/android/internal/telephony/DataCallState;->status:I

    .line 994
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 995
    iput v9, v0, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 996
    aget-object v6, v5, v9

    iput-object v6, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 997
    iput-object v1, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 998
    iput-object v2, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    .line 999
    aget-object v6, v5, v10

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 1002
    return-object v0
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 364
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 368
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 371
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 375
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .registers 12
    .parameter "on"
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 149
    iget-boolean v6, p0, Lcom/android/internal/telephony/LGEStarRIL;->mPrepSetupPending:Z

    if-eqz v6, :cond_b2

    .line 150
    const-string/jumbo v6, "ro.build.product"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "p999"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f7

    .line 152
    const/16 v6, 0x128

    invoke-static {v6, v8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 154
    .local v3, rrSPR:Lcom/android/internal/telephony/RILRequest;
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 160
    const/16 v6, 0xbd

    invoke-static {v6, v8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 162
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 179
    .end local v3           #rrSPR:Lcom/android/internal/telephony/RILRequest;
    :goto_85
    const/16 v6, 0x98

    invoke-static {v6, v8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 181
    .local v2, rrGCS:Lcom/android/internal/telephony/RILRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 185
    .end local v2           #rrGCS:Lcom/android/internal/telephony/RILRequest;
    :cond_b2
    const/16 v6, 0x17

    invoke-static {v6, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 188
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v6, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v6, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_136

    :goto_c2
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v4, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v4, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 197
    return-void

    .line 169
    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_f7
    const/16 v6, 0x111

    invoke-static {v6, v8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 171
    .local v1, rrCs:Lcom/android/internal/telephony/RILRequest;
    iget-object v6, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v6, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v6, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto/16 :goto_85

    .end local v1           #rrCs:Lcom/android/internal/telephony/RILRequest;
    .restart local v0       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_136
    move v4, v5

    .line 189
    goto :goto_c2
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 12
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "result"

    .prologue
    .line 309
    iput-object p8, p0, Lcom/android/internal/telephony/LGEStarRIL;->saveDataCall:Landroid/os/Message;

    .line 310
    const/16 v1, 0x1b

    invoke-static {v1, p8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 313
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 330
    return-void
.end method

.method public showPdpAddress(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 334
    const/16 v1, 0xa1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 337
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 344
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .registers 6
    .parameter "c"
    .parameter "result"

    .prologue
    .line 266
    const/16 v1, 0x31

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 268
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
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

    invoke-static {v2}, Lcom/android/internal/telephony/LGEStarRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEStarRIL;->riljLog(Ljava/lang/String;)V

    .line 270
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEStarRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 274
    return-void
.end method
