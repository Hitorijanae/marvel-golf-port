.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$1;,
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$FileCacheEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final AUDIO_PROJECTION:[Ljava/lang/String; = null

.field private static final DATE_MODIFIED_AUDIO_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String; = null

.field private static final ID3_GENRES:[Ljava/lang/String; = null

.field private static final ID_AUDIO_COLUMN_INDEX:I = 0x0

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_AUDIO_COLUMN_INDEX:I = 0x1

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String; = null

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"


# instance fields
.field private mAudioUri:Landroid/net/Uri;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDeleteAudioCount:I

.field private mDeleteImageCount:I

.field private mDeleteOtherCount:I

.field private mDeleteVideoCount:I

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mExternalStoragePath:Ljava/lang/String;

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesUri:Landroid/net/Uri;

.field private mHtcInkUri:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mInsertAudioCount:I

.field private mInsertImageCount:I

.field private mInsertOtherCount:I

.field private mInsertVideoCount:I

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMtpObjectHandle:I

.field private mNativeContext:I

.field private mOriginalCount:I

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field public volatile mStopScanning:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mUpdateAudioCount:I

.field private mUpdateImageCount:I

.field private mUpdateOtherCount:I

.field private mUpdateVideoCount:I

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 124
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    const-string v1, "date_modified"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 131
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    .line 141
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 150
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 164
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v2

    const-string v1, "Classic Rock"

    aput-object v1, v0, v3

    const-string v1, "Country"

    aput-object v1, v0, v4

    const-string v1, "Dance"

    aput-object v1, v0, v5

    const-string v1, "Disco"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Britpop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JPop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 417
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 382
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 415
    iput-object v3, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 437
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v0, p0, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 445
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mStopScanning:Z

    .line 453
    iput v1, p0, Landroid/media/MediaScanner;->mInsertImageCount:I

    .line 454
    iput v1, p0, Landroid/media/MediaScanner;->mInsertVideoCount:I

    .line 455
    iput v1, p0, Landroid/media/MediaScanner;->mInsertAudioCount:I

    .line 456
    iput v1, p0, Landroid/media/MediaScanner;->mInsertOtherCount:I

    .line 458
    iput v1, p0, Landroid/media/MediaScanner;->mUpdateImageCount:I

    .line 459
    iput v1, p0, Landroid/media/MediaScanner;->mUpdateVideoCount:I

    .line 460
    iput v1, p0, Landroid/media/MediaScanner;->mUpdateAudioCount:I

    .line 461
    iput v1, p0, Landroid/media/MediaScanner;->mUpdateOtherCount:I

    .line 463
    iput v1, p0, Landroid/media/MediaScanner;->mDeleteImageCount:I

    .line 464
    iput v1, p0, Landroid/media/MediaScanner;->mDeleteVideoCount:I

    .line 465
    iput v1, p0, Landroid/media/MediaScanner;->mDeleteAudioCount:I

    .line 466
    iput v1, p0, Landroid/media/MediaScanner;->mDeleteOtherCount:I

    .line 418
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 419
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 420
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 421
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 423
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 425
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 426
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/media/MediaScanner;Landroid/content/IContentProvider;)Landroid/content/IContentProvider;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mHtcInkUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2008(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Landroid/media/MediaScanner;->mInsertVideoCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mInsertVideoCount:I

    return v0
.end method

.method static synthetic access$2108(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Landroid/media/MediaScanner;->mInsertImageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mInsertImageCount:I

    return v0
.end method

.method static synthetic access$2208(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Landroid/media/MediaScanner;->mInsertAudioCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mInsertAudioCount:I

    return v0
.end method

.method static synthetic access$2308(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Landroid/media/MediaScanner;->mInsertOtherCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mInsertOtherCount:I

    return v0
.end method

.method static synthetic access$2408(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Landroid/media/MediaScanner;->mUpdateVideoCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mUpdateVideoCount:I

    return v0
.end method

.method static synthetic access$2508(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Landroid/media/MediaScanner;->mUpdateImageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mUpdateImageCount:I

    return v0
.end method

.method static synthetic access$2608(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Landroid/media/MediaScanner;->mUpdateAudioCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mUpdateAudioCount:I

    return v0
.end method

.method static synthetic access$2708(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Landroid/media/MediaScanner;->mUpdateOtherCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mUpdateOtherCount:I

    return v0
.end method

.method static synthetic access$2800(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$2902(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$3102(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$3200(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$3302(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$3400(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$3502(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic access$3600(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 115
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$600(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method private addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .registers 27
    .parameter "entry"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 1690
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v3, :cond_24

    .line 1691
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "media"

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v3, :cond_24

    .line 1692
    const-string v3, "MediaScanner"

    const-string v4, "MediaProvider null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const/4 v3, 0x0

    .line 1770
    :goto_23
    return v3

    .line 1699
    :cond_24
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 1700
    .local v15, entryLength:I
    :goto_28
    if-lez v15, :cond_3b

    add-int/lit8 v3, v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3b

    add-int/lit8 v15, v15, -0x1

    goto :goto_28

    .line 1703
    :cond_3b
    const/4 v3, 0x3

    if-ge v15, v3, :cond_40

    const/4 v3, 0x0

    goto :goto_23

    .line 1704
    :cond_40
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v15, v3, :cond_4d

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1708
    :cond_4d
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 1709
    .local v13, ch1:C
    const/16 v3, 0x2f

    if-eq v13, v3, :cond_74

    invoke-static {v13}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_bb

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_bb

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_bb

    :cond_74
    const/16 v16, 0x1

    .line 1712
    .local v16, fullPath:Z
    :goto_76
    if-nez v16, :cond_8d

    .line 1713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1718
    :cond_8d
    const/4 v9, 0x0

    .line 1721
    .local v9, bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    const/4 v10, 0x0

    .line 1723
    .local v10, bestMatchLength:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 1724
    .local v17, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_9b
    :goto_9b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 1725
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1726
    .local v12, cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v0, v12, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1728
    .local v19, path:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 1729
    move-object v9, v12

    .line 1740
    .end local v12           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v19           #path:Ljava/lang/String;
    :cond_b6
    if-nez v9, :cond_d0

    .line 1741
    const/4 v3, 0x0

    goto/16 :goto_23

    .line 1709
    .end local v9           #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v10           #bestMatchLength:I
    .end local v16           #fullPath:Z
    .end local v17           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_bb
    const/16 v16, 0x0

    goto :goto_76

    .line 1733
    .restart local v9       #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v10       #bestMatchLength:I
    .restart local v12       #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v16       #fullPath:Z
    .restart local v17       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    .restart local v19       #path:Ljava/lang/String;
    :cond_be
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1734
    .local v18, matchLength:I
    move/from16 v0, v18

    if-le v0, v10, :cond_9b

    .line 1735
    move-object v9, v12

    .line 1736
    move/from16 v10, v18

    goto :goto_9b

    .line 1746
    .end local v12           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v18           #matchLength:I
    .end local v19           #path:Ljava/lang/String;
    :cond_d0
    :try_start_d0
    iget-wide v3, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_110

    .line 1747
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    sget-object v5, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "_data=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v0, v9, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v7, v8

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1750
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_105

    .line 1751
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_102

    .line 1752
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 1754
    :cond_102
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1756
    :cond_105
    iget-wide v3, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_110

    .line 1757
    const/4 v3, 0x0

    goto/16 :goto_23

    .line 1761
    .end local v11           #c:Landroid/database/Cursor;
    :cond_110
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 1762
    const-string/jumbo v3, "play_order"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1763
    const-string v3, "audio_id"

    iget-wide v4, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1764
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v3, v0, v1}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_137
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_137} :catch_13a

    .line 1770
    const/4 v3, 0x1

    goto/16 :goto_23

    .line 1765
    :catch_13a
    move-exception v14

    .line 1766
    .local v14, e:Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v4, "RemoteException in MediaScanner.addPlayListEntry()"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1767
    const/4 v3, 0x0

    goto/16 :goto_23
.end method

.method private deleteDuplicateNullData(Z)V
    .registers 12
    .parameter "prescan"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1367
    const/4 v6, 0x0

    .line 1368
    .local v6, c:Landroid/database/Cursor;
    const-string v3, "_data=\'\' AND date_modified=0"

    .line 1371
    .local v3, where:Ljava/lang/String;
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1374
    if-eqz v6, :cond_69

    .line 1375
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[deleteDuplicateNullData] count(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prescan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const-wide/16 v8, 0x0

    .line 1378
    .local v8, rowId:J
    :goto_39
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1379
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1380
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_61
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_51} :catch_52

    goto :goto_39

    .line 1384
    .end local v8           #rowId:J
    :catch_52
    move-exception v7

    .line 1385
    .local v7, e:Landroid/database/SQLException;
    :try_start_53
    const-string v0, "MediaScanner"

    const-string v1, "SQLException in MediaScanner.deleteDuplicateNullData()"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_61

    .line 1387
    if-eqz v6, :cond_60

    .line 1388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1389
    .end local v7           #e:Landroid/database/SQLException;
    :goto_5f
    const/4 v6, 0x0

    .line 1392
    :cond_60
    return-void

    .line 1387
    :catchall_61
    move-exception v0

    if-eqz v6, :cond_68

    .line 1388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1389
    const/4 v6, 0x0

    .line 1387
    :cond_68
    throw v0

    :cond_69
    if-eqz v6, :cond_60

    .line 1388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5f
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 2118
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 2119
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2120
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1c

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .parameter "path"
    .parameter "directories"

    .prologue
    .line 1190
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_11

    .line 1191
    aget-object v0, p2, v1

    .line 1192
    .local v0, directory:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1193
    const/4 v2, 0x1

    .line 1196
    .end local v0           #directory:Ljava/lang/String;
    :goto_d
    return v2

    .line 1190
    .restart local v0       #directory:Ljava/lang/String;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1196
    .end local v0           #directory:Ljava/lang/String;
    :cond_11
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private initialize(Ljava/lang/String;)V
    .registers 5
    .parameter "volumeName"

    .prologue
    const/4 v2, 0x1

    .line 1395
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1397
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1398
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1399
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1400
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1401
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1405
    sget-boolean v0, Landroid/provider/MediaStore$Images$HtcInk;->HtcInkSupported:Z

    if-ne v0, v2, :cond_38

    .line 1406
    invoke-static {p1}, Landroid/provider/MediaStore$Images$HtcInk;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mHtcInkUri:Landroid/net/Uri;

    .line 1411
    :cond_38
    const-string/jumbo v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1413
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 1414
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 1415
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1417
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1419
    :cond_4d
    return-void
.end method

.method private isDrmEnabled()Z
    .registers 3

    .prologue
    .line 440
    const-string v1, "drm.service.enabled"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, prop:Ljava/lang/String;
    if-eqz v0, :cond_13

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .registers 11
    .parameter "path"

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1539
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1540
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_11

    move v1, v4

    .line 1569
    :cond_10
    :goto_10
    return v1

    .line 1545
    :cond_11
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1546
    .local v7, lastSlash:I
    if-ltz v7, :cond_7b

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_7b

    .line 1548
    add-int/lit8 v0, v7, 0x1

    const-string v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1555
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1556
    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1560
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 1561
    .local v8, length:I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_6d

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_6d
    if-ne v8, v9, :cond_7b

    add-int/lit8 v2, v7, 0x1

    const-string v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    .end local v8           #length:I
    :cond_7b
    move v1, v4

    .line 1569
    goto :goto_10
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .registers 8
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1573
    if-nez p0, :cond_5

    .line 1593
    :goto_4
    return v3

    .line 1576
    :cond_5
    const-string v5, "/."

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_f

    move v3, v4

    goto :goto_4

    .line 1580
    :cond_f
    const/4 v1, 0x1

    .line 1581
    .local v1, offset:I
    :goto_10
    if-ltz v1, :cond_42

    .line 1582
    const/16 v5, 0x2f

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1583
    .local v2, slashIndex:I
    if-le v2, v1, :cond_40

    .line 1584
    add-int/lit8 v2, v2, 0x1

    .line 1585
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".nomedia"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1586
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_40

    move v3, v4

    .line 1588
    goto :goto_4

    .line 1591
    .end local v0           #file:Ljava/io/File;
    :cond_40
    move v1, v2

    .line 1592
    goto :goto_10

    .line 1593
    .end local v2           #slashIndex:I
    :cond_42
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v3

    goto :goto_4
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 1661
    const/4 v10, 0x0

    .line 1662
    .local v10, result:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1663
    .local v8, end1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 1665
    .local v9, end2:I
    :goto_9
    if-lez v8, :cond_3f

    if-lez v9, :cond_3f

    .line 1666
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 1667
    .local v11, slash1:I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 1668
    .local v12, slash2:I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 1669
    .local v6, backSlash1:I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 1670
    .local v7, backSlash2:I
    if-le v11, v6, :cond_40

    move v2, v11

    .line 1671
    .local v2, start1:I
    :goto_30
    if-le v12, v7, :cond_42

    move v4, v12

    .line 1672
    .local v4, start2:I
    :goto_33
    if-gez v2, :cond_44

    const/4 v2, 0x0

    .line 1673
    :goto_36
    if-gez v4, :cond_47

    const/4 v4, 0x0

    .line 1674
    :goto_39
    sub-int v5, v8, v2

    .line 1675
    .local v5, length:I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_4a

    .line 1683
    .end local v2           #start1:I
    .end local v4           #start2:I
    .end local v5           #length:I
    .end local v6           #backSlash1:I
    .end local v7           #backSlash2:I
    .end local v11           #slash1:I
    .end local v12           #slash2:I
    :cond_3f
    return v10

    .restart local v6       #backSlash1:I
    .restart local v7       #backSlash2:I
    .restart local v11       #slash1:I
    .restart local v12       #slash2:I
    :cond_40
    move v2, v6

    .line 1670
    goto :goto_30

    .restart local v2       #start1:I
    :cond_42
    move v4, v7

    .line 1671
    goto :goto_33

    .line 1672
    .restart local v4       #start2:I
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 1673
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 1676
    .restart local v5       #length:I
    :cond_4a
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1677
    add-int/lit8 v10, v10, 0x1

    .line 1678
    add-int/lit8 v8, v2, -0x1

    .line 1679
    add-int/lit8 v9, v4, -0x1

    .line 1681
    goto :goto_9
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .registers 16
    .parameter "directories"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1255
    iget-object v10, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1258
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    iget-object v10, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v10, :cond_27

    .line 1259
    iget-object v10, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v10, :cond_27

    .line 1260
    const-string v10, "MediaScanner"

    const-string v11, "MediaProvider null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :goto_26
    return-void

    .line 1267
    :cond_27
    iget-boolean v10, p0, Landroid/media/MediaScanner;->mStopScanning:Z

    if-eqz v10, :cond_3c

    .line 1268
    const-string v10, "MediaScanner"

    const-string v11, "[postscan] Skip scan"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1271
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1272
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    goto :goto_26

    .line 1277
    :cond_3c
    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_114

    .line 1278
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1279
    .local v1, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v7, v1, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 1282
    .local v7, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1284
    .local v3, fileMissing:Z
    iget-boolean v10, v1, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    if-nez v10, :cond_5e

    iget v10, v1, Landroid/media/MediaScanner$FileCacheEntry;->mFormat:I

    invoke-static {v10}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v10

    if-nez v10, :cond_5e

    .line 1285
    invoke-direct {p0, v7, p1}, Landroid/media/MediaScanner;->inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b7

    .line 1287
    const/4 v3, 0x1

    .line 1299
    :cond_5e
    :goto_5e
    if-eqz v3, :cond_3c

    .line 1304
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1305
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "_data"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v10, "date_modified"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1310
    :try_start_76
    iget-object v10, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v11, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    iget-wide v12, v1, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v10, v11, v9, v12, v13}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_85
    .catch Landroid/database/SQLException; {:try_start_76 .. :try_end_85} :catch_c4

    .line 1330
    :goto_85
    invoke-static {v7}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v6

    .line 1331
    .local v6, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v6, :cond_f0

    const/4 v4, 0x0

    .line 1333
    .local v4, fileType:I
    :goto_8c
    invoke-static {v4}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v10

    if-nez v10, :cond_3c

    .line 1335
    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v10

    if-nez v10, :cond_9e

    invoke-static {v4}, Landroid/media/MediaFile;->isHtcInkFileType(I)Z

    move-result v10

    if-eqz v10, :cond_f3

    .line 1336
    :cond_9e
    iget v10, p0, Landroid/media/MediaScanner;->mDeleteImageCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/media/MediaScanner;->mDeleteImageCount:I

    .line 1345
    :goto_a4
    iget-object v10, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v11, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    iget-wide v12, v1, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1347
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_3c

    .line 1292
    .end local v4           #fileType:I
    .end local v6           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_b7
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v8, testFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_5e

    .line 1294
    const/4 v3, 0x1

    goto :goto_5e

    .line 1312
    .end local v8           #testFile:Ljava/io/File;
    .restart local v9       #values:Landroid/content/ContentValues;
    :catch_c4
    move-exception v0

    .line 1313
    .local v0, e:Landroid/database/SQLException;
    const-string v10, "MediaScanner"

    const-string v11, "[postscan] fileMissing update failed"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/media/MediaScanner;->deleteDuplicateNullData(Z)V

    .line 1318
    :try_start_d0
    iget-object v10, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v11, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    iget-wide v12, v1, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v10, v11, v9, v12, v13}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1320
    const-string v10, "MediaScanner"

    const-string v11, "[postscan] fileMissing update again done..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catch Landroid/database/SQLException; {:try_start_d0 .. :try_end_e6} :catch_e7

    goto :goto_85

    .line 1321
    :catch_e7
    move-exception v2

    .line 1322
    .local v2, exception:Landroid/database/SQLException;
    const-string v10, "MediaScanner"

    const-string v11, "SQLException in MediaScanner.postscan()"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85

    .line 1331
    .end local v0           #e:Landroid/database/SQLException;
    .end local v2           #exception:Landroid/database/SQLException;
    .restart local v6       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_f0
    iget v4, v6, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_8c

    .line 1337
    .restart local v4       #fileType:I
    :cond_f3
    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v10

    if-eqz v10, :cond_100

    .line 1338
    iget v10, p0, Landroid/media/MediaScanner;->mDeleteVideoCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/media/MediaScanner;->mDeleteVideoCount:I

    goto :goto_a4

    .line 1339
    :cond_100
    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v10

    if-eqz v10, :cond_10d

    .line 1340
    iget v10, p0, Landroid/media/MediaScanner;->mDeleteAudioCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/media/MediaScanner;->mDeleteAudioCount:I

    goto :goto_a4

    .line 1342
    :cond_10d
    iget v10, p0, Landroid/media/MediaScanner;->mDeleteOtherCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/media/MediaScanner;->mDeleteOtherCount:I

    goto :goto_a4

    .line 1353
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v3           #fileMissing:Z
    .end local v4           #fileType:I
    .end local v6           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v7           #path:Ljava/lang/String;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_114
    iget-boolean v10, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v10, :cond_11b

    .line 1354
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1357
    :cond_11b
    iget v10, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-nez v10, :cond_130

    iget-object v10, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v11, "external"

    invoke-static {v11}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_130

    .line 1358
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1361
    :cond_130
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1362
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1363
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    goto/16 :goto_26
.end method

.method private prescan(Ljava/lang/String;Z)V
    .registers 24
    .parameter "filePath"
    .parameter "prescanFiles"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1105
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v1, :cond_23

    .line 1106
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "media"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v1, :cond_23

    .line 1107
    const-string v1, "MediaScanner"

    const-string v2, "MediaProvider null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_22
    :goto_22
    return-void

    .line 1113
    :cond_23
    const/16 v19, 0x0

    .line 1114
    .local v19, c:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 1115
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1117
    .local v5, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    if-nez v1, :cond_c8

    .line 1118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1122
    :goto_36
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v1, :cond_d1

    .line 1123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1128
    :goto_45
    if-eqz p1, :cond_4f

    .line 1130
    const-string v4, "_data=?"

    .line 1131
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .end local v5           #selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 1136
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    :cond_4f
    if-eqz p2, :cond_e1

    .line 1138
    const/4 v1, 0x1

    :try_start_52
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->deleteDuplicateNullData(Z)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v3, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1145
    if-eqz v19, :cond_e1

    .line 1146
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_da

    const/4 v1, 0x1

    :goto_6f
    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1147
    :cond_73
    :goto_73
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 1148
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1149
    .local v7, rowId:J
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1150
    .local v9, path:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1151
    .local v12, format:I
    const/4 v1, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1156
    .local v10, lastModified:J
    if-eqz v9, :cond_73

    const-string v1, "/"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1157
    move-object/from16 v20, v9

    .line 1158
    .local v20, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v1, :cond_b2

    .line 1160
    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 1164
    :cond_b2
    new-instance v6, Landroid/media/MediaScanner$FileCacheEntry;

    invoke-direct/range {v6 .. v12}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(JLjava/lang/String;JI)V

    .line 1166
    .local v6, entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c0
    .catchall {:try_start_52 .. :try_end_c0} :catchall_c1

    goto :goto_73

    .line 1175
    .end local v6           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v7           #rowId:J
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #lastModified:J
    .end local v12           #format:I
    .end local v20           #key:Ljava/lang/String;
    :catchall_c1
    move-exception v1

    if-eqz v19, :cond_c7

    .line 1176
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1175
    :cond_c7
    throw v1

    .line 1120
    :cond_c8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_36

    .line 1125
    :cond_d1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_45

    .line 1146
    :cond_da
    const/4 v1, 0x0

    goto :goto_6f

    .line 1169
    :cond_dc
    :try_start_dc
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_c1

    .line 1170
    const/16 v19, 0x0

    .line 1175
    :cond_e1
    if-eqz v19, :cond_e6

    .line 1176
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1181
    :cond_e6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1182
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v15, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v13 .. v18}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1183
    if-eqz v19, :cond_22

    .line 1184
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1185
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_22
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;Z)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processInternalDirectory([Ljava/lang/String;Z)V
    .registers 8
    .parameter "directories"
    .parameter "scanMedia"

    .prologue
    .line 1425
    const/16 v2, 0x64

    .line 1426
    .local v2, numInsert:I
    if-nez p2, :cond_6

    const/16 v2, 0x1f4

    .line 1427
    :cond_6
    :try_start_6
    new-instance v3, Landroid/media/MediaInserter;

    iget-object v4, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-direct {v3, v4, v2}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;I)V

    iput-object v3, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1430
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    array-length v3, p1

    if-ge v1, v3, :cond_1d

    .line 1431
    aget-object v3, p1, v1

    iget-object v4, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {p0, v3, v4, p2}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;Z)V

    .line 1430
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1436
    :cond_1d
    iget-object v3, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v3}, Landroid/media/MediaInserter;->flushAll()V

    .line 1437
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    :try_end_25
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_25} :catch_26
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_25} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_25} :catch_38

    .line 1448
    .end local v1           #i:I
    :goto_25
    return-void

    .line 1439
    :catch_26
    move-exception v0

    .line 1441
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "MediaScanner"

    const-string v4, "SQLException in MediaScanner.scan()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1442
    .end local v0           #e:Landroid/database/SQLException;
    :catch_2f
    move-exception v0

    .line 1444
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v3, "MediaScanner"

    const-string v4, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1445
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_38
    move-exception v0

    .line 1446
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v4, "RemoteException in MediaScanner.scan()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 15
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1774
    const/4 v8, 0x0

    .line 1776
    .local v8, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1777
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1778
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v9, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_55
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_47

    .line 1780
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v9, reader:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1781
    .local v1, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1782
    .local v5, index:I
    :goto_22
    if-eqz v1, :cond_6e

    .line 1784
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_42

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_42

    .line 1785
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1786
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1787
    add-int/lit8 v5, v5, 0x1

    .line 1789
    :cond_42
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_1d .. :try_end_45} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_45} :catch_7e

    move-result-object v1

    goto :goto_22

    .line 1792
    .end local v1           #line:Ljava/lang/String;
    .end local v5           #index:I
    .end local v7           #f:Ljava/io/File;
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_47
    move-exception v6

    .line 1793
    .local v6, e:Ljava/io/IOException;
    :goto_48
    :try_start_48
    const-string v0, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_55

    .line 1796
    if-eqz v8, :cond_54

    .line 1797
    :try_start_51
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_65

    .line 1802
    .end local v6           #e:Ljava/io/IOException;
    :cond_54
    :goto_54
    return-void

    .line 1795
    :catchall_55
    move-exception v0

    .line 1796
    :goto_56
    if-eqz v8, :cond_5b

    .line 1797
    :try_start_58
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 1795
    :cond_5b
    :goto_5b
    throw v0

    .line 1798
    :catch_5c
    move-exception v6

    .line 1799
    .restart local v6       #e:Ljava/io/IOException;
    const-string v2, "MediaScanner"

    const-string v3, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v2, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    .line 1798
    :catch_65
    move-exception v6

    .line 1799
    const-string v0, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processM3uPlayList()"

    :goto_6a
    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v5       #index:I
    .restart local v7       #f:Ljava/io/File;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :cond_6e
    move-object v8, v9

    .line 1796
    .end local v1           #line:Ljava/lang/String;
    .end local v5           #index:I
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_6f
    if-eqz v8, :cond_54

    .line 1797
    :try_start_71
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_54

    .line 1798
    :catch_75
    move-exception v6

    .line 1799
    .restart local v6       #e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processM3uPlayList()"

    goto :goto_6a

    .line 1795
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catchall_7b
    move-exception v0

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_56

    .line 1792
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catch_7e
    move-exception v6

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_48
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileCacheEntry;)V
    .registers 18
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1902
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v13, :cond_23

    .line 1903
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "media"

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v13, :cond_23

    .line 1904
    const-string v13, "MediaScanner"

    const-string v14, "MediaProvider null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :cond_22
    :goto_22
    return-void

    .line 1910
    :cond_23
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 1911
    .local v7, path:Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1912
    .local v12, values:Landroid/content/ContentValues;
    const/16 v13, 0x2f

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1913
    .local v3, lastSlash:I
    if-gez v3, :cond_4d

    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bad path "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1915
    :cond_4d
    move-object/from16 v0, p1

    iget-wide v9, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 1918
    .local v9, rowId:J
    const-string/jumbo v13, "name"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1919
    .local v6, name:Ljava/lang/String;
    if-nez v6, :cond_71

    .line 1920
    const-string/jumbo v13, "title"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1921
    if-nez v6, :cond_71

    .line 1923
    const/16 v13, 0x2e

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1924
    .local v2, lastDot:I
    if-gez v2, :cond_bf

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1929
    .end local v2           #lastDot:I
    :cond_71
    :goto_71
    const-string/jumbo v13, "name"

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const-string v13, "date_modified"

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1932
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-nez v13, :cond_c6

    .line 1933
    const-string v13, "_data"

    invoke-virtual {v12, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-interface {v13, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1935
    .local v11, uri:Landroid/net/Uri;
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 1936
    const-string/jumbo v13, "members"

    invoke-static {v11, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1946
    .local v5, membersUri:Landroid/net/Uri;
    :goto_a6
    const/4 v13, 0x0

    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1947
    .local v8, playListDirectory:Ljava/lang/String;
    invoke-static {v7}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v4

    .line 1948
    .local v4, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v4, :cond_e8

    const/4 v1, 0x0

    .line 1950
    .local v1, fileType:I
    :goto_b4
    const/16 v13, 0x29

    if-ne v1, v13, :cond_eb

    .line 1951
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5, v12}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_22

    .line 1924
    .end local v1           #fileType:I
    .end local v4           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v5           #membersUri:Landroid/net/Uri;
    .end local v8           #playListDirectory:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    .restart local v2       #lastDot:I
    :cond_bf
    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v7, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_71

    .line 1938
    .end local v2           #lastDot:I
    :cond_c6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-static {v13, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 1939
    .restart local v11       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v11, v12, v14, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1942
    const-string/jumbo v13, "members"

    invoke-static {v11, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1943
    .restart local v5       #membersUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v5, v14, v15}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_a6

    .line 1948
    .restart local v4       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v8       #playListDirectory:Ljava/lang/String;
    :cond_e8
    iget v1, v4, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_b4

    .line 1952
    .restart local v1       #fileType:I
    :cond_eb
    const/16 v13, 0x2a

    if-ne v1, v13, :cond_f6

    .line 1953
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5, v12}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_22

    .line 1954
    :cond_f6
    const/16 v13, 0x2b

    if-ne v1, v13, :cond_22

    .line 1955
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_22
.end method

.method private processPlayLists()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2133
    iget-object v2, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2134
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScanner$FileCacheEntry;

    .line 2137
    .local v0, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-boolean v2, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-eqz v2, :cond_6

    .line 2138
    invoke-direct {p0, v0}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileCacheEntry;)V

    goto :goto_6

    .line 2141
    .end local v0           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_1a
    return-void
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 17
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1805
    const/4 v10, 0x0

    .line 1807
    .local v10, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1808
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1809
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v11, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_4f

    .line 1811
    .end local v10           #reader:Ljava/io/BufferedReader;
    .local v11, reader:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 1812
    .local v9, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1813
    .local v5, index:I
    :goto_22
    if-eqz v9, :cond_76

    .line 1815
    const-string v0, "File"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1816
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1817
    .local v7, equals:I
    if-lez v7, :cond_4a

    .line 1818
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 1819
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1820
    add-int/lit8 v5, v5, 0x1

    .line 1823
    .end local v7           #equals:I
    :cond_4a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_1d .. :try_end_4d} :catchall_83
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_4d} :catch_86

    move-result-object v9

    goto :goto_22

    .line 1826
    .end local v5           #index:I
    .end local v8           #f:Ljava/io/File;
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :catch_4f
    move-exception v6

    .line 1827
    .local v6, e:Ljava/io/IOException;
    :goto_50
    :try_start_50
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_5d

    .line 1830
    if-eqz v10, :cond_5c

    .line 1831
    :try_start_59
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_6d

    .line 1836
    .end local v6           #e:Ljava/io/IOException;
    :cond_5c
    :goto_5c
    return-void

    .line 1829
    :catchall_5d
    move-exception v0

    .line 1830
    :goto_5e
    if-eqz v10, :cond_63

    .line 1831
    :try_start_60
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    .line 1829
    :cond_63
    :goto_63
    throw v0

    .line 1832
    :catch_64
    move-exception v6

    .line 1833
    .restart local v6       #e:Ljava/io/IOException;
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 1832
    :catch_6d
    move-exception v6

    .line 1833
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    :goto_72
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v5       #index:I
    .restart local v8       #f:Ljava/io/File;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :cond_76
    move-object v10, v11

    .line 1830
    .end local v5           #index:I
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :cond_77
    if-eqz v10, :cond_5c

    .line 1831
    :try_start_79
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_5c

    .line 1832
    :catch_7d
    move-exception v6

    .line 1833
    .restart local v6       #e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    goto :goto_72

    .line 1829
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catchall_83
    move-exception v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_5e

    .line 1826
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catch_86
    move-exception v6

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_50
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 11
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"

    .prologue
    .line 1878
    const/4 v2, 0x0

    .line 1880
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1881
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1882
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_4d
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_11} :catch_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_3d

    .line 1884
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_11
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_63
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_23} :catch_69
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_23} :catch_66

    move-object v2, v3

    .line 1892
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_24
    if-eqz v2, :cond_29

    .line 1893
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_5d

    .line 1898
    .end local v1           #f:Ljava/io/File;
    :cond_29
    :goto_29
    return-void

    .line 1886
    :catch_2a
    move-exception v0

    .line 1887
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_2b
    :try_start_2b
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_4d

    .line 1892
    if-eqz v2, :cond_29

    .line 1893
    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_29

    .line 1894
    :catch_34
    move-exception v0

    .line 1895
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    :goto_39
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 1888
    .end local v0           #e:Ljava/io/IOException;
    :catch_3d
    move-exception v0

    .line 1889
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4d

    .line 1892
    if-eqz v2, :cond_29

    .line 1893
    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_29

    .line 1894
    :catch_47
    move-exception v0

    .line 1895
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    goto :goto_39

    .line 1891
    .end local v0           #e:Ljava/io/IOException;
    :catchall_4d
    move-exception v4

    .line 1892
    :goto_4e
    if-eqz v2, :cond_53

    .line 1893
    :try_start_50
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 1891
    :cond_53
    :goto_53
    throw v4

    .line 1894
    :catch_54
    move-exception v0

    .line 1895
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53

    .line 1894
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #f:Ljava/io/File;
    :catch_5d
    move-exception v0

    .line 1895
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    goto :goto_39

    .line 1891
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_63
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4e

    .line 1888
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_66
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3e

    .line 1886
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_69
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2b
.end method

.method private pruneDeadThumbnailFiles()V
    .registers 15

    .prologue
    const/4 v2, 0x0

    .line 1202
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v0, :cond_1e

    .line 1203
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v0, :cond_1e

    .line 1204
    const-string v0, "MediaScanner"

    const-string v1, "MediaProvider null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_1d
    :goto_1d
    return-void

    .line 1210
    :cond_1e
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1211
    .local v8, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v7, "/sdcard/DCIM/.thumbnails"

    .line 1212
    .local v7, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 1213
    .local v10, files:[Ljava/lang/String;
    if-nez v10, :cond_32

    .line 1214
    new-array v10, v2, [Ljava/lang/String;

    .line 1216
    :cond_32
    const/4 v12, 0x0

    .local v12, i:I
    :goto_33
    array-length v0, v10

    if-ge v12, v0, :cond_55

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v10, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1218
    .local v11, fullPathString:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1216
    add-int/lit8 v12, v12, 0x1

    goto :goto_33

    .line 1222
    .end local v11           #fullPathString:Ljava/lang/String;
    :cond_55
    :try_start_55
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1228
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    if-eqz v6, :cond_97

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1231
    :cond_89
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1232
    .restart local v11       #fullPathString:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1233
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_89

    .line 1236
    .end local v11           #fullPathString:Ljava/lang/String;
    :cond_97
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_9b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_a7} :catch_d1

    .line 1240
    .local v9, fileToDelete:Ljava/lang/String;
    :try_start_a7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_af
    .catch Ljava/lang/SecurityException; {:try_start_a7 .. :try_end_af} :catch_b0
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_af} :catch_d1

    goto :goto_9b

    .line 1241
    :catch_b0
    move-exception v0

    goto :goto_9b

    .line 1245
    .end local v9           #fileToDelete:Ljava/lang/String;
    :cond_b2
    :try_start_b2
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    if-eqz v6, :cond_1d

    .line 1247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_cf} :catch_d1

    goto/16 :goto_1d

    .line 1249
    .end local v6           #c:Landroid/database/Cursor;
    .end local v13           #i$:Ljava/util/Iterator;
    :catch_d1
    move-exception v0

    goto/16 :goto_1d
