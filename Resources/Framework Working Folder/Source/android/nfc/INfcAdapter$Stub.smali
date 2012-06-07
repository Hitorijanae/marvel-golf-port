.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_activeSwp:I = 0x19

.field static final TRANSACTION_deselectSecureElement:I = 0x1a

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_disableNdefPush:I = 0x8

.field static final TRANSACTION_disableP2P:I = 0x13

.field static final TRANSACTION_disableReaderWriter:I = 0x11

.field static final TRANSACTION_enable:I = 0x6

.field static final TRANSACTION_enableNdefPush:I = 0x7

.field static final TRANSACTION_enableP2P:I = 0x12

.field static final TRANSACTION_enableReaderWriter:I = 0x10

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x2

.field static final TRANSACTION_getNfcSecureElementInterface:I = 0x3

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getProperties:I = 0x14

.field static final TRANSACTION_getSecureElementList:I = 0x16

.field static final TRANSACTION_getSelectedSecureElement:I = 0x17

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_isCardEmuEnabled:I = 0xd

.field static final TRANSACTION_isEnabled:I = 0xc

.field static final TRANSACTION_isNdefPushEnabled:I = 0x9

.field static final TRANSACTION_isP2PEnabled:I = 0xf

.field static final TRANSACTION_isReaderWriterEnabled:I = 0xe

.field static final TRANSACTION_selectSecureElement:I = 0x18

.field static final TRANSACTION_setForegroundDispatch:I = 0xa

.field static final TRANSACTION_setForegroundNdefPush:I = 0xb

.field static final TRANSACTION_setProperties:I = 0x15

.field static final TRANSACTION_setSecureElementState:I = 0x1b

