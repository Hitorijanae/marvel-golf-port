.class public final Landroid/app/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Profile$AirplaneMode;,
        Landroid/app/Profile$LockMode;
    }
.end annotation


# static fields
.field private static final CONDITIONAL_TYPE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Profile"

.field private static final TOGGLE_TYPE:I


# instance fields
.field private connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mAirplaneMode:I

.field private mDefaultGroup:Landroid/app/ProfileGroup;

.field private mDirty:Z

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mProfileType:I

.field private mScreenLockMode:I

.field private mStatusBarIndicator:Z

.field private mUuid:Ljava/util/UUID;

.field private profileGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/StreamSettings;",
            ">;"
        }
    .end annotation
.end field

.field private vibrators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/VibratorSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    new-instance v0, Landroid/app/Profile$1;

    invoke-direct {v0}, Landroid/app/Profile$1;-><init>()V

    sput-object v0, Landroid/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    .line 53
    iput-boolean v1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    .line 71
    iput v1, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 73
    iput v1, p0, Landroid/app/Profile;->mAirplaneMode:I

    .line 115
    invoke-virtual {p0, p1}, Landroid/app/Profile;->readFromParcel(Landroid/os/Parcel;)V

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/Profile$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/app/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 103
    const/4 v0, -0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/UUID;)V
    .registers 6
    .parameter "name"
    .parameter "nameResId"
    .parameter "uuid"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    .line 53
    iput-boolean v1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    .line 71
    iput v1, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 73
    iput v1, p0, Landroid/app/Profile;->mAirplaneMode:I

    .line 107
    iput-object p1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    .line 108
    iput p2, p0, Landroid/app/Profile;->mNameResId:I

    .line 109
    iput-object p3, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    .line 110
    iput v1, p0, Landroid/app/Profile;->mProfileType:I

    .line 111
    iput-boolean v1, p0, Landroid/app/Profile;->mDirty:Z

    .line 112
    return-void
.end method

