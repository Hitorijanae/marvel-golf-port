.class public final Landroid/bluetooth/BluetoothUuid;
.super Ljava/lang/Object;
.source "BluetoothUuid.java"


# static fields
.field public static final AdvAudioDist:Landroid/os/ParcelUuid;

.field public static final AudioSink:Landroid/os/ParcelUuid;

.field public static final AudioSource:Landroid/os/ParcelUuid;

.field public static final AvrcpController:Landroid/os/ParcelUuid;

.field public static final AvrcpTarget:Landroid/os/ParcelUuid;

.field public static final BIP:Landroid/os/ParcelUuid;

.field public static final BNEP:Landroid/os/ParcelUuid;

.field public static final BasicPrinting:Landroid/os/ParcelUuid;

.field public static final CTP:Landroid/os/ParcelUuid;

.field public static final DUN:Landroid/os/ParcelUuid;

.field public static final DialUp:Landroid/os/ParcelUuid;

.field public static final DirectPrinting:Landroid/os/ParcelUuid;

.field public static final FAX:Landroid/os/ParcelUuid;

.field public static final FileTransfer:Landroid/os/ParcelUuid;

.field public static final GN:Landroid/os/ParcelUuid;

.field public static final GenericAudio:Landroid/os/ParcelUuid;

.field public static final HSP:Landroid/os/ParcelUuid;

.field public static final HSP_AG:Landroid/os/ParcelUuid;

.field public static final Handsfree:Landroid/os/ParcelUuid;

.field public static final Handsfree_AG:Landroid/os/ParcelUuid;

.field public static final Hid:Landroid/os/ParcelUuid;

.field public static final ICP:Landroid/os/ParcelUuid;

.field public static final LAP:Landroid/os/ParcelUuid;

.field public static final MAP:Landroid/os/ParcelUuid;

.field public static final MNS:Landroid/os/ParcelUuid;

.field public static final MSE:Landroid/os/ParcelUuid;

.field public static final MessageAccessServer:Landroid/os/ParcelUuid;

.field public static final MessageNotificationServer:Landroid/os/ParcelUuid;

.field public static final NAP:Landroid/os/ParcelUuid;

.field public static final ObexObjectPush:Landroid/os/ParcelUuid;

.field public static final PANU:Landroid/os/ParcelUuid;

.field public static final PBAP_PSE:Landroid/os/ParcelUuid;

.field public static final PhoneBookAccess:Landroid/os/ParcelUuid;

.field public static final PrintingStatus:Landroid/os/ParcelUuid;

