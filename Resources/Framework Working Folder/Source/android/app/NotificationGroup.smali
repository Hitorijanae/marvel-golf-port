.class public Landroid/app/NotificationGroup;
.super Ljava/lang/Object;
.source "NotificationGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/NotificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NotificationGroup"


# instance fields
.field private mDirty:Z

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Landroid/app/NotificationGroup$1;

    invoke-direct {v0}, Landroid/app/NotificationGroup$1;-><init>()V

    sput-object v0, Landroid/app/NotificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationGroup;->mPackages:Ljava/util/Set;

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/NotificationGroup;->readFromParcel(Landroid/os/Parcel;)V

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/NotificationGroup$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/app/NotificationGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 61
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/app/NotificationGroup;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/UUID;)V
    .registers 5
    .parameter "name"
    .parameter "nameResId"
    .parameter "uuid"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationGroup;->mPackages:Ljava/util/Set;

    .line 65
    iput-object p1, p0, Landroid/app/NotificationGroup;->mName:Ljava/lang/String;

    .line 66
    iput p2, p0, Landroid/app/NotificationGroup;->mNameResId:I

    .line 67
    if-eqz p3, :cond_19

    move-object v0, p3

    :goto_11
    iput-object v0, p0, Landroid/app/NotificationGroup;->mUuid:Ljava/util/UUID;

    .line 68
    if-nez p3, :cond_1e

    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, Landroid/app/NotificationGroup;->mDirty:Z

    .line 69
    return-void

    .line 67
    :cond_19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    goto :goto_11

    .line 68
    :cond_1e
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/NotificationGroup;
    .registers 14
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 159
    const-string/jumbo v8, "nameres"

    invoke-interface {p0, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, value:Ljava/lang/String;
    const/4 v3, -0x1

    .line 161
    .local v3, nameResId:I
    const/4 v2, 0x0

    .line 162
    .local v2, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 164
    .local v6, uuid:Ljava/util/UUID;
    if-eqz v7, :cond_24

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "string"

    const-string v10, "android"

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 166
    if-lez v3, :cond_24

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    :cond_24
    if-nez v2, :cond_2d

    .line 172
    const-string/jumbo v8, "name"

    invoke-interface {p0, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    :cond_2d
    const-string/jumbo v8, "uuid"

    invoke-interface {p0, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 176
    if-eqz v7, :cond_3a

    .line 178
    :try_start_36
    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_39} :catch_6f

    move-result-object v6

    .line 184
    :cond_3a
    :goto_3a
    new-instance v4, Landroid/app/NotificationGroup;

    invoke-direct {v4, v2, v3, v6}, Landroid/app/NotificationGroup;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .line 185
    .local v4, notificationGroup:Landroid/app/NotificationGroup;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 186
    .local v1, event:I
    :goto_43
    const/4 v8, 0x3

    if-ne v1, v8, :cond_53

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "notificationGroup"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8f

    .line 187
    :cond_53
    const/4 v8, 0x2

    if-ne v1, v8, :cond_6a

    .line 188
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "package"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 189
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, pkg:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/app/NotificationGroup;->addPackage(Ljava/lang/String;)V

    .line 193
    .end local v5           #pkg:Ljava/lang/String;
    :cond_6a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_43

    .line 179
    .end local v1           #event:I
    .end local v4           #notificationGroup:Landroid/app/NotificationGroup;
    :catch_6f
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "NotificationGroup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UUID not recognized for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", using new one."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 197
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #event:I
    .restart local v4       #notificationGroup:Landroid/app/NotificationGroup;
    :cond_8f
    const/4 v8, 0x0

    iput-boolean v8, v4, Landroid/app/NotificationGroup;->mDirty:Z

    .line 199
    return-object v4
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .registers 3
    .parameter "pkg"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/app/NotificationGroup;->mPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NotificationGroup;->mDirty:Z

    .line 97
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Landroid/app/NotificationGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackages()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Landroid/app/NotificationGroup;->mPackages:Ljava/util/Set;

    iget-object v1, p0, Landroid/app/NotificationGroup;->mPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/app/NotificationGroup;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .registers 7
    .parameter "builder"
    .parameter "context"

    .prologue
    .line 139
    const-string v2, "<notificationGroup "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget v2, p0, Landroid/app/NotificationGroup;->mNameResId:I

    if-lez v2, :cond_68

    .line 141
    const-string/jumbo v2, "nameres=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroid/app/NotificationGroup;->mNameResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :goto_1c
    const-string v2, "\" uuid=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v2, "\">\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v2, p0, Landroid/app/NotificationGroup;->mPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, pkg:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<package>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</package>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 144
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pkg:Ljava/lang/String;
    :cond_68
    const-string/jumbo v2, "name=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 153
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_7a
    const-string v2, "</notificationGroup>\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/NotificationGroup;->mDirty:Z

    .line 155
    return-void
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .registers 3
    .parameter "pkg"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/app/NotificationGroup;->mPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDirty()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/app/NotificationGroup;->mDirty:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationGroup;->mName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationGroup;->mNameResId:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, Landroid/app/NotificationGroup;->mDirty:Z

    .line 134
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationGroup;->mUuid:Ljava/util/UUID;

    .line 135
    iget-object v0, p0, Landroid/app/NotificationGroup;->mPackages:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 136
    return-void

    .line 133
    :cond_31
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 3
    .parameter "pkg"

    .prologue
    .line 104
    iget-object v0, p0, Landroid/app/NotificationGroup;->mPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NotificationGroup;->mDirty:Z

    .line 106
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 85
    iput-object p1, p0, Landroid/app/NotificationGroup;->mName:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/NotificationGroup;->mNameResId:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NotificationGroup;->mDirty:Z

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Landroid/app/NotificationGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Landroid/app/NotificationGroup;->mNameResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-boolean v0, p0, Landroid/app/NotificationGroup;->mDirty:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v2, p0, Landroid/app/NotificationGroup;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    invoke-virtual {p0}, Landroid/app/NotificationGroup;->getPackages()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 128
    return-void

    :cond_25
    move v0, v1

    .line 125
    goto :goto_10
.end method
