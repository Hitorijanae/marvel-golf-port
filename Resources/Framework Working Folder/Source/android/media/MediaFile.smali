.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x24

.field public static final FILE_TYPE_FL:I = 0x34

.field public static final FILE_TYPE_FLAC:I = 0xb

.field public static final FILE_TYPE_FLV:I = 0x14

.field public static final FILE_TYPE_GIF:I = 0x22

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2c

.field public static final FILE_TYPE_IMY:I = 0xe

.field public static final FILE_TYPE_JPEG:I = 0x21

.field public static final FILE_TYPE_JPS:I = 0x27

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xc

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MPO:I = 0x28

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x23

.field public static final FILE_TYPE_QCP:I = 0xa

.field public static final FILE_TYPE_SMF:I = 0xd

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x25

.field public static final FILE_TYPE_WEBM:I = 0x20

.field public static final FILE_TYPE_WEBP:I = 0x26

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMAD:I = 0x33

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WMVD:I = 0x1f

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_XVID:I = 0x1e

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_DRM_FILE_TYPE:I = 0x34

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x21

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xc

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x14

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field public static final HTC_FILE_TYPE_INK:I = 0x2711

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xb

.field private static final LAST_DRM_FILE_TYPE:I = 0x34

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x28

.field private static final LAST_MIDI_FILE_TYPE:I = 0xe

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x20

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xc8

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field public static final sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x1

    const v9, 0xb984

    const/16 v8, 0x2c

    const/16 v7, 0x300b

    const/16 v6, 0xc

    .line 152
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 157
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 160
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 163
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 203
    const-string v2, "MP3"

    const-string v3, "audio/mpeg"

    const/16 v4, 0x3009

    invoke-static {v2, v10, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 204
    const-string v2, "MP3D"

    const-string v3, "audio/mpeg"

    const/16 v4, 0x3009

    invoke-static {v2, v10, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 205
    const-string v2, "M4A"

    const/4 v3, 0x2

    const-string v4, "audio/mp4"

    invoke-static {v2, v3, v4, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 206
    const-string v2, "WAV"

    const/4 v3, 0x3

    const-string v4, "audio/x-wav"

    const/16 v5, 0x3008

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 207
    const-string v2, "AMR"

    const/4 v3, 0x4

    const-string v4, "audio/amr"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 208
    const-string v2, "AWB"

    const/4 v3, 0x5

    const-string v4, "audio/amr-wb"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 210
    const-string v2, "WMA"

    const/4 v3, 0x6

    const-string v4, "audio/x-ms-wma"

    const v5, 0xb901

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 213
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x40

    if-eq v2, v3, :cond_8a

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_8a

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v2, v3, :cond_8a

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v2, v3, :cond_93

    .line 217
    :cond_8a
    const-string v2, "WMAD"

    const/16 v3, 0x33

    const-string v4, "audio/x-wma-drm"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    :cond_93
    const-string v2, "OGG"

    const/4 v3, 0x7

    const-string v4, "application/ogg"

    const v5, 0xb902

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 222
    const-string v2, "OGA"

    const/4 v3, 0x7

    const-string v4, "application/ogg"

    const v5, 0xb902

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 223
    const-string v2, "AAC"

    const/16 v3, 0x8

    const-string v4, "audio/aac"

    const v5, 0xb903

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 224
    const-string v2, "AAC"

    const/16 v3, 0x8

    const-string v4, "audio/aac-adts"

    const v5, 0xb903

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 225
    const-string v2, "MKA"

    const/16 v3, 0x9

    const-string v4, "audio/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_d9

    .line 229
    const-string v2, "QCP"

    const/16 v3, 0xa

    const-string v4, "audio/qcelp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    :cond_d9
    const-string v2, "MID"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    const-string v2, "MIDI"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    const-string v2, "XMF"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    const-string v2, "RTTTL"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    const-string v2, "SMF"

    const/16 v3, 0xd

    const-string v4, "audio/sp-midi"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    const-string v2, "IMY"

    const/16 v3, 0xe

    const-string v4, "audio/imelody"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    const-string v2, "RTX"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    const-string v2, "OTA"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    const-string v2, "MXMF"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    const-string v2, "MPEG"

    const/16 v3, 0x15

    const-string/jumbo v4, "video/mpeg"

    invoke-static {v2, v3, v4, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 248
    const-string v2, "MPG"

    const/16 v3, 0x15

    const-string/jumbo v4, "video/mpeg"

    invoke-static {v2, v3, v4, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 249
    const-string v2, "MP4"

    const/16 v3, 0x15

    const-string/jumbo v4, "video/mp4"

    invoke-static {v2, v3, v4, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 250
    const-string v2, "M4V"

    const/16 v3, 0x16

    const-string/jumbo v4, "video/mp4"

    invoke-static {v2, v3, v4, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 251
    const-string v2, "3GP"

    const/16 v3, 0x17

    const-string/jumbo v4, "video/3gpp"

    invoke-static {v2, v3, v4, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 252
    const-string v2, "3GPP"

    const/16 v3, 0x17

    const-string/jumbo v4, "video/3gpp"

    invoke-static {v2, v3, v4, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 253
    const-string v2, "3G2"

    const/16 v3, 0x18

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 254
    const-string v2, "3GPP2"

    const/16 v3, 0x18

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 255
    const-string v2, "MKV"

    const/16 v3, 0x1b

    const-string/jumbo v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    const-string v2, "WEBM"

    const/16 v3, 0x20

    const-string/jumbo v4, "video/webm"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    const-string v2, "TS"

    const/16 v3, 0x1c

    const-string/jumbo v4, "video/mp2ts"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 258
    const-string v2, "AVI"

    const/16 v3, 0x1d

    const-string/jumbo v4, "video/avi"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 259
    const-string v2, "AVI"

    const/16 v3, 0x1d

    const-string/jumbo v4, "video/x-msvideo"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 260
    const-string v2, "FLV"

    const/16 v3, 0x14

    const-string/jumbo v4, "video/x-flv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f9

    .line 263
    const-string v2, "WMV"

    const/16 v3, 0x19

    const-string/jumbo v4, "video/x-ms-wmv"

    const v5, 0xb981

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 264
    const-string v2, "ASF"

    const/16 v3, 0x1a

    const-string/jumbo v4, "video/x-ms-asf"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1ef

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1ef

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-eq v2, v3, :cond_1ef

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x93

    if-eq v2, v3, :cond_1ef

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v2, v3, :cond_1ef

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-eq v2, v3, :cond_1ef

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v2, v3, :cond_1f9

    .line 276
    :cond_1ef
    const-string v2, "WMVD"

    const/16 v3, 0x1f

    const-string/jumbo v4, "video/x-wmv-drm"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    :cond_1f9
    const-string v2, "JPS"

    const/16 v3, 0x27

    const-string/jumbo v4, "image/jps"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    const-string v2, "MPO"

    const/16 v3, 0x28

    const-string/jumbo v4, "image/mpo"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    sget-boolean v2, Landroid/provider/MediaStore$Images$HtcInk;->HtcInkSupported:Z

    if-ne v2, v10, :cond_21b

    .line 287
    const-string v2, "HTCINK"

    const/16 v3, 0x2711

    const-string/jumbo v4, "image/htcink"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    :cond_21b
    const-string v2, "JPG"

    const/16 v3, 0x21

    const-string/jumbo v4, "image/jpeg"

    const/16 v5, 0x3801

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 291
    const-string v2, "JPEG"

    const/16 v3, 0x21

    const-string/jumbo v4, "image/jpeg"

    const/16 v5, 0x3801

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 292
    const-string v2, "GIF"

    const/16 v3, 0x22

    const-string/jumbo v4, "image/gif"

    const/16 v5, 0x3807

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 293
    const-string v2, "PNG"

    const/16 v3, 0x23

    const-string/jumbo v4, "image/png"

    const/16 v5, 0x380b

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 294
    const-string v2, "BMP"

    const/16 v3, 0x24

    const-string/jumbo v4, "image/x-ms-bmp"

    const/16 v5, 0x3804

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 295
    const-string v2, "WBMP"

    const/16 v3, 0x25

    const-string/jumbo v4, "image/vnd.wap.wbmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    const-string v2, "WEBP"

    const/16 v3, 0x26

    const-string/jumbo v4, "image/webp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 298
    const-string v2, "M3U"

    const/16 v3, 0x29

    const-string v4, "audio/x-mpegurl"

    const v5, 0xba11

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 299
    const-string v2, "M3U"

    const/16 v3, 0x29

    const-string v4, "application/x-mpegurl"

    const v5, 0xba11

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 300
    const-string v2, "PLS"

    const/16 v3, 0x2a

    const-string v4, "audio/x-scpls"

    const v5, 0xba14

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 301
    const-string v2, "WPL"

    const/16 v3, 0x2b

    const-string v4, "application/vnd.ms-wpl"

    const v5, 0xba10

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 302
    const-string v2, "M3U8"

    const-string v3, "application/vnd.apple.mpegurl"

    invoke-static {v2, v8, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    const-string v2, "M3U8"

    const-string v3, "audio/mpegurl"

    invoke-static {v2, v8, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 304
    const-string v2, "M3U8"

    const-string v3, "audio/x-mpegurl"

    invoke-static {v2, v8, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 306
    const-string v2, "FL"

    const/16 v3, 0x34

    const-string v4, "application/x-android-drm-fl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    const-string v2, "TXT"

    const/16 v3, 0x64

    const-string/jumbo v4, "text/plain"

    const/16 v5, 0x3004

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 309
    const-string v2, "HTM"

    const/16 v3, 0x65

    const-string/jumbo v4, "text/html"

    const/16 v5, 0x3005

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 310
    const-string v2, "HTML"

    const/16 v3, 0x65

    const-string/jumbo v4, "text/html"

    const/16 v5, 0x3005

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 311
    const-string v2, "PDF"

    const/16 v3, 0x66

    const-string v4, "application/pdf"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    const-string v2, "DOC"

    const/16 v3, 0x68

    const-string v4, "application/msword"

    const v5, 0xba83

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 313
    const-string v2, "XLS"

    const/16 v3, 0x69

    const-string v4, "application/vnd.ms-excel"

    const v5, 0xba85

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 314
    const-string v2, "PPT"

    const/16 v3, 0x6a

    const-string v4, "application/mspowerpoint"

    const v5, 0xba86

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 315
    const-string v2, "FLAC"

    const/16 v3, 0xb

    const-string v4, "audio/flac"

    const v5, 0xb906

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 316
    const-string v2, "ZIP"

    const/16 v3, 0x6b

    const-string v4, "application/zip"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 317
    const-string v2, "MPG"

    const/16 v3, 0xc8

    const-string/jumbo v4, "video/mp2p"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    const-string v2, "MPEG"

    const/16 v3, 0xc8

    const-string/jumbo v4, "video/mp2p"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 323
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_342
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35b

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_351

    .line 325
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    :cond_351
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_342

    .line 329
    :cond_35b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 167
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 6
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "mtpFormatCode"

    .prologue
    .line 172
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public static getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "mimeType"

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0xaa

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x40

    .line 494
    if-nez p0, :cond_d

    move-object v0, v3

    .line 578
    :goto_c
    return-object v0

    .line 496
    :cond_d
    const-string/jumbo v2, "image/bmp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 497
    const-string v0, "BMP"

    goto :goto_c

    .line 499
    :cond_19
    const-string v2, "audio/wav"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 500
    const-string v0, "WAV"

    goto :goto_c

    .line 502
    :cond_24
    const-string v2, "audio/x-mpeg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 503
    const-string v0, "MP3"

    goto :goto_c

    .line 505
    :cond_2f
    const-string v2, "audio/mp3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 506
    const-string v0, "MP3"

    goto :goto_c

    .line 508
    :cond_3a
    const-string/jumbo v2, "video/3g2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 509
    const-string v0, "3G2"

    goto :goto_c

    .line 511
    :cond_46
    const-string v2, "audio/3gpp2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 512
    const-string v0, "3G2"

    goto :goto_c

    .line 514
    :cond_51
    const-string v2, "audio/3gpp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 515
    const-string v0, "3GPP"

    goto :goto_c

    .line 517
    :cond_5c
    const-string v2, "audio/aac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 518
    const-string v0, "AAC"

    goto :goto_c

    .line 520
    :cond_67
    const-string v2, "audio/x-aac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 521
    const-string v0, "AAC"

    goto :goto_c

    .line 523
    :cond_72
    const-string v2, "audio/x-midi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 524
    const-string v0, "MIDI"

    goto :goto_c

    .line 527
    :cond_7d
    const-string v2, "audio/mp3d"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 528
    const-string v0, "MP3"

    goto :goto_c

    .line 530
    :cond_88
    const-string v2, "audio/mp4a-latm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 531
    const-string v0, "M4A"

    goto/16 :goto_c

    .line 535
    :cond_94
    const-string v2, "audio/m4a"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 536
    const-string v0, "M4A"

    goto/16 :goto_c

    .line 541
    :cond_a0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v4, :cond_b0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v5, :cond_b0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v6, :cond_b0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v7, :cond_bc

    .line 546
    :cond_b0
    const-string v2, "audio/x-wma-drm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 547
    const-string v0, "WMAD"

    goto/16 :goto_c

    .line 552
    :cond_bc
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v4, :cond_de

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v5, :cond_de

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x91

    if-eq v2, v4, :cond_de

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x93

    if-eq v2, v4, :cond_de

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v6, :cond_de

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x28

    if-eq v2, v4, :cond_de

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v7, :cond_eb

    .line 559
    :cond_de
    const-string/jumbo v2, "video/x-wmv-drm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 560
    const-string v0, "WMVD"

    goto/16 :goto_c

    .line 571
    :cond_eb
    sget-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 573
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_f5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_113

    .line 574
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    .local v0, extension:Ljava/lang/String;
    sget-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFile$MediaFileType;

    iget-object v2, v2, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    goto/16 :goto_c

    .end local v0           #extension:Ljava/lang/String;
    :cond_113
    move-object v0, v3

    .line 578
    goto/16 :goto_c
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "path"

    .prologue
    .line 454
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 455
    .local v1, lastSlash:I
    if-ltz v1, :cond_14

    .line 456
    add-int/lit8 v1, v1, 0x1

    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 458
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 462
    :cond_14
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 463
    .local v0, lastDot:I
    if-lez v0, :cond_21

    .line 464
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 466
    :cond_21
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .registers 6
    .parameter "path"

    .prologue
    .line 397
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 398
    .local v0, lastDot:I
    if-gez v0, :cond_a

    .line 399
    const/4 v1, 0x0

    .line 402
    :goto_9
    return-object v1

    :cond_a
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFile$MediaFileType;

    goto :goto_9
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .registers 4
    .parameter "mimeType"

    .prologue
    const/4 v1, 0x0

    .line 419
    if-nez p0, :cond_4

    .line 442
    :cond_3
    :goto_3
    return v1

    .line 425
    :cond_4
    const-string v2, "audio/3gpp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 426
    const/4 v1, 0x2

    goto :goto_3

    .line 437
    :cond_e
    const-string/jumbo v2, "video/mp4-3d"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 438
    const/16 v1, 0x15

    goto :goto_3

    .line 441
    :cond_1a
    sget-object v2, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 442
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3
.end method

.method public static getFileTypeValue(Ljava/lang/String;)I
    .registers 3
    .parameter "path"

    .prologue
    .line 408
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 410
    .local v0, type:Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_8

    .line 411
    const/4 v1, 0x0

    .line 414
    :goto_7
    return v1

    :cond_8
    iget v1, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_7
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 475
    if-eqz p1, :cond_11

    .line 476
    sget-object v3, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 477
    .local v2, value:Ljava/lang/Integer;
    if-eqz v2, :cond_11

    .line 478
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 489
    .end local v2           #value:Ljava/lang/Integer;
    :goto_10
    return v3

    .line 481
    :cond_11
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 482
    .local v1, lastDot:I
    if-lez v1, :cond_2e

    .line 483
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, extension:Ljava/lang/String;
    sget-object v3, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 485
    .restart local v2       #value:Ljava/lang/Integer;
    if-eqz v2, :cond_2e

    .line 486
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_10

    .line 489
    .end local v0           #extension:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Integer;
    :cond_2e
    const/16 v3, 0x3000

    goto :goto_10
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "path"

    .prologue
    .line 470
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 471
    .local v0, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_7
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .registers 3
    .parameter "formatCode"

    .prologue
    .line 582
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isAudioFileType(I)Z
    .registers 3
    .parameter "fileType"

    .prologue
    const/4 v0, 0x1

    .line 346
    if-lt p0, v0, :cond_7

    const/16 v1, 0xb

    if-le p0, v1, :cond_13

    :cond_7
    const/16 v1, 0xc

    if-lt p0, v1, :cond_f

    const/16 v1, 0xe

    if-le p0, v1, :cond_13

    :cond_f
    const/16 v1, 0x33

    if-ne p0, v1, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isDrmFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    const/16 v0, 0x34

    .line 392
    if-lt p0, v0, :cond_8

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isHtcInkFileType(I)Z
    .registers 3
    .parameter "fileType"

    .prologue
    const/4 v0, 0x0

    .line 369
    sget-boolean v1, Landroid/provider/MediaStore$Images$HtcInk;->HtcInkSupported:Z

    if-nez v1, :cond_6

    .line 379
    :cond_5
    :goto_5
    return v0

    .line 375
    :cond_6
    const/16 v1, 0x2711

    if-ne p0, v1, :cond_5

    .line 376
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static isImageFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 361
    const/16 v0, 0x21

    if-lt p0, v0, :cond_a

    const/16 v0, 0x28

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 446
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 447
    .local v0, fileType:I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public static isPlayListFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 387
    const/16 v0, 0x29

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2c

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isVideoFileType(I)Z
    .registers 3
    .parameter "fileType"

    .prologue
    const/16 v1, 0xc8

    .line 354
    const/16 v0, 0x14

    if-lt p0, v0, :cond_a

    const/16 v0, 0x20

    if-le p0, v0, :cond_e

    :cond_a
    if-lt p0, v1, :cond_10

    if-gt p0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isWMAEnabled()Z
    .registers 5

    .prologue
    .line 179
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v2

    .line 180
    .local v2, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 181
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v0, :cond_1a

    .line 182
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 183
    .local v1, decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v1, v4, :cond_17

    .line 184
    const/4 v4, 0x1

    .line 187
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :goto_16
    return v4

    .line 181
    .restart local v1       #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 187
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_1a
    const/4 v4, 0x0

    goto :goto_16
.end method

.method private static isWMVEnabled()Z
    .registers 5

    .prologue
    .line 191
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v2

    .line 192
    .local v2, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 193
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v0, :cond_1a

    .line 194
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 195
    .local v1, decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v1, v4, :cond_17

    .line 196
    const/4 v4, 0x1

    .line 199
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :goto_16
    return v4

    .line 193
    .restart local v1       #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 199
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_1a
    const/4 v4, 0x0

    goto :goto_16
.end method