.method private doSelectAirplaneMode(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 470
    invoke-virtual {p0}, Landroid/app/Profile;->getAirplaneMode()I

    move-result v5

    if-eqz v5, :cond_3c

    .line 471
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 472
    .local v0, current:I
    invoke-virtual {p0}, Landroid/app/Profile;->getAirplaneMode()I

    move-result v2

    .line 473
    .local v2, target:I
    if-ne v0, v3, :cond_1b

    if-eq v2, v8, :cond_1f

    :cond_1b
    if-nez v0, :cond_3c

    if-ne v2, v3, :cond_3c

    .line 474
    :cond_1f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    rsub-int/lit8 v7, v0, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v5, "state"

    if-eq v2, v8, :cond_3d

    :goto_36
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 477
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 480
    .end local v0           #current:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #target:I
    :cond_3c
    return-void

    .restart local v0       #current:I
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #target:I
    :cond_3d
    move v3, v4

    .line 476
    goto :goto_36
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/Profile;
    .registers 17
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    const/4 v12, 0x0

    const-string/jumbo v13, "nameres"

    invoke-interface {p0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 368
    .local v10, value:Ljava/lang/String;
    const/4 v7, -0x1

    .line 369
    .local v7, profileNameResId:I
    const/4 v6, 0x0

    .line 371
    .local v6, profileName:Ljava/lang/String;
    if-eqz v10, :cond_23

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string/jumbo v13, "string"

    const-string v14, "android"

    invoke-virtual {v12, v10, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 373
    if-lez v7, :cond_23

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 378
    :cond_23
    if-nez v6, :cond_2d

    .line 379
    const/4 v12, 0x0

    const-string/jumbo v13, "name"

    invoke-interface {p0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 382
    :cond_2d
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    .line 384
    .local v8, profileUuid:Ljava/util/UUID;
    const/4 v12, 0x0

    :try_start_32
    const-string/jumbo v13, "uuid"

    invoke-interface {p0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_3c
    .catch Ljava/lang/NullPointerException; {:try_start_32 .. :try_end_3c} :catch_ff
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_3c} :catch_128

    move-result-object v8

    .line 401
    :goto_3d
    new-instance v5, Landroid/app/Profile;

    invoke-direct {v5, v6, v7, v8}, Landroid/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .line 402
    .local v5, profile:Landroid/app/Profile;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 403
    .local v2, event:I
    :goto_46
    const/4 v12, 0x3

    if-eq v2, v12, :cond_154

    .line 404
    const/4 v12, 0x2

    if-ne v2, v12, :cond_f9

    .line 405
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, name:Ljava/lang/String;
    const-string/jumbo v12, "statusbar"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_67

    .line 407
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "yes"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v5, v12}, Landroid/app/Profile;->setStatusBarIndicator(Z)V

    .line 409
    :cond_67
    const-string/jumbo v12, "profiletype"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_81

    .line 410
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "toggle"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_151

    const/4 v12, 0x0

    :goto_7e
    invoke-virtual {v5, v12}, Landroid/app/Profile;->setProfileType(I)V

    .line 412
    :cond_81
    const-string/jumbo v12, "screen-lock-mode"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_99

    .line 413
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/app/Profile;->setScreenLockMode(I)V

    .line 415
    :cond_99
    const-string v12, "airplane-mode"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b0

    .line 416
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/app/Profile;->setAirplaneMode(I)V

    .line 418
    :cond_b0
    const-string/jumbo v12, "profileGroup"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c0

    .line 419
    invoke-static/range {p0 .. p1}, Landroid/app/ProfileGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ProfileGroup;

    move-result-object v4

    .line 420
    .local v4, pg:Landroid/app/ProfileGroup;
    invoke-virtual {v5, v4}, Landroid/app/Profile;->addProfileGroup(Landroid/app/ProfileGroup;)V

    .line 422
    .end local v4           #pg:Landroid/app/ProfileGroup;
    :cond_c0
    const-string/jumbo v12, "streamDescriptor"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d0

    .line 423
    invoke-static/range {p0 .. p1}, Landroid/app/StreamSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/StreamSettings;

    move-result-object v9

    .line 424
    .local v9, sd:Landroid/app/StreamSettings;
    invoke-virtual {v5, v9}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 426
    .end local v9           #sd:Landroid/app/StreamSettings;
    :cond_d0
    const-string v12, "connectionDescriptor"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e9

    .line 427
    invoke-static/range {p0 .. p1}, Landroid/app/ConnectionSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ConnectionSettings;

    move-result-object v0

    .line 428
    .local v0, cs:Landroid/app/ConnectionSettings;
    iget-object v12, v5, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .end local v0           #cs:Landroid/app/ConnectionSettings;
    :cond_e9
    const-string/jumbo v12, "vibratorDescriptor"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f9

    .line 431
    invoke-static/range {p0 .. p1}, Landroid/app/VibratorSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/VibratorSettings;

    move-result-object v11

    .line 432
    .local v11, vs:Landroid/app/VibratorSettings;
    invoke-virtual {v5, v11}, Landroid/app/Profile;->setVibratorSettings(Landroid/app/VibratorSettings;)V

    .line 435
    .end local v3           #name:Ljava/lang/String;
    .end local v11           #vs:Landroid/app/VibratorSettings;
    :cond_f9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto/16 :goto_46

    .line 385
    .end local v2           #event:I
    .end local v5           #profile:Landroid/app/Profile;
    :catch_ff
    move-exception v1

    .line 386
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v12, "Profile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Null Pointer - UUID not found for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".  New UUID generated: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 392
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_128
    move-exception v1

    .line 393
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v12, "Profile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UUID not recognized for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".  New UUID generated: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 410
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #event:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #profile:Landroid/app/Profile;
    :cond_151
    const/4 v12, 0x1

    goto/16 :goto_7e

    .line 439
    .end local v3           #name:Ljava/lang/String;
    :cond_154
    const/4 v12, 0x0

    iput-boolean v12, v5, Landroid/app/Profile;->mDirty:Z

    .line 441
    return-object v5
.end method


# virtual methods
.method public addProfileGroup(Landroid/app/ProfileGroup;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 133
    iget-object v0, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    if-eqz v0, :cond_b

    .line 140
    :goto_a
    return-void

    .line 136
    :cond_b
    iput-object p1, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    .line 138
    :cond_d
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    goto :goto_a
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .parameter "obj"

    .prologue
    .line 120
    move-object v0, p1

    check-cast v0, Landroid/app/Profile;

    .line 121
    .local v0, tmp:Landroid/app/Profile;
    iget-object v1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_f

    .line 122
    const/4 v1, -0x1

    .line 126
    :goto_e
    return v1

    .line 123
    :cond_f
    iget-object v1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1b

    .line 124
    const/4 v1, 0x1

    goto :goto_e

    .line 126
    :cond_1b
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public doSelect(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 447
    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 448
    .local v0, am:Landroid/media/AudioManager;
    iget-object v5, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .line 449
    .local v3, sd:Landroid/app/StreamSettings;
    invoke-virtual {v3}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 450
    invoke-virtual {v3}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v5

    invoke-virtual {v3}, Landroid/app/StreamSettings;->getValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_12

    .line 454
    .end local v3           #sd:Landroid/app/StreamSettings;
    :cond_31
    iget-object v5, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3b
    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ConnectionSettings;

    .line 455
    .local v1, cs:Landroid/app/ConnectionSettings;
    invoke-virtual {v1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 456
    invoke-virtual {v1, p1}, Landroid/app/ConnectionSettings;->processOverride(Landroid/content/Context;)V

    goto :goto_3b

    .line 460
    .end local v1           #cs:Landroid/app/ConnectionSettings;
    :cond_51
    iget-object v5, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5b
    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/VibratorSettings;

    .line 461
    .local v4, vs:Landroid/app/VibratorSettings;
    invoke-virtual {v4}, Landroid/app/VibratorSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 462
    invoke-virtual {v4, p1}, Landroid/app/VibratorSettings;->processOverride(Landroid/content/Context;)V

    goto :goto_5b

    .line 466
    .end local v4           #vs:Landroid/app/VibratorSettings;
    :cond_71
    invoke-direct {p0, p1}, Landroid/app/Profile;->doSelectAirplaneMode(Landroid/content/Context;)V

    .line 467
    return-void
.end method

.method public getAirplaneMode()I
    .registers 2

    .prologue
    .line 278
    iget v0, p0, Landroid/app/Profile;->mAirplaneMode:I

    return v0
.end method

.method public getConnectionSettings()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/ConnectionSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultGroup()Landroid/app/ProfileGroup;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;
    .registers 3
    .parameter "uuid"

    .prologue
    .line 156
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileGroups()[Landroid/app/ProfileGroup;
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/ProfileGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileType()I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Landroid/app/Profile;->mProfileType:I

    return v0
.end method

.method public getScreenLockMode()I
    .registers 2

    .prologue
    .line 265
    iget v0, p0, Landroid/app/Profile;->mScreenLockMode:I

    return v0
.end method

.method public getSettingsForConnection(I)Landroid/app/ConnectionSettings;
    .registers 4
    .parameter "connectionId"

    .prologue
    .line 516
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    return-object v0
.end method

.method public getSettingsForStream(I)Landroid/app/StreamSettings;
    .registers 4
    .parameter "streamId"

    .prologue
    .line 484
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StreamSettings;

    return-object v0
.end method

.method public getSettingsForVibrator(I)Landroid/app/VibratorSettings;
    .registers 4
    .parameter "vibratorId"

    .prologue
    .line 500
    iget-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/VibratorSettings;

    return-object v0
.end method

.method public getStatusBarIndicator()Z
    .registers 2

    .prologue
    .line 247
    iget-boolean v0, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    return v0
.end method

.method public getStreamSettings()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/StreamSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    if-nez v0, :cond_a

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    .line 243
    :cond_a
    iget-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getVibratorSettings()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/VibratorSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .registers 10
    .parameter "builder"
    .parameter "context"

    .prologue
    .line 320
    const-string v5, "<profile "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget v5, p0, Landroid/app/Profile;->mNameResId:I

    if-lez v5, :cond_99

    .line 322
    const-string/jumbo v5, "nameres=\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Landroid/app/Profile;->mNameResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :goto_1c
    const-string v5, "\" uuid=\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p0}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v5, "\">\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v5, "<profiletype>"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p0}, Landroid/app/Profile;->getProfileType()I

    move-result v5

    if-nez v5, :cond_ac

    const-string/jumbo v5, "toggle"

    :goto_43
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v5, "</profiletype>\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v5, "<statusbar>"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0}, Landroid/app/Profile;->getStatusBarIndicator()Z

    move-result v5

    if-eqz v5, :cond_af

    const-string/jumbo v5, "yes"

    :goto_59
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v5, "</statusbar>\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v5, "<screen-lock-mode>"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget v5, p0, Landroid/app/Profile;->mScreenLockMode:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    const-string v5, "</screen-lock-mode>\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string v5, "<airplane-mode>"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget v5, p0, Landroid/app/Profile;->mAirplaneMode:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    const-string v5, "</airplane-mode>\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v5, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_89
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfileGroup;

    .line 349
    .local v2, pGroup:Landroid/app/ProfileGroup;
    invoke-virtual {v2, p1, p2}, Landroid/app/ProfileGroup;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_89

    .line 325
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pGroup:Landroid/app/ProfileGroup;
    :cond_99
    const-string/jumbo v5, "name=\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p0}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1c

    .line 333
    :cond_ac
    const-string v5, "conditional"

    goto :goto_43

    .line 337
    :cond_af
    const-string/jumbo v5, "no"

    goto :goto_59

    .line 351
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_b3
    iget-object v5, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .line 352
    .local v3, sd:Landroid/app/StreamSettings;
    invoke-virtual {v3, p1, p2}, Landroid/app/StreamSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_bd

    .line 354
    .end local v3           #sd:Landroid/app/StreamSettings;
    :cond_cd
    iget-object v5, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    .line 355
    .local v0, cs:Landroid/app/ConnectionSettings;
    invoke-virtual {v0, p1, p2}, Landroid/app/ConnectionSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_d7

    .line 357
    .end local v0           #cs:Landroid/app/ConnectionSettings;
    :cond_e7
    iget-object v5, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_101

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/VibratorSettings;

    .line 358
    .local v4, vs:Landroid/app/VibratorSettings;
    invoke-virtual {v4, p1, p2}, Landroid/app/VibratorSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_f1

    .line 360
    .end local v4           #vs:Landroid/app/VibratorSettings;
    :cond_101
    const-string v5, "</profile>\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/app/Profile;->mDirty:Z

    .line 362
    return-void
.end method

.method public isConditionalType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 256
    iget v1, p0, Landroid/app/Profile;->mProfileType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDirty()Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 292
    iget-boolean v6, p0, Landroid/app/Profile;->mDirty:Z

    if-eqz v6, :cond_6

    .line 315
    :goto_5
    return v5

    .line 295
    :cond_6
    iget-object v6, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfileGroup;

    .line 296
    .local v1, group:Landroid/app/ProfileGroup;
    invoke-virtual {v1}, Landroid/app/ProfileGroup;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_5

    .line 300
    .end local v1           #group:Landroid/app/ProfileGroup;
    :cond_23
    iget-object v6, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .line 301
    .local v3, stream:Landroid/app/StreamSettings;
    invoke-virtual {v3}, Landroid/app/StreamSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_2d

    goto :goto_5

    .line 305
    .end local v3           #stream:Landroid/app/StreamSettings;
    :cond_40
    iget-object v6, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    .line 306
    .local v0, conn:Landroid/app/ConnectionSettings;
    invoke-virtual {v0}, Landroid/app/ConnectionSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_4a

    goto :goto_5

    .line 310
    .end local v0           #conn:Landroid/app/ConnectionSettings;
    :cond_5d
    iget-object v6, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/VibratorSettings;

    .line 311
    .local v4, vibrator:Landroid/app/VibratorSettings;
    invoke-virtual {v4}, Landroid/app/VibratorSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_67

    goto :goto_5

    .line 315
    .end local v4           #vibrator:Landroid/app/VibratorSettings;
    :cond_7a
    const/4 v5, 0x0

    goto :goto_5
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 15
    .parameter "in"

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Landroid/app/Profile;->mNameResId:I

    .line 193
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    invoke-virtual {v9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    iput-object v9, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v10, :cond_55

    move v9, v10

    :goto_24
    iput-boolean v9, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Landroid/app/Profile;->mProfileType:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v10, :cond_57

    :goto_32
    iput-boolean v10, p0, Landroid/app/Profile;->mDirty:Z

    .line 197
    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3a
    if-ge v4, v5, :cond_59

    aget-object v2, v0, v4

    .local v2, group:Landroid/os/Parcelable;
    move-object v3, v2

    .line 198
    check-cast v3, Landroid/app/ProfileGroup;

    .line 199
    .local v3, grp:Landroid/app/ProfileGroup;
    iget-object v9, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v3}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v9

    if-eqz v9, :cond_52

    .line 201
    iput-object v3, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    .line 197
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .end local v0           #arr$:[Landroid/os/Parcelable;
    .end local v2           #group:Landroid/os/Parcelable;
    .end local v3           #grp:Landroid/app/ProfileGroup;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_55
    move v9, v11

    .line 194
    goto :goto_24

    :cond_57
    move v10, v11

    .line 196
    goto :goto_32

    .line 204
    .restart local v0       #arr$:[Landroid/os/Parcelable;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_59
    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_5f
    if-ge v4, v5, :cond_76

    aget-object v6, v0, v4

    .local v6, parcel:Landroid/os/Parcelable;
    move-object v7, v6

    .line 205
    check-cast v7, Landroid/app/StreamSettings;

    .line 206
    .local v7, stream:Landroid/app/StreamSettings;
    iget-object v9, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    .line 208
    .end local v6           #parcel:Landroid/os/Parcelable;
    .end local v7           #stream:Landroid/app/StreamSettings;
    :cond_76
    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_7c
    if-ge v4, v5, :cond_93

    aget-object v6, v0, v4

    .restart local v6       #parcel:Landroid/os/Parcelable;
    move-object v1, v6

    .line 209
    check-cast v1, Landroid/app/ConnectionSettings;

    .line 210
    .local v1, connection:Landroid/app/ConnectionSettings;
    iget-object v9, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    .line 212
    .end local v1           #connection:Landroid/app/ConnectionSettings;
    .end local v6           #parcel:Landroid/os/Parcelable;
    :cond_93
    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_99
    if-ge v4, v5, :cond_b0

    aget-object v6, v0, v4

    .restart local v6       #parcel:Landroid/os/Parcelable;
    move-object v8, v6

    .line 213
    check-cast v8, Landroid/app/VibratorSettings;

    .line 214
    .local v8, vibrator:Landroid/app/VibratorSettings;
    iget-object v9, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-virtual {v8}, Landroid/app/VibratorSettings;->getVibratorId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_99

    .line 216
    .end local v6           #parcel:Landroid/os/Parcelable;
    .end local v8           #vibrator:Landroid/app/VibratorSettings;
    :cond_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Landroid/app/Profile;->mAirplaneMode:I

    .line 218
    return-void
.end method

.method public removeProfileGroup(Ljava/util/UUID;)V
    .registers 5
    .parameter "uuid"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup;

    invoke-virtual {v0}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-nez v0, :cond_14

    .line 145
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :goto_13
    return-void

    .line 147
    :cond_14
    const-string v0, "Profile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove default group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public setAirplaneMode(I)V
    .registers 3
    .parameter "airplaneMode"

    .prologue
    .line 282
    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_c

    .line 283
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Profile;->mAirplaneMode:I

    .line 287
    :goto_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 288
    return-void

    .line 285
    :cond_c
    iput p1, p0, Landroid/app/Profile;->mAirplaneMode:I

    goto :goto_8
.end method

.method public setConditionalType()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 260
    iput v0, p0, Landroid/app/Profile;->mProfileType:I

    .line 261
    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 262
    return-void
.end method

.method public setConnectionSettings(Landroid/app/ConnectionSettings;)V
    .registers 4
    .parameter "descriptor"

    .prologue
    .line 521
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 226
    iput-object p1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Profile;->mNameResId:I

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 229
    return-void
.end method

.method public setProfileType(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 237
    iput p1, p0, Landroid/app/Profile;->mProfileType:I

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 239
    return-void
.end method

.method public setScreenLockMode(I)V
    .registers 3
    .parameter "screenLockMode"

    .prologue
    .line 269
    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_c

    .line 270
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 274
    :goto_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 275
    return-void

    .line 272
    :cond_c
    iput p1, p0, Landroid/app/Profile;->mScreenLockMode:I

    goto :goto_8
.end method

.method public setStatusBarIndicator(Z)V
    .registers 3
    .parameter "newStatusBarIndicator"

    .prologue
    .line 251
    iput-boolean p1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 253
    return-void
.end method

.method public setStreamSettings(Landroid/app/StreamSettings;)V
    .registers 4
    .parameter "descriptor"

    .prologue
    .line 489
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 491
    return-void
.end method

.method public setVibratorSettings(Landroid/app/VibratorSettings;)V
    .registers 4
    .parameter "descriptor"

    .prologue
    .line 505
    iget-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/VibratorSettings;->getVibratorId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 507
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget v0, p0, Landroid/app/Profile;->mNameResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v3, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, p1, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 175
    iget-boolean v0, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    if-eqz v0, :cond_91

    move v0, v1

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Landroid/app/Profile;->mProfileType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    if-eqz v0, :cond_93

    :goto_27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Parcelable;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 180
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Parcelable;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 182
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Parcelable;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 184
    iget-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Parcelable;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 185
    iget v0, p0, Landroid/app/Profile;->mScreenLockMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Landroid/app/Profile;->mAirplaneMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    return-void

    :cond_91
    move v0, v2

    .line 175
    goto :goto_1b

    :cond_93
    move v1, v2

    .line 177
    goto :goto_27
.end method
