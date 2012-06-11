.class public final Landroid/app/VibratorSettings;
.super Ljava/lang/Object;
.source "VibratorSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/VibratorSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x2

.field public static final SILENT:I = 0x1


# instance fields
.field private mDirty:Z

.field private mOverride:Z

.field private mValue:I

.field private mVibratorId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Landroid/app/VibratorSettings$1;

    invoke-direct {v0}, Landroid/app/VibratorSettings$1;-><init>()V

    sput-object v0, Landroid/app/VibratorSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "vibratorId"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v0}, Landroid/app/VibratorSettings;-><init>(IIZ)V

    .line 45
    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 5
    .parameter "vibratorId"
    .parameter "value"
    .parameter "override"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroid/app/VibratorSettings;->mVibratorId:I

    .line 49
    iput p2, p0, Landroid/app/VibratorSettings;->mValue:I

    .line 50
    iput-boolean p3, p0, Landroid/app/VibratorSettings;->mOverride:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/VibratorSettings;->mDirty:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "parcel"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/VibratorSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/VibratorSettings;
    .registers 7
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 85
    .local v0, event:I
    new-instance v2, Landroid/app/VibratorSettings;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/app/VibratorSettings;-><init>(I)V

    .line 86
    .local v2, vibratorDescriptor:Landroid/app/VibratorSettings;
    :goto_a
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1a

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "vibratorDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 87
    :cond_1a
    const/4 v3, 0x2

    if-ne v0, v3, :cond_34

    .line 88
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, name:Ljava/lang/String;
    const-string/jumbo v3, "vibratorId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 90
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/app/VibratorSettings;->mVibratorId:I

    .line 97
    .end local v1           #name:Ljava/lang/String;
    :cond_34
    :goto_34
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_a

    .line 91
    .restart local v1       #name:Ljava/lang/String;
    :cond_39
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 92
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/app/VibratorSettings;->mValue:I

    goto :goto_34

    .line 93
    :cond_4d
    const-string/jumbo v3, "override"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 94
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/app/VibratorSettings;->mOverride:Z

    goto :goto_34

    .line 99
    .end local v1           #name:Ljava/lang/String;
    :cond_61
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Landroid/app/VibratorSettings;->mValue:I

    return v0
.end method

.method public getVibratorId()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Landroid/app/VibratorSettings;->mVibratorId:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .registers 4
    .parameter "builder"
    .parameter "context"

    .prologue
    .line 104
    const-string v0, "<vibratorDescriptor>\n<vibratorId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v0, p0, Landroid/app/VibratorSettings;->mVibratorId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v0, "</vibratorId>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v0, p0, Landroid/app/VibratorSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-boolean v0, p0, Landroid/app/VibratorSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    const-string v0, "</override>\n</vibratorDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/VibratorSettings;->mDirty:Z

    .line 112
    return-void
.end method

.method public isDirty()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/app/VibratorSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/app/VibratorSettings;->mOverride:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 138
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 139
    .local v0, amgr:Landroid/media/AudioManager;
    iget v1, p0, Landroid/app/VibratorSettings;->mValue:I

    packed-switch v1, :pswitch_data_22

    .line 146
    :goto_d
    iget v1, p0, Landroid/app/VibratorSettings;->mVibratorId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 149
    :goto_13
    return-void

    .line 141
    :pswitch_14
    iget v1, p0, Landroid/app/VibratorSettings;->mVibratorId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_13

    .line 144
    :pswitch_1b
    iget v1, p0, Landroid/app/VibratorSettings;->mVibratorId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_d

    .line 139
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_14
        :pswitch_1b
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/VibratorSettings;->mVibratorId:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Landroid/app/VibratorSettings;->mOverride:Z

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/VibratorSettings;->mValue:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    :goto_1d
    iput-boolean v1, p0, Landroid/app/VibratorSettings;->mDirty:Z

    .line 134
    return-void

    :cond_20
    move v0, v2

    .line 131
    goto :goto_f

    :cond_22
    move v1, v2

    .line 133
    goto :goto_1d
.end method

.method public setOverride(Z)V
    .registers 3
    .parameter "override"

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/app/VibratorSettings;->mOverride:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/VibratorSettings;->mDirty:Z

    .line 70
    return-void
.end method

.method public setValue(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 63
    iput p1, p0, Landroid/app/VibratorSettings;->mValue:I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/VibratorSettings;->mDirty:Z

    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    iget v0, p0, Landroid/app/VibratorSettings;->mVibratorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-boolean v0, p0, Landroid/app/VibratorSettings;->mOverride:Z

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/app/VibratorSettings;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-boolean v0, p0, Landroid/app/VibratorSettings;->mDirty:Z

    if-eqz v0, :cond_1e

    :goto_18
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return-void

    :cond_1c
    move v0, v2

    .line 123
    goto :goto_c

    :cond_1e
    move v1, v2

    .line 125
    goto :goto_18
.end method
