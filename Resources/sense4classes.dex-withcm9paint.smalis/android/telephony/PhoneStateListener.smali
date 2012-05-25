.class public Landroid/telephony/PhoneStateListener;
.super Ljava/lang/Object;
.source "PhoneStateListener.java"


# static fields
.field public static final LISTEN_CALL_DISCONNECTED:I = 0x400

.field public static final LISTEN_CALL_FORWARDING_INDICATOR:I = 0x8

.field public static final LISTEN_CALL_STATE:I = 0x20

.field public static final LISTEN_CELL_LOCATION:I = 0x10

.field public static final LISTEN_DATA_ACTIVITY:I = 0x80

.field public static final LISTEN_DATA_CONNECTION_STATE:I = 0x40

.field public static final LISTEN_MESSAGE_WAITING_INDICATOR:I = 0x4

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_OTASP_CHANGED:I = 0x200

.field public static final LISTEN_PRECISE_CALL_STATE:I = 0x800

.field public static final LISTEN_SEPARATE_SERVICE_STATE:I = 0x1000

.field public static final LISTEN_SERVICE_STATE:I = 0x1

.field public static final LISTEN_SIGNAL_STRENGTH:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LISTEN_SIGNAL_STRENGTHS:I = 0x100


# instance fields
.field callback:Lcom/android/internal/telephony/IPhoneStateListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    new-instance v0, Landroid/telephony/PhoneStateListener$1;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneStateListener$1;-><init>(Landroid/telephony/PhoneStateListener;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 540
    new-instance v0, Landroid/telephony/PhoneStateListener$2;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneStateListener$2;-><init>(Landroid/telephony/PhoneStateListener;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    .line 176
    return-void
.end method


# virtual methods
.method public onCallDisconnected(Ljava/lang/String;)V
    .registers 2
    .parameter "incomingNumber"

    .prologue
    .line 605
    return-void
.end method

.method public onCallForwardingIndicatorChanged(Z)V
    .registers 2
    .parameter "cfi"

    .prologue
    .line 225
    return-void
.end method

.method public onCallForwardingIndicatorChangedExt(ZI)V
    .registers 3
    .parameter "cfi"
    .parameter "phoneType"

    .prologue
    .line 351
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 243
    return-void
.end method

.method public onCallStateChangedExt(ILjava/lang/String;I)V
    .registers 4
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneType"

    .prologue
    .line 375
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 2
    .parameter "location"

    .prologue
    .line 232
    return-void
.end method

.method public onCellLocationChangedExt(Landroid/telephony/CellLocation;I)V
    .registers 3
    .parameter "location"
    .parameter "phoneType"

    .prologue
    .line 361
    return-void
.end method

.method public onDataActivity(I)V
    .registers 2
    .parameter "direction"

    .prologue
    .line 274
    return-void
.end method

.method public onDataActivityExt(II)V
    .registers 3
    .parameter "direction"
    .parameter "phoneType"

    .prologue
    .line 412
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 255
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 261
    return-void
.end method

.method public onDataConnectionStateChangedExt(II)V
    .registers 3
    .parameter "state"
    .parameter "phoneType"

    .prologue
    .line 390
    return-void
.end method

.method public onDataConnectionStateChangedExt(III)V
    .registers 4
    .parameter "state"
    .parameter "networkType"
    .parameter "phoneType"

    .prologue
    .line 396
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .registers 2
    .parameter "mwi"

    .prologue
    .line 209
    return-void
.end method

.method public onMessageWaitingIndicatorChangedEnhanced(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 217
    return-void
.end method

.method public onMessageWaitingIndicatorChangedExt(ZI)V
    .registers 3
    .parameter "mwi"
    .parameter "phoneType"

    .prologue
    .line 341
    return-void
.end method

.method public onOtaspChanged(I)V
    .registers 2
    .parameter "otaspMode"

    .prologue
    .line 301
    return-void
.end method

.method public onPreciseCallStateChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 609
    return-void
.end method

.method public onSeparateServiceStateChanged([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .registers 3
    .parameter "voiceServiceState"
    .parameter "dataServiceState"

    .prologue
    .line 314
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 2
    .parameter "serviceState"

    .prologue
    .line 188
    return-void
.end method

.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .registers 3
    .parameter "serviceState"
    .parameter "phoneType"

    .prologue
    .line 331
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .registers 2
    .parameter "asu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 2
    .parameter "signalStrength"

    .prologue
    .line 286
    return-void
.end method

.method public onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V
    .registers 3
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    .line 427
    return-void
.end method
