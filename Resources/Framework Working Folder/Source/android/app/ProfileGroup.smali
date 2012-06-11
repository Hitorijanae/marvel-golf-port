.class public final Landroid/app/ProfileGroup;
.super Ljava/lang/Object;
.source "ProfileGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ProfileGroup$2;,
        Landroid/app/ProfileGroup$Mode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ProfileGroup"


# instance fields
.field private mDefaultGroup:Z

.field private mDirty:Z

.field private mLightsMode:Landroid/app/ProfileGroup$Mode;

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mRingerMode:Landroid/app/ProfileGroup$Mode;

.field private mRingerOverride:Landroid/net/Uri;

.field private mSoundMode:Landroid/app/ProfileGroup$Mode;

.field private mSoundOverride:Landroid/net/Uri;

.field private mUuid:Ljava/util/UUID;

.field private mVibrateMode:Landroid/app/ProfileGroup$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Landroid/app/ProfileGroup$1;

    invoke-direct {v0}, Landroid/app/ProfileGroup$1;-><init>()V

    sput-object v0, Landroid/app/ProfileGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 48
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    .line 49
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    .line 50
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    .line 51
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    .line 82
    invoke-virtual {p0, p1}, Landroid/app/ProfileGroup;->readFromParcel(Landroid/os/Parcel;)V

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ProfileGroup$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/app/ProfileGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/UUID;Z)V
    .registers 7
    .parameter "name"
    .parameter "uuid"
    .parameter "defaultGroup"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 46
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 48
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    .line 49
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    .line 50
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    .line 51
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    .line 53
    iput-boolean v2, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    .line 74
    iput-object p1, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 75
    if-eqz p2, :cond_33

    move-object v0, p2

    :goto_29
    iput-object v0, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 76
    iput-boolean p3, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    .line 77
    if-nez p2, :cond_38

    move v0, v1

    :goto_30
    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 78
    return-void

    .line 75
    :cond_33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    goto :goto_29

    :cond_38
    move v0, v2

    .line 77
    goto :goto_30
.end method

.method public constructor <init>(Ljava/util/UUID;Z)V
    .registers 4
    .parameter "uuid"
    .parameter "defaultGroup"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/ProfileGroup;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 71
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ProfileGroup;
    .registers 13
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 306
    const-string/jumbo v7, "name"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 308
    .local v5, uuid:Ljava/util/UUID;
    const-string/jumbo v7, "uuid"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_16

    .line 312
    :try_start_12
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_15} :catch_5c

    move-result-object v5

    .line 318
    :cond_16
    :goto_16
    const-string v7, "default"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 319
    const-string/jumbo v7, "true"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 321
    .local v0, defaultGroup:Z
    new-instance v4, Landroid/app/ProfileGroup;

    invoke-direct {v4, v3, v5, v0}, Landroid/app/ProfileGroup;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 322
    .local v4, profileGroup:Landroid/app/ProfileGroup;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 323
    .local v2, event:I
    :goto_2c
    const/4 v7, 0x3

    if-ne v2, v7, :cond_3c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "profileGroup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e5

    .line 324
    :cond_3c
    const/4 v7, 0x2

    if-ne v2, v7, :cond_57

    .line 325
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 326
    const-string/jumbo v7, "sound"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 327
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProfileGroup;->setSoundOverride(Landroid/net/Uri;)V

    .line 340
    :cond_57
    :goto_57
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_2c

    .line 313
    .end local v0           #defaultGroup:Z
    .end local v2           #event:I
    .end local v4           #profileGroup:Landroid/app/ProfileGroup;
    :catch_5c
    move-exception v1

    .line 314
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "ProfileGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UUID not recognized for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", using new one."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 328
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #defaultGroup:Z
    .restart local v2       #event:I
    .restart local v4       #profileGroup:Landroid/app/ProfileGroup;
    :cond_7c
    const-string/jumbo v7, "ringer"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 329
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProfileGroup;->setRingerOverride(Landroid/net/Uri;)V

    goto :goto_57

    .line 330
    :cond_91
    const-string/jumbo v7, "soundMode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 331
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProfileGroup;->setSoundMode(Landroid/app/ProfileGroup$Mode;)V

    goto :goto_57

    .line 332
    :cond_a6
    const-string/jumbo v7, "ringerMode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 333
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProfileGroup;->setRingerMode(Landroid/app/ProfileGroup$Mode;)V

    goto :goto_57

    .line 334
    :cond_bb
    const-string/jumbo v7, "vibrateMode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 335
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProfileGroup;->setVibrateMode(Landroid/app/ProfileGroup$Mode;)V

    goto :goto_57

    .line 336
    :cond_d0
    const-string v7, "lightsMode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 337
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProfileGroup;->setLightsMode(Landroid/app/ProfileGroup$Mode;)V

    goto/16 :goto_57

    .line 344
    :cond_e5
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/app/ProfileGroup;->mDirty:Z

    .line 346
    return-object v4
.end method

.method private silenceNotification(Landroid/app/Notification;)V
    .registers 3
    .parameter "notification"

    .prologue
    .line 222
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 223
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 224
    return-void
.end method

.method private suppressLights(Landroid/app/Notification;)V
    .registers 3
    .parameter "notification"

    .prologue
    .line 232
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 233
    iget v0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 234
    return-void
.end method

.method private suppressVibrate(Landroid/app/Notification;)V
    .registers 3
    .parameter "notification"

    .prologue
    .line 227
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 228
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 229
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public getLightsMode()Landroid/app/ProfileGroup$Mode;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getRingerMode()Landroid/app/ProfileGroup$Mode;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getRingerOverride()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    return-object v0
.end method