.field static final TRANSACTION_storeSePreference:I = 0x1c


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapter;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/nfc/INfcAdapter$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_274

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_a
    return v5

    .line 45
    :sswitch_b
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 50
    :sswitch_11
    const-string v6, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v3

    .line 52
    .local v3, _result:Landroid/nfc/INfcTag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v3, :cond_23

    invoke-interface {v3}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_23
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_a

    .line 58
    .end local v3           #_result:Landroid/nfc/INfcTag;
    :sswitch_27
    const-string v6, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v3

    .line 62
    .local v3, _result:Landroid/nfc/INfcAdapterExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v3, :cond_3d

    invoke-interface {v3}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_3d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_a

    .line 68
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/nfc/INfcAdapterExtras;
    :sswitch_41
    const-string v6, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcSecureElementInterface()Landroid/nfc/INfcSecureElement;

    move-result-object v3

    .line 70
    .local v3, _result:Landroid/nfc/INfcSecureElement;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v3, :cond_53

    invoke-interface {v3}, Landroid/nfc/INfcSecureElement;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_53
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_a

    .line 76
    .end local v3           #_result:Landroid/nfc/INfcSecureElement;
    :sswitch_57
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v3

    .line 78
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 84
    .end local v3           #_result:I
    :sswitch_67
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disable()Z

    move-result v3

    .line 86
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v3, :cond_7a

    move v4, v5

    :goto_76
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_7a
    move v4, v6

    goto :goto_76

    .line 92
    .end local v3           #_result:Z
    :sswitch_7c
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v3

    .line 94
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v3, :cond_8b

    move v6, v5

    :cond_8b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 100
    .end local v3           #_result:Z
    :sswitch_90
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v3

    .line 102
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v3, :cond_9f

    move v6, v5

    :cond_9f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 108
    .end local v3           #_result:Z
    :sswitch_a4
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v3

    .line 110
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v3, :cond_b3

    move v6, v5

    :cond_b3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 116
    .end local v3           #_result:Z
    :sswitch_b8
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v3

    .line 118
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v3, :cond_c7

    move v6, v5

    :cond_c7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 124
    .end local v3           #_result:Z
    :sswitch_cc
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fd

    .line 127
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 133
    .local v0, _arg0:Landroid/app/PendingIntent;
    :goto_df
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 135
    .local v1, _arg1:[Landroid/content/IntentFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ff

    .line 136
    sget-object v4, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/TechListParcel;

    .line 141
    .local v2, _arg2:Landroid/nfc/TechListParcel;
    :goto_f5
    invoke-virtual {p0, v0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 130
    .end local v0           #_arg0:Landroid/app/PendingIntent;
    .end local v1           #_arg1:[Landroid/content/IntentFilter;
    .end local v2           #_arg2:Landroid/nfc/TechListParcel;
    :cond_fd
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/PendingIntent;
    goto :goto_df

    .line 139
    .restart local v1       #_arg1:[Landroid/content/IntentFilter;
    :cond_ff
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/nfc/TechListParcel;
    goto :goto_f5

    .line 147
    .end local v0           #_arg0:Landroid/app/PendingIntent;
    .end local v1           #_arg1:[Landroid/content/IntentFilter;
    .end local v2           #_arg2:Landroid/nfc/TechListParcel;
    :sswitch_101
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_124

    .line 150
    sget-object v4, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 156
    .local v0, _arg0:Landroid/nfc/NdefMessage;
    :goto_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/INdefPushCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INdefPushCallback;

    move-result-object v1

    .line 157
    .local v1, _arg1:Landroid/nfc/INdefPushCallback;
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcAdapter$Stub;->setForegroundNdefPush(Landroid/nfc/NdefMessage;Landroid/nfc/INdefPushCallback;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 153
    .end local v0           #_arg0:Landroid/nfc/NdefMessage;
    .end local v1           #_arg1:Landroid/nfc/INdefPushCallback;
    :cond_124
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/nfc/NdefMessage;
    goto :goto_114

    .line 163
    .end local v0           #_arg0:Landroid/nfc/NdefMessage;
    :sswitch_126
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isEnabled()Z

    move-result v3

    .line 165
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v3, :cond_135

    move v6, v5

    :cond_135
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 171
    .end local v3           #_result:Z
    :sswitch_13a
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isCardEmuEnabled()Z

    move-result v3

    .line 173
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v3, :cond_149

    move v6, v5

    :cond_149
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 179
    .end local v3           #_result:Z
    :sswitch_14e
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isReaderWriterEnabled()Z

    move-result v3

    .line 181
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v3, :cond_15d

    move v6, v5

    :cond_15d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 187
    .end local v3           #_result:Z
    :sswitch_162
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isP2PEnabled()Z

    move-result v3

    .line 189
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v3, :cond_171

    move v6, v5

    :cond_171
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 195
    .end local v3           #_result:Z
    :sswitch_176
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enableReaderWriter()Z

    move-result v3

    .line 197
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v3, :cond_185

    move v6, v5

    :cond_185
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 203
    .end local v3           #_result:Z
    :sswitch_18a
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disableReaderWriter()Z

    move-result v3

    .line 205
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v3, :cond_199

    move v6, v5

    :cond_199
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 211
    .end local v3           #_result:Z
    :sswitch_19e
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enableP2P()Z

    move-result v3

    .line 213
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v3, :cond_1ad

    move v6, v5

    :cond_1ad
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 219
    .end local v3           #_result:Z
    :sswitch_1b2
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disableP2P()Z

    move-result v3

    .line 221
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v3, :cond_1c1

    move v6, v5

    :cond_1c1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 227
    .end local v3           #_result:Z
    :sswitch_1c6
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 237
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1db
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcAdapter$Stub;->setProperties(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 243
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 249
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_1f4
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getSecureElementList()[I

    move-result-object v3

    .line 251
    .local v3, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_a

    .line 257
    .end local v3           #_result:[I
    :sswitch_205
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getSelectedSecureElement()I

    move-result v3

    .line 259
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 265
    .end local v3           #_result:I
    :sswitch_216
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 268
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->selectSecureElement(I)I

    move-result v3

    .line 269
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 275
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_22b
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->activeSwp()I

    move-result v3

    .line 277
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 283
    .end local v3           #_result:I
    :sswitch_23c
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->deselectSecureElement()I

    move-result v3

    .line 285
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 291
    .end local v3           #_result:I
    :sswitch_24d
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_261

    move v0, v5

    .line 294
    .local v0, _arg0:Z
    :goto_259
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->setSecureElementState(Z)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .end local v0           #_arg0:Z
    :cond_261
    move v0, v6

    .line 293
    goto :goto_259

    .line 300
    :sswitch_263
    const-string v4, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 303
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->storeSePreference(I)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 41
    :sswitch_data_274
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_27
        0x3 -> :sswitch_41
        0x4 -> :sswitch_57
        0x5 -> :sswitch_67
        0x6 -> :sswitch_7c
        0x7 -> :sswitch_90
        0x8 -> :sswitch_a4
        0x9 -> :sswitch_b8
        0xa -> :sswitch_cc
        0xb -> :sswitch_101
        0xc -> :sswitch_126
        0xd -> :sswitch_13a
        0xe -> :sswitch_14e
        0xf -> :sswitch_162
        0x10 -> :sswitch_176
        0x11 -> :sswitch_18a
        0x12 -> :sswitch_19e
        0x13 -> :sswitch_1b2
        0x14 -> :sswitch_1c6
        0x15 -> :sswitch_1db
        0x16 -> :sswitch_1f4
        0x17 -> :sswitch_205
        0x18 -> :sswitch_216
        0x19 -> :sswitch_22b
        0x1a -> :sswitch_23c
        0x1b -> :sswitch_24d
        0x1c -> :sswitch_263
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
