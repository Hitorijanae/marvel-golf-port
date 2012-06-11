.class public final Landroid/app/ConnectionSettings;
.super Ljava/lang/Object;
.source "ConnectionSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROFILE_CONNECTION_BLUETOOTH:I = 0x7

.field public static final PROFILE_CONNECTION_GPS:I = 0x4

.field public static final PROFILE_CONNECTION_MOBILEDATA:I = 0x0

.field public static final PROFILE_CONNECTION_SYNC:I = 0x5

.field public static final PROFILE_CONNECTION_WIFI:I = 0x1

.field public static final PROFILE_CONNECTION_WIFIAP:I = 0x2

.field public static final PROFILE_CONNECTION_WIMAX:I = 0x3


# instance fields
.field private mConnectionId:I

.field private mDirty:Z

.field private mOverride:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Landroid/app/ConnectionSettings$1;

    invoke-direct {v0}, Landroid/app/ConnectionSettings$1;-><init>()V

    sput-object v0, Landroid/app/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "connectionId"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v0}, Landroid/app/ConnectionSettings;-><init>(IIZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 5
    .parameter "connectionId"
    .parameter "value"
    .parameter "override"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    .line 58
    iput p2, p0, Landroid/app/ConnectionSettings;->mValue:I

    .line 59
    iput-boolean p3, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "parcel"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/ConnectionSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 50
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ConnectionSettings;
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
    .line 164
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 165
    .local v1, event:I
    new-instance v0, Landroid/app/ConnectionSettings;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/app/ConnectionSettings;-><init>(I)V

    .line 166
    .local v0, connectionDescriptor:Landroid/app/ConnectionSettings;
    :goto_a
    const/4 v3, 0x3

    if-ne v1, v3, :cond_19

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "connectionDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 167
    :cond_19
    const/4 v3, 0x2

    if-ne v1, v3, :cond_32

    .line 168
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, name:Ljava/lang/String;
    const-string v3, "connectionId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 170
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/app/ConnectionSettings;->mConnectionId:I

    .line 177
    .end local v2           #name:Ljava/lang/String;
    :cond_32
    :goto_32
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_a

    .line 171
    .restart local v2       #name:Ljava/lang/String;
    :cond_37
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 172
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/app/ConnectionSettings;->mValue:I

    goto :goto_32

    .line 173
    :cond_4b
    const-string/jumbo v3, "override"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 174
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/ConnectionSettings;->mOverride:Z

    goto :goto_32

    .line 179
    .end local v2           #name:Ljava/lang/String;
    :cond_5f
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionId()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Landroid/app/ConnectionSettings;->mValue:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .registers 4
    .parameter "builder"
    .parameter "context"

    .prologue
    .line 184
    const-string v0, "<connectionDescriptor>\n<connectionId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget v0, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    const-string v0, "</connectionId>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget v0, p0, Landroid/app/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    const-string v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 190
    const-string v0, "</override>\n</connectionDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    return-void
.end method

.method public isDirty()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 91
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 92
    .local v0, bta:Landroid/bluetooth/BluetoothAdapter;
    const-string v9, "location"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 93
    .local v4, lm:Landroid/location/LocationManager;
    const-string/jumbo v9, "wifi"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 94
    .local v7, wm:Landroid/net/wifi/WifiManager;
    const-string v9, "connectivity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 96
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {p0}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v9

    if-ne v9, v3, :cond_2e

    .line 99
    .local v3, forcedState:Z
    :goto_26
    invoke-virtual {p0}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v9

    packed-switch v9, :pswitch_data_ae

    .line 159
    :cond_2d
    :goto_2d
    :pswitch_2d
    return-void

    .end local v3           #forcedState:Z
    :cond_2e
    move v3, v8

    .line 96
    goto :goto_26

    .line 101
    .restart local v3       #forcedState:Z
    :pswitch_30
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    .line 102
    .local v2, currentState:Z
    if-eq v3, v2, :cond_2d

    .line 103
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_2d

    .line 107
    .end local v2           #currentState:Z
    :pswitch_3a
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    .line 108
    .restart local v2       #currentState:Z
    if-eqz v3, :cond_46

    if-nez v2, :cond_46

    .line 109
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_2d

    .line 110
    :cond_46
    if-nez v3, :cond_2d

    if-eqz v2, :cond_2d

    .line 111
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_2d

    .line 115
    .end local v2           #currentState:Z
    :pswitch_4e
    const-string v8, "gps"

    invoke-virtual {v4, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 116
    .restart local v2       #currentState:Z
    if-eq v2, v3, :cond_2d

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "gps"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_2d

    .line 122
    .end local v2           #currentState:Z
    :pswitch_60
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    .line 123
    .restart local v2       #currentState:Z
    if-eq v3, v2, :cond_2d

    .line 124
    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_2d

    .line 128
    .end local v2           #currentState:Z
    :pswitch_6a
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    .line 129
    .local v5, wifiApState:I
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 130
    .restart local v2       #currentState:Z
    if-eq v2, v3, :cond_2d

    .line 132
    if-eqz v3, :cond_7a

    const/16 v9, 0xc

    if-eq v5, v9, :cond_7e

    :cond_7a
    const/16 v9, 0xd

    if-ne v5, v9, :cond_81

    .line 134
    :cond_7e
    invoke-virtual {v7, v10, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 136
    :cond_81
    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_2d

    .line 140
    .end local v2           #currentState:Z
    .end local v5           #wifiApState:I
    :pswitch_85
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    .line 141
    .local v6, wifiState:I
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    .line 142
    .restart local v2       #currentState:Z
    if-eq v2, v3, :cond_2d

    .line 144
    if-eqz v3, :cond_94

    const/4 v9, 0x2

    if-eq v6, v9, :cond_97

    :cond_94
    const/4 v9, 0x3

    if-ne v6, v9, :cond_9a

    .line 145
    :cond_97
    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 147
    :cond_9a
    invoke-virtual {v7, v10, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_2d

    .line 151
    .end local v2           #currentState:Z
    .end local v6           #wifiState:I
    :pswitch_9e
    invoke-static {p1}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 152
    invoke-static {p1}, Landroid/net/wimax/WimaxHelper;->isWimaxEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 153
    .restart local v2       #currentState:Z
    if-eq v2, v3, :cond_2d

    .line 154
    invoke-static {p1, v3}, Landroid/net/wimax/WimaxHelper;->setWimaxEnabled(Landroid/content/Context;Z)Z

    goto :goto_2d

    .line 99
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_30
        :pswitch_6a
        :pswitch_85
        :pswitch_9e
        :pswitch_4e
        :pswitch_60
        :pswitch_2d
        :pswitch_3a
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ConnectionSettings;->mValue:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    :goto_1d
    iput-boolean v1, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    .line 213
    return-void

    :cond_20
    move v0, v2

    .line 210
    goto :goto_f

    :cond_22
    move v1, v2

    .line 212
    goto :goto_1d
.end method

.method public setOverride(Z)V
    .registers 3
    .parameter "override"

    .prologue
    .line 77
    iput-boolean p1, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    .line 79
    return-void
.end method

.method public setValue(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 72
    iput p1, p0, Landroid/app/ConnectionSettings;->mValue:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    iget v0, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Landroid/app/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    if-eqz v0, :cond_1e

    :goto_18
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    return-void

    :cond_1c
    move v0, v2

    .line 202
    goto :goto_c

    :cond_1e
    move v1, v2

    .line 204
    goto :goto_18
.end method