.method public getSoundMode()Landroid/app/ProfileGroup$Mode;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getSoundOverride()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getVibrateMode()Landroid/app/ProfileGroup$Mode;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .registers 4
    .parameter "builder"
    .parameter "context"

    .prologue
    .line 279
    const-string v0, "<profileGroup uuid=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-object v0, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-object v0, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 282
    const-string v0, "\" name=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v0, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_20
    const-string v0, "\" default=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p0}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 287
    const-string v0, "\">\n<sound>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v0, "</sound>\n<ringer>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v0, "</ringer>\n<soundMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    const-string v0, "</soundMode>\n<ringerMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v0, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    const-string v0, "</ringerMode>\n<vibrateMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v0, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    const-string v0, "</vibrateMode>\n<lightsMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v0, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    const-string v0, "</lightsMode>\n</profileGroup>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 301
    return-void
.end method

.method public isDefaultGroup()Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    return v0
.end method

.method public isDirty()Z
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    return v0
.end method

.method public matches(Landroid/app/NotificationGroup;Z)Z
    .registers 7
    .parameter "group"
    .parameter "defaultGroup"

    .prologue
    const/4 v1, 0x1

    .line 87
    iget-object v2, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 110
    :goto_d
    return v1

    .line 92
    :cond_e
    const/4 v0, 0x0

    .line 95
    .local v0, matches:Z
    iget-object v2, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 96
    const/4 v0, 0x1

    .line 102
    :cond_20
    :goto_20
    if-nez v0, :cond_2c

    .line 103
    const/4 v1, 0x0

    goto :goto_d

    .line 98
    :cond_24
    iget-boolean v2, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    if-eqz v2, :cond_20

    if-eqz p2, :cond_20

    .line 99
    const/4 v0, 0x1

    goto :goto_20

    .line 106
    :cond_2c
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 108
    iput-boolean v1, p0, Landroid/app/ProfileGroup;->mDirty:Z

    goto :goto_d
.end method

.method public processNotification(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 4
    .parameter "notification"

    .prologue
    .line 191
    sget-object v0, Landroid/app/ProfileGroup$2;->$SwitchMap$android$app$ProfileGroup$Mode:[I

    iget-object v1, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 200
    :goto_d
    sget-object v0, Landroid/app/ProfileGroup$2;->$SwitchMap$android$app$ProfileGroup$Mode:[I

    iget-object v1, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 209
    :goto_1a
    sget-object v0, Landroid/app/ProfileGroup$2;->$SwitchMap$android$app$ProfileGroup$Mode:[I

    iget-object v1, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_58

    .line 218
    :goto_27
    return-object p1

    .line 193
    :pswitch_28
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_d

    .line 196
    :pswitch_2d
    invoke-direct {p0, p1}, Landroid/app/ProfileGroup;->silenceNotification(Landroid/app/Notification;)V

    goto :goto_d

    .line 202
    :pswitch_31
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_1a

    .line 205
    :pswitch_38
    invoke-direct {p0, p1}, Landroid/app/ProfileGroup;->suppressVibrate(Landroid/app/Notification;)V

    goto :goto_1a

    .line 211
    :pswitch_3c
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_27

    .line 214
    :pswitch_43
    invoke-direct {p0, p1}, Landroid/app/ProfileGroup;->suppressLights(Landroid/app/Notification;)V

    goto :goto_27

    .line 191
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2d
    .end packed-switch

    .line 200
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_31
        :pswitch_38
    .end packed-switch

    .line 209
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_43
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 261
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_71

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_73

    :goto_26
    iput-boolean v1, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 264
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 265
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 267
    const-class v0, Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    .line 268
    const-class v0, Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    .line 269
    const-class v0, Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    .line 270
    const-class v0, Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    .line 271
    return-void

    :cond_71
    move v0, v2

    .line 262
    goto :goto_1e

    :cond_73
    move v1, v2

    .line 263
    goto :goto_26
.end method

.method public setLightsMode(Landroid/app/ProfileGroup$Mode;)V
    .registers 3
    .parameter "lightsMode"

    .prologue
    .line 178
    iput-object p1, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 180
    return-void
.end method

.method public setRingerMode(Landroid/app/ProfileGroup$Mode;)V
    .registers 3
    .parameter "ringerMode"

    .prologue
    .line 158
    iput-object p1, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 160
    return-void
.end method

.method public setRingerOverride(Landroid/net/Uri;)V
    .registers 3
    .parameter "ringer"

    .prologue
    .line 138
    iput-object p1, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 140
    return-void
.end method

.method public setSoundMode(Landroid/app/ProfileGroup$Mode;)V
    .registers 3
    .parameter "soundMode"

    .prologue
    .line 148
    iput-object p1, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 150
    return-void
.end method

.method public setSoundOverride(Landroid/net/Uri;)V
    .registers 3
    .parameter "sound"

    .prologue
    .line 128
    iput-object p1, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 130
    return-void
.end method

.method public setVibrateMode(Landroid/app/ProfileGroup$Mode;)V
    .registers 3
    .parameter "vibrateMode"

    .prologue
    .line 168
    iput-object p1, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 170
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v3, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, p1, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 247
    iget-boolean v0, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    if-eqz v0, :cond_4f

    move v0, v1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    if-eqz v0, :cond_51

    :goto_1d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 250
    iget-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 252
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v0}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v0}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v0}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v0}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    return-void

    :cond_4f
    move v0, v2

    .line 247
    goto :goto_16

    :cond_51
    move v1, v2

    .line 248
    goto :goto_1d
.end method