.end method

.method private setDefaultRingtoneFileNames()V
    .registers 2

    .prologue
    .line 429
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 431
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 433
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 435
    return-void
.end method

.method private setSetting(Ljava/lang/String;Landroid/net/Uri;J)V
    .registers 7
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 2126
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2128
    return-void
.end method


# virtual methods
.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 2166
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2167
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2168
    return-void
.end method

.method public onSimChanged()V
    .registers 38

    .prologue
    .line 1977
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "media"

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v3

    .line 1978
    .local v3, mediaProvider:Landroid/content/IContentProvider;
    if-nez v3, :cond_19

    .line 1979
    const-string v5, "MediaScanner"

    const-string v6, "MediaProvider null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :goto_18
    return-void

    .line 1984
    :cond_19
    new-instance v26, Landroid/media/SettingsModule;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/media/SettingsModule;-><init>(Landroid/content/Context;)V

    .line 1985
    .local v26, mSettings:Landroid/media/SettingsModule;
    invoke-virtual/range {v26 .. v26}, Landroid/media/SettingsModule;->getResourcePath()Ljava/lang/String;

    move-result-object v30

    .line 1987
    .local v30, resourcepath:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Landroid/media/SettingsModule;->getExtraResourcePath()Ljava/lang/String;

    move-result-object v23

    .line 1988
    .local v23, extraresourcepath:Ljava/lang/String;
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onSimChanged] resourcepath= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onSimChanged] extraresourcepath= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1992
    const-string v5, "MediaScanner"

    const-string/jumbo v6, "onSimChanged, resourcepath empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 1997
    :cond_6f
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/4 v5, 0x0

    const-string v6, "/"

    aput-object v6, v35, v5

    .line 1999
    .local v35, skipMap:[Ljava/lang/String;
    const/16 v24, 0x0

    .local v24, i:I
    :goto_7b
    move-object/from16 v0, v35

    array-length v5, v0

    move/from16 v0, v24

    if-ge v0, v5, :cond_b1

    .line 2000
    aget-object v5, v35, v24

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 2001
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onSimChanged] resourcepath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " skip it"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1999
    :cond_ae
    add-int/lit8 v24, v24, 0x1

    goto :goto_7b

    .line 2008
    :cond_b1
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c1

    const-string v5, "/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_386

    .line 2009
    :cond_c1
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v5, 0x0

    aput-object v30, v21, v5

    .line 2020
    .local v21, directories:[Ljava/lang/String;
    :goto_c9
    const-string/jumbo v5, "internal"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    const-string/jumbo v5, "internal"

    invoke-static {v5}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2024
    .local v4, audioUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 2026
    .local v10, c:Landroid/database/Cursor;
    const-wide/16 v33, 0x0

    .line 2029
    .local v33, rowId:J
    const/16 v20, 0x0

    .local v20, defaultRingtoneSet:Z
    const/16 v18, 0x0

    .local v18, defaultNotificationSet:Z
    const/4 v12, 0x0

    .line 2030
    .local v12, defaultAlarmSet:Z
    const/4 v14, 0x0

    .local v14, defaultCalendarNotificationSet:Z
    const/16 v16, 0x0

    .line 2032
    .local v16, defaultMsgNotificationSet:Z
    :try_start_e5
    invoke-virtual/range {v26 .. v26}, Landroid/media/SettingsModule;->getDefaultRingtone()Ljava/lang/String;

    move-result-object v19

    .line 2033
    .local v19, defaultRingtoneFilename:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Landroid/media/SettingsModule;->getDefaultNotification()Ljava/lang/String;

    move-result-object v17

    .line 2034
    .local v17, defaultNotificationFilename:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Landroid/media/SettingsModule;->getDefaultAlarm()Ljava/lang/String;

    move-result-object v11

    .line 2035
    .local v11, defaultAlarmFilename:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Landroid/media/SettingsModule;->getDefaultCalendarNotification()Ljava/lang/String;

    move-result-object v13

    .line 2036
    .local v13, defaultCalendarNotificationFilename:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Landroid/media/SettingsModule;->getDefaultMsgNotification()Ljava/lang/String;

    move-result-object v15

    .line 2037
    .local v15, defaultMsgNotificationFilename:Ljava/lang/String;
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extra DefaultRingtone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extra NotificationFilename = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extra AlarmFilename = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extra CalendarNotificationFilename = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extra MsgNotificationFilename = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    const/16 v29, 0x0

    .line 2044
    .local v29, path:Ljava/lang/String;
    sget-object v5, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2045
    if-eqz v10, :cond_3ac

    .line 2046
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Media count= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_19e
    :goto_19e
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3ac

    .line 2048
    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 2049
    const/4 v5, 0x1

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2050
    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1be

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_393

    :cond_1be
    const/16 v25, 0x1

    .line 2051
    .local v25, isExtraMedia:Z
    :goto_1c0
    if-nez v25, :cond_1cc

    const-string v5, "/system/media/audio"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19e

    .line 2052
    :cond_1cc
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/SettingsModule;->isRingtone(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e0

    const-string v5, "/ringtones/"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_397

    :cond_1e0
    const/16 v32, 0x1

    .line 2053
    .local v32, ringtones:Z
    :goto_1e2
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/SettingsModule;->isNotification(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f6

    const-string v5, "/notifications/"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_39b

    :cond_1f6
    const/16 v28, 0x1

    .line 2054
    .local v28, notifications:Z
    :goto_1f8
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/SettingsModule;->isAlarm(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20c

    const-string v5, "/alarms/"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_39f

    :cond_20c
    const/4 v9, 0x1

    .line 2055
    .local v9, alarms:Z
    :goto_20d
    if-nez v32, :cond_3a2

    if-nez v28, :cond_3a2

    if-nez v9, :cond_3a2

    const/16 v27, 0x1

    .line 2057
    .local v27, music:Z
    :goto_215
    if-eqz v25, :cond_25b

    .line 2058
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .line 2059
    .local v36, values:Landroid/content/ContentValues;
    const-string/jumbo v5, "is_ringtone"

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2060
    const-string/jumbo v5, "is_notification"

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2061
    const-string/jumbo v5, "is_alarm"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2062
    const-string/jumbo v5, "is_music"

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2064
    move-wide/from16 v0, v33

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v31

    .line 2065
    .local v31, result:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-interface {v3, v0, v1, v5, v6}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2068
    .end local v31           #result:Landroid/net/Uri;
    .end local v36           #values:Landroid/content/ContentValues;
    :cond_25b
    if-eqz v28, :cond_301

    .line 2069
    if-nez v18, :cond_297

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_297

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_297

    .line 2070
    const-string/jumbo v5, "notification_sound"

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/media/MediaScanner;->setSetting(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2071
    const/16 v18, 0x1

    .line 2072
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DefaultNotificationSet= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_297
    if-nez v14, :cond_2cb

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2cb

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v13}, Landroid/media/MediaScanner;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2cb

    .line 2076
    const-string v5, "cal_notification"

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/media/MediaScanner;->setSetting(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2077
    const/4 v14, 0x1

    .line 2078
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DefaultCalendarNotificationSet= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :cond_2cb
    if-nez v16, :cond_301

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_301

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v15}, Landroid/media/MediaScanner;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_301

    .line 2082
    const-string/jumbo v5, "msg_notification"

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/media/MediaScanner;->setSetting(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2083
    const/16 v16, 0x1

    .line 2084
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DefaultMsgNotificationSet= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :cond_301
    if-eqz v32, :cond_33d

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33d

    .line 2089
    if-nez v20, :cond_33d

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33d

    .line 2090
    const-string/jumbo v5, "ringtone"

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/media/MediaScanner;->setSetting(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2091
    const/16 v20, 0x1

    .line 2092
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DefaultRingtoneSet= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :cond_33d
    if-eqz v9, :cond_19e

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19e

    .line 2097
    if-nez v12, :cond_19e

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v11}, Landroid/media/MediaScanner;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19e

    .line 2098
    const-string v5, "alarm_alert"

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/media/MediaScanner;->setSetting(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 2099
    const/4 v12, 0x1

    .line 2100
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DefaultAlarmSet= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_373
    .catchall {:try_start_e5 .. :try_end_373} :catchall_3a6
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_373} :catch_375

    goto/16 :goto_19e

    .line 2107
    .end local v9           #alarms:Z
    .end local v11           #defaultAlarmFilename:Ljava/lang/String;
    .end local v13           #defaultCalendarNotificationFilename:Ljava/lang/String;
    .end local v15           #defaultMsgNotificationFilename:Ljava/lang/String;
    .end local v17           #defaultNotificationFilename:Ljava/lang/String;
    .end local v19           #defaultRingtoneFilename:Ljava/lang/String;
    .end local v25           #isExtraMedia:Z
    .end local v27           #music:Z
    .end local v28           #notifications:Z
    .end local v29           #path:Ljava/lang/String;
    .end local v32           #ringtones:Z
    :catch_375
    move-exception v22

    .line 2108
    .local v22, e:Landroid/os/RemoteException;
    :try_start_376
    const-string v5, "MediaScanner"

    const-string v6, "RemoteException in MediaScanner.scan()"

    move-object/from16 v0, v22

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37f
    .catchall {:try_start_376 .. :try_end_37f} :catchall_3a6

    .line 2110
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2111
    .end local v22           #e:Landroid/os/RemoteException;
    :goto_382
    const/4 v10, 0x0

    .line 2113
    const/4 v3, 0x0

    .line 2114
    goto/16 :goto_18

    .line 2011
    .end local v4           #audioUri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v12           #defaultAlarmSet:Z
    .end local v14           #defaultCalendarNotificationSet:Z
    .end local v16           #defaultMsgNotificationSet:Z
    .end local v18           #defaultNotificationSet:Z
    .end local v20           #defaultRingtoneSet:Z
    .end local v21           #directories:[Ljava/lang/String;
    .end local v33           #rowId:J
    :cond_386
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v5, 0x0

    aput-object v30, v21, v5

    const/4 v5, 0x1

    aput-object v23, v21, v5

    .restart local v21       #directories:[Ljava/lang/String;
    goto/16 :goto_c9

    .line 2050
    .restart local v4       #audioUri:Landroid/net/Uri;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v11       #defaultAlarmFilename:Ljava/lang/String;
    .restart local v12       #defaultAlarmSet:Z
    .restart local v13       #defaultCalendarNotificationFilename:Ljava/lang/String;
    .restart local v14       #defaultCalendarNotificationSet:Z
    .restart local v15       #defaultMsgNotificationFilename:Ljava/lang/String;
    .restart local v16       #defaultMsgNotificationSet:Z
    .restart local v17       #defaultNotificationFilename:Ljava/lang/String;
    .restart local v18       #defaultNotificationSet:Z
    .restart local v19       #defaultRingtoneFilename:Ljava/lang/String;
    .restart local v20       #defaultRingtoneSet:Z
    .restart local v29       #path:Ljava/lang/String;
    .restart local v33       #rowId:J
    :cond_393
    const/16 v25, 0x0

    goto/16 :goto_1c0

    .line 2052
    .restart local v25       #isExtraMedia:Z
    :cond_397
    const/16 v32, 0x0

    goto/16 :goto_1e2

    .line 2053
    .restart local v32       #ringtones:Z
    :cond_39b
    const/16 v28, 0x0

    goto/16 :goto_1f8

    .line 2054
    .restart local v28       #notifications:Z
    :cond_39f
    const/4 v9, 0x0

    goto/16 :goto_20d

    .line 2055
    .restart local v9       #alarms:Z
    :cond_3a2
    const/16 v27, 0x0

    goto/16 :goto_215

    .line 2110
    .end local v9           #alarms:Z
    .end local v11           #defaultAlarmFilename:Ljava/lang/String;
    .end local v13           #defaultCalendarNotificationFilename:Ljava/lang/String;
    .end local v15           #defaultMsgNotificationFilename:Ljava/lang/String;
    .end local v17           #defaultNotificationFilename:Ljava/lang/String;
    .end local v19           #defaultRingtoneFilename:Ljava/lang/String;
    .end local v25           #isExtraMedia:Z
    .end local v28           #notifications:Z
    .end local v29           #path:Ljava/lang/String;
    .end local v32           #ringtones:Z
    :catchall_3a6
    move-exception v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2111
    const/4 v10, 0x0

    .line 2110
    throw v5

    .restart local v11       #defaultAlarmFilename:Ljava/lang/String;
    .restart local v13       #defaultCalendarNotificationFilename:Ljava/lang/String;
    .restart local v15       #defaultMsgNotificationFilename:Ljava/lang/String;
    .restart local v17       #defaultNotificationFilename:Ljava/lang/String;
    .restart local v19       #defaultRingtoneFilename:Ljava/lang/String;
    .restart local v29       #path:Ljava/lang/String;
    :cond_3ac
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_382
.end method

.method public release()V
    .registers 1

    .prologue
    .line 2161
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2162
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .registers 25
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    .line 1452
    :try_start_0
    const-string v18, "MediaScanner"

    const-string v19, "=====scanDirectories====="

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaScanner;->mStopScanning:Z

    .line 1458
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mInsertImageCount:I

    .line 1459
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mInsertVideoCount:I

    .line 1460
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mInsertAudioCount:I

    .line 1461
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mInsertOtherCount:I

    .line 1463
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mUpdateImageCount:I

    .line 1464
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mUpdateVideoCount:I

    .line 1465
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mUpdateAudioCount:I

    .line 1466
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mUpdateOtherCount:I

    .line 1468
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mDeleteImageCount:I

    .line 1469
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mDeleteVideoCount:I

    .line 1470
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mDeleteAudioCount:I

    .line 1471
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mDeleteOtherCount:I

    .line 1474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1475
    .local v16, start:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1476
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1479
    .local v10, prescan:J
    sget-object v18, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner;->setMediaFileExtension(Ljava/lang/String;)V

    .line 1482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1483
    .local v8, firstscanstart:J
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->processInternalDirectory([Ljava/lang/String;Z)V

    .line 1485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1488
    .local v6, firstscanend:J
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->processInternalDirectory([Ljava/lang/String;Z)V

    .line 1489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1491
    .local v14, secondscanend:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1492
    .local v12, scan:J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1496
    .local v4, end:J
    const-string v18, "MediaScanner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " prescan time: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v10, v16

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ms\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const-string v18, "MediaScanner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    scan time: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v12, v10

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ms\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const-string v18, "MediaScanner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "postscan time: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v4, v12

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ms\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    const-string v18, "MediaScanner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "   total time: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v4, v16

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ms\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    const-string v18, "MediaScanner"

    const-string v19, "-----------------------------------------------------------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const-string v18, "MediaScanner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "firstscan(media) time: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v6, v8

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ms\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const-string v18, "MediaScanner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "secondscan(non-media) time: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v14, v6

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ms\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const-string v18, "MediaScanner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " [Update]   Image: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mUpdateImageCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Video: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mUpdateVideoCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Audio: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mUpdateAudioCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Other: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mUpdateOtherCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const-string v18, "MediaScanner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " [Insert]   Image: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mInsertImageCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Video: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mInsertVideoCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Audio: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mInsertAudioCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Other: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mInsertOtherCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const-string v18, "MediaScanner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " [Delete]   Image: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mDeleteImageCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Video: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mDeleteVideoCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Audio: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mDeleteAudioCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Other: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mDeleteOtherCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27a
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_27a} :catch_27b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_27a} :catch_288
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27a} :catch_295

    .line 1516
    .end local v4           #end:J
    .end local v6           #firstscanend:J
    .end local v8           #firstscanstart:J
    .end local v10           #prescan:J
    .end local v12           #scan:J
    .end local v14           #secondscanend:J
    .end local v16           #start:J
    :goto_27a
    return-void

    .line 1507
    :catch_27b
    move-exception v3

    .line 1509
    .local v3, e:Landroid/database/SQLException;
    const-string v18, "MediaScanner"

    const-string v19, "SQLException in MediaScanner.scan()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27a

    .line 1510
    .end local v3           #e:Landroid/database/SQLException;
    :catch_288
    move-exception v3

    .line 1512
    .local v3, e:Ljava/lang/UnsupportedOperationException;
    const-string v18, "MediaScanner"

    const-string v19, "UnsupportedOperationException in MediaScanner.scan()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27a

    .line 1513
    .end local v3           #e:Ljava/lang/UnsupportedOperationException;
    :catch_295
    move-exception v3

    .line 1514
    .local v3, e:Landroid/os/RemoteException;
    const-string v18, "MediaScanner"

    const-string v19, "RemoteException in MediaScanner.scan()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27a
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 25
    .parameter "path"
    .parameter "volumeName"
    .parameter "objectHandle"
    .parameter "format"

    .prologue
    .line 1597
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v2, :cond_2a

    .line 1601
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "media"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v2, :cond_2a

    .line 1602
    const-string v2, "MediaScanner"

    const-string v3, "MediaProvider null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :goto_29
    return-void

    .line 1608
    :cond_2a
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v17

    .line 1609
    .local v17, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v17, :cond_9e

    const/4 v15, 0x0

    .line 1610
    .local v15, fileType:I
    :goto_31
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1611
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v5, v2, v7

    .line 1613
    .local v5, lastModifiedSeconds:J
    invoke-static {v15}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-nez v2, :cond_a3

    invoke-static {v15}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-nez v2, :cond_a3

    invoke-static {v15}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_a3

    invoke-static {v15}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-nez v2, :cond_a3

    .line 1617
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1618
    .local v18, values:Landroid/content/ContentValues;
    const-string v2, "_size"

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1619
    const-string v2, "date_modified"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1621
    const/4 v2, 0x1

    :try_start_78
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v2

    .line 1622
    .local v19, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id=?"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_94} :catch_95

    goto :goto_29

    .line 1624
    .end local v19           #whereArgs:[Ljava/lang/String;
    :catch_95
    move-exception v12

    .line 1625
    .local v12, e:Landroid/os/RemoteException;
    const-string v2, "MediaScanner"

    const-string v3, "RemoteException in scanMtpFile"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 1609
    .end local v5           #lastModifiedSeconds:J
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v14           #file:Ljava/io/File;
    .end local v15           #fileType:I
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_9e
    move-object/from16 v0, v17

    iget v15, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_31

    .line 1630
    .restart local v5       #lastModifiedSeconds:J
    .restart local v14       #file:Ljava/io/File;
    .restart local v15       #fileType:I
    :cond_a3
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1632
    :try_start_a9
    invoke-static {v15}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 1634
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1636
    move-object/from16 v16, p1

    .line 1637
    .local v16, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v2, :cond_c2

    .line 1638
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 1640
    :cond_c2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1641
    .local v13, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-eqz v13, :cond_d5

    .line 1642
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileCacheEntry;)V
    :try_end_d5
    .catchall {:try_start_a9 .. :try_end_d5} :catchall_10b
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_d5} :catch_102

    .line 1655
    .end local v13           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v16           #key:Ljava/lang/String;
    :cond_d5
    :goto_d5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    goto/16 :goto_29

    .line 1646
    :cond_dc
    const/4 v2, 0x0

    :try_start_dd
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1649
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v7

    const/16 v3, 0x3001

    move/from16 v0, p4

    if-ne v0, v3, :cond_112

    const/4 v9, 0x1

    :goto_f7
    const/4 v10, 0x1

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_101
    .catchall {:try_start_dd .. :try_end_101} :catchall_10b
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_101} :catch_102

    goto :goto_d5

    .line 1652
    :catch_102
    move-exception v12

    .line 1653
    .restart local v12       #e:Landroid/os/RemoteException;
    :try_start_103
    const-string v2, "MediaScanner"

    const-string v3, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10a
    .catchall {:try_start_103 .. :try_end_10a} :catchall_10b

    goto :goto_d5

    .line 1655
    .end local v12           #e:Landroid/os/RemoteException;
    :catchall_10b
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    throw v2

    .line 1649
    :cond_112
    const/4 v9, 0x0

    goto :goto_f7
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 16
    .parameter "path"
    .parameter "volumeName"
    .parameter "mimeType"

    .prologue
    .line 1521
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1522
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1524
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1527
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    .line 1530
    .local v3, lastModifiedSeconds:J
    iget-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_24

    move-result-object v0

    .line 1534
    .end local v3           #lastModifiedSeconds:J
    .end local v11           #file:Ljava/io/File;
    :goto_23
    return-object v0

    .line 1532
    :catch_24
    move-exception v10

    .line 1533
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1534
    const/4 v0, 0x0

    goto :goto_23
.end method

.method setDefaultLocale()V
    .registers 6

    .prologue
    .line 1960
    const/4 v0, 0x0

    .line 1961
    .local v0, encodingFound:Z
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1962
    .local v2, locale:Ljava/util/Locale;
    if-eqz v2, :cond_29

    .line 1963
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1964
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_29

    const-string/jumbo v3, "ja"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string/jumbo v3, "ko"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string/jumbo v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1965
    :cond_28
    const/4 v0, 0x1

    .line 1968
    .end local v1           #language:Ljava/lang/String;
    :cond_29
    if-nez v0, :cond_39

    .line 1969
    const-string/jumbo v3, "zh"

    invoke-virtual {p0, v3}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 1970
    const-string v3, "MediaScanner"

    const-string/jumbo v4, "setLocale zh "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    :cond_39
    return-void
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method

.method public native setMediaFileExtension(Ljava/lang/String;)V
.end method

.method public stopScan()V
    .registers 3

    .prologue
    .line 447
    const-string v0, "MediaScanner"

    const-string v1, "[stopScan] Call stop scan to scan file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaScanner;->mStopScanning:Z

    .line 449
    return-void
.end method