.field public static final RESERVED_UUIDS:[Landroid/os/ParcelUuid;

.field public static final ReferencePrinting:Landroid/os/ParcelUuid;

.field public static final SAP:Landroid/os/ParcelUuid;

.field public static final SYNC_:Landroid/os/ParcelUuid;

.field public static final SerialPort:Landroid/os/ParcelUuid;

.field public static final SimAccess:Landroid/os/ParcelUuid;

.field public static final VIDEO_DIST:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    const-string v0, "0000110B-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    .line 39
    const-string v0, "0000110A-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    .line 41
    const-string v0, "0000110D-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    .line 43
    const-string v0, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 45
    const-string v0, "00001112-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    .line 47
    const-string v0, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    .line 49
    const-string v0, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    .line 51
    const-string v0, "0000110E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    .line 53
    const-string v0, "0000110C-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    .line 55
    const-string v0, "00001105-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    .line 57
    const-string v0, "00001124-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    .line 59
    const-string v0, "00001115-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    .line 61
    const-string v0, "00001116-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    .line 63
    const-string v0, "0000000f-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    .line 65
    const-string v0, "0000112f-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    .line 67
    const-string v0, "00001118-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->DirectPrinting:Landroid/os/ParcelUuid;

    .line 69
    const-string v0, "00001119-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->ReferencePrinting:Landroid/os/ParcelUuid;

    .line 71
    const-string v0, "00001123-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PrintingStatus:Landroid/os/ParcelUuid;

    .line 73
    const-string v0, "00001103-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->DUN:Landroid/os/ParcelUuid;

    .line 75
    const-string v0, "0000112D-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    .line 77
    const-string v0, "00001106-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->FileTransfer:Landroid/os/ParcelUuid;

    .line 80
    const-string v0, "00001130-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PhoneBookAccess:Landroid/os/ParcelUuid;

    .line 82
    const-string v0, "00001122-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BasicPrinting:Landroid/os/ParcelUuid;

    .line 85
    const-string v0, "00001101-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->SerialPort:Landroid/os/ParcelUuid;

    .line 87
    const-string v0, "00001103-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->DialUp:Landroid/os/ParcelUuid;

    .line 89
    const-string v0, "0000112D-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->SimAccess:Landroid/os/ParcelUuid;

    .line 95
    const-string v0, "00001203-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->GenericAudio:Landroid/os/ParcelUuid;

    .line 97
    const-string v0, "00001117-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->GN:Landroid/os/ParcelUuid;

    .line 99
    const-string v0, "00001104-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->SYNC_:Landroid/os/ParcelUuid;

    .line 101
    const-string v0, "00001109-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->CTP:Landroid/os/ParcelUuid;

    .line 103
    const-string v0, "00001110-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->ICP:Landroid/os/ParcelUuid;

    .line 105
    const-string v0, "00001111-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->FAX:Landroid/os/ParcelUuid;

    .line 107
    const-string v0, "00001102-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->LAP:Landroid/os/ParcelUuid;

    .line 109
    const-string v0, "0000111A-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BIP:Landroid/os/ParcelUuid;

    .line 111
    const-string v0, "00001305-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->VIDEO_DIST:Landroid/os/ParcelUuid;

    .line 113
    const-string v0, "00001134-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    .line 115
    const-string v0, "00001132-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MSE:Landroid/os/ParcelUuid;

    .line 118
    const-string v0, "00001132-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MessageAccessServer:Landroid/os/ParcelUuid;

    .line 120
    const-string v0, "00001133-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MessageNotificationServer:Landroid/os/ParcelUuid;

    .line 123
    const-string v0, "00001133-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    .line 128
    const/16 v0, 0x12

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->DirectPrinting:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ReferencePrinting:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->PrintingStatus:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->DUN:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MessageAccessServer:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MessageNotificationServer:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->FileTransfer:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .registers 10
    .parameter "uuidA"
    .parameter "uuidB"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 294
    if-nez p0, :cond_7

    if-nez p1, :cond_7

    .line 306
    :cond_6
    :goto_6
    return v5

    .line 296
    :cond_7
    if-nez p0, :cond_e

    .line 297
    array-length v7, p1

    if-eqz v7, :cond_6

    move v5, v6

    goto :goto_6

    .line 300
    :cond_e
    if-eqz p1, :cond_6

    .line 302
    new-instance v4, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 303
    .local v4, uuidSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/os/ParcelUuid;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1c
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 304
    .local v3, uuid:Landroid/os/ParcelUuid;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    move v5, v6

    goto :goto_6

    .line 303
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method public static containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .registers 10
    .parameter "uuidA"
    .parameter "uuidB"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 268
    if-nez p0, :cond_7

    if-nez p1, :cond_7

    .line 282
    :cond_6
    :goto_6
    return v5

    .line 270
    :cond_7
    if-nez p0, :cond_e

    .line 271
    array-length v7, p1

    if-eqz v7, :cond_6

    move v5, v6

    goto :goto_6

    .line 274
    :cond_e
    if-nez p1, :cond_15

    .line 275
    array-length v7, p0

    if-eqz v7, :cond_6

    move v5, v6

    goto :goto_6

    .line 278
    :cond_15
    new-instance v4, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 279
    .local v4, uuidSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/os/ParcelUuid;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_21
    if-ge v1, v2, :cond_2e

    aget-object v3, v0, v1

    .line 280
    .local v3, uuid:Landroid/os/ParcelUuid;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .end local v3           #uuid:Landroid/os/ParcelUuid;
    :cond_2e
    move v5, v6

    .line 282
    goto :goto_6
.end method

.method public static getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I
    .registers 8
    .parameter "parcelUuid"

    .prologue
    .line 317
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 318
    .local v0, uuid:Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    const-wide v5, 0xffff00000000L

    and-long/2addr v3, v5

    const/16 v5, 0x20

    ushr-long v1, v3, v5

    .line 319
    .local v1, value:J
    long-to-int v3, v1

    return v3
.end method

.method public static isAdvAudioDist(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 142
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAudioSink(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 138
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAudioSource(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 134
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAvrcpController(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 154
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAvrcpTarget(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 158
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBnep(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 174
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDialUp(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 202
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->DialUp:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDirectPrinting(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 218
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->DirectPrinting:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDun(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 234
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->DUN:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFileTransfer(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 230
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->FileTransfer:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFtp(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 198
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->FileTransfer:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHandsfree(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 146
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHeadset(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 150
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInputDevice(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 162
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMAP(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 178
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMNS(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 186
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMSE(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 182
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MSE:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMessageAccessServer(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 222
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MessageAccessServer:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMessageNotificationServer(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 226
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MessageNotificationServer:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNap(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 170
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOpp(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 194
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPanu(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 166
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPbap(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 190
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PhoneBookAccess:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPrintingStatus(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 214
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PrintingStatus:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSap(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 238
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSerialPort(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 206
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->SerialPort:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSimAccess(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 210
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->SimAccess:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z
    .registers 9
    .parameter "uuidArray"
    .parameter "uuid"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 248
    if-eqz p0, :cond_7

    array-length v6, p0

    if-nez v6, :cond_b

    :cond_7
    if-nez p1, :cond_b

    move v4, v5

    .line 257
    :cond_a
    :goto_a
    return v4

    .line 251
    :cond_b
    if-eqz p0, :cond_a

    .line 254
    move-object v0, p0

    .local v0, arr$:[Landroid/os/ParcelUuid;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_10
    if-ge v2, v3, :cond_a

    aget-object v1, v0, v2

    .line 255
    .local v1, element:Landroid/os/ParcelUuid;
    invoke-virtual {v1, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move v4, v5

    goto :goto_a

    .line 254
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method
