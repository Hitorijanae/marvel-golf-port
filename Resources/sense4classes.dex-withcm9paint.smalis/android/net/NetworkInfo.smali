.class public Landroid/net/NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/net/HtcIfNetworkInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkInfo$2;,
        Landroid/net/NetworkInfo$DetailedState;,
        Landroid/net/NetworkInfo$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDetailedState:Landroid/net/NetworkInfo$DetailedState;

.field private mExtraInfo:Ljava/lang/String;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsAvailable:Z

.field private mIsFailover:Z

.field private mIsIpV4Connected:Z

.field private mIsIpV6Connected:Z

.field private mIsRoaming:Z

.field private mNetworkType:I

.field private mNetworkTypeExt:I

.field private mReason:Ljava/lang/String;

.field private mState:Landroid/net/NetworkInfo$State;

.field private mSubtype:I

.field private mSubtypeName:Ljava/lang/String;

.field private mTypeName:Ljava/lang/String;

.field private mTypeNameExt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 94
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    .line 98
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    new-instance v0, Landroid/net/NetworkInfo$1;

    invoke-direct {v0}, Landroid/net/NetworkInfo$1;-><init>()V

    sput-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "type"
    .parameter "subtype"
    .parameter "typeExt"
    .parameter "typeName"
    .parameter "subtypeName"
    .parameter "typeNameExt"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {p3}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ext network type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_22
    iput p3, p0, Landroid/net/NetworkInfo;->mNetworkTypeExt:I

    .line 180
    iput-object p6, p0, Landroid/net/NetworkInfo;->mTypeNameExt:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "type"
    .parameter "subtype"
    .parameter "typeName"
    .parameter "subtypeName"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_24
    iput p1, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    .line 153
    iput p2, p0, Landroid/net/NetworkInfo;->mSubtype:I

    .line 154
    iput-object p3, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    .line 162
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    .line 165
    iput-boolean v2, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    .line 166
    iput-boolean v2, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    .line 168
    iput p1, p0, Landroid/net/NetworkInfo;->mNetworkTypeExt:I

    .line 169
    iput-object p3, p0, Landroid/net/NetworkInfo;->mTypeNameExt:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    if-eqz p1, :cond_45

    .line 187
    iget v0, p1, Landroid/net/NetworkInfo;->mNetworkType:I

    iput v0, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    .line 188
    iget v0, p1, Landroid/net/NetworkInfo;->mSubtype:I

    iput v0, p0, Landroid/net/NetworkInfo;->mSubtype:I

    .line 189
    iget-object v0, p1, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    .line 190
    iget-object v0, p1, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    .line 191
    iget-object v0, p1, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    .line 192
    iget-object v0, p1, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    .line 193
    iget-object v0, p1, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    .line 194
    iget-object v0, p1, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    .line 195
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsFailover:Z

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    .line 196
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsRoaming:Z

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    .line 197
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsAvailable:Z

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    .line 199
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    .line 200
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    .line 201
    iget-object v0, p1, Landroid/net/NetworkInfo;->mInterfaceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mInterfaceName:Ljava/lang/String;

    .line 204
    iget v0, p1, Landroid/net/NetworkInfo;->mNetworkTypeExt:I

    iput v0, p0, Landroid/net/NetworkInfo;->mNetworkTypeExt:I

    .line 205
    iget-object v0, p1, Landroid/net/NetworkInfo;->mTypeNameExt:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mTypeNameExt:Ljava/lang/String;

    .line 208
    :cond_45
    return-void
.end method

.method static synthetic access$000(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo$DetailedState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Landroid/net/NetworkInfo;->mInterfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    return-object p1
.end method

.method static synthetic access$200()Ljava/util/EnumMap;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/NetworkInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    return p1
.end method

.method static synthetic access$402(Landroid/net/NetworkInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    return p1
.end method

.method static synthetic access$502(Landroid/net/NetworkInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    return p1
.end method

.method static synthetic access$602(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Landroid/net/NetworkInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    return p1
.end method

.method static synthetic access$902(Landroid/net/NetworkInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .registers 2

    .prologue
    .line 437
    monitor-enter p0

    .line 438
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    monitor-exit p0

    return-object v0

    .line 439
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 509
    monitor-enter p0

    .line 510
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 511
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getInterface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 678
    monitor-enter p0

    .line 679
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mInterfaceName:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 680
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 497
    monitor-enter p0

    .line 498
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 499
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getState()Landroid/net/NetworkInfo$State;
    .registers 2

    .prologue
    .line 427
    monitor-enter p0

    .line 428
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    monitor-exit p0

    return-object v0

    .line 429
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getSubtype()I
    .registers 2

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    :try_start_1
    iget v0, p0, Landroid/net/NetworkInfo;->mSubtype:I

    monitor-exit p0

    return v0

    .line 229
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getSubtypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    monitor-enter p0

    .line 271
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 272
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 216
    monitor-enter p0

    .line 217
    :try_start_1
    iget v0, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    monitor-exit p0

    return v0

    .line 218
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getTypeExt()I
    .registers 2

    .prologue
    .line 241
    monitor-enter p0

    .line 242
    :try_start_1
    iget v0, p0, Landroid/net/NetworkInfo;->mNetworkTypeExt:I

    monitor-exit p0

    return v0

    .line 243
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    monitor-enter p0

    .line 261
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 262
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getTypeNameExt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    monitor-enter p0

    .line 285
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mTypeNameExt:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 286
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public htcStateUpdate(IILjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;
    .registers 7
    .parameter "networkType"
    .parameter "subType"
    .parameter "typeName"
    .parameter "subtypeName"

    .prologue
    .line 687
    monitor-enter p0

    .line 688
    :try_start_1
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 689
    .local v0, netInfo:Landroid/net/NetworkInfo;
    iput p1, v0, Landroid/net/NetworkInfo;->mNetworkType:I

    .line 690
    iput p2, v0, Landroid/net/NetworkInfo;->mSubtype:I

    .line 691
    iput-object p3, v0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    .line 692
    iput-object p4, v0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    .line 693
    monitor-exit p0

    return-object v0

    .line 694
    .end local v0           #netInfo:Landroid/net/NetworkInfo;
    :catchall_10
    move-exception v1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 362
    monitor-enter p0

    .line 363
    :try_start_1
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    monitor-exit p0

    return v0

    .line 364
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isConnected()Z
    .registers 3

    .prologue
    .line 310
    monitor-enter p0

    .line 311
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 312
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public isConnectedOrConnecting()Z
    .registers 3

    .prologue
    .line 299
    monitor-enter p0

    .line 300
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_10

    :cond_d
    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 301
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public isFailover()Z
    .registers 2

    .prologue
    .line 387
    monitor-enter p0

    .line 388
    :try_start_1
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    monitor-exit p0

    return v0

    .line 389
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isIpv4Connected()Z
    .registers 2

    .prologue
    .line 324
    monitor-enter p0

    .line 325
    :try_start_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 326
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    monitor-exit p0

    .line 328
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_a

    .line 329
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public isIpv6Connected()Z
    .registers 2

    .prologue
    .line 340
    monitor-enter p0

    .line 341
    :try_start_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 342
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    monitor-exit p0

    .line 344
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_a

    .line 345
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public isRoaming()Z
    .registers 2

    .prologue
    .line 411
    monitor-enter p0

    .line 412
    :try_start_1
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    monitor-exit p0

    return v0

    .line 413
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "detailedState"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 452
    monitor-enter p0

    .line 453
    :try_start_1
    iput-object p1, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    .line 454
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    .line 456
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1f

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    .line 464
    :goto_19
    iput-object p2, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    .line 465
    iput-object p3, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    .line 466
    monitor-exit p0

    .line 467
    return-void

    .line 460
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    goto :goto_19

    .line 466
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method

.method setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "detailedState"
    .parameter "isIpv4Connected"
    .parameter "isIpv6Connected"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 475
    monitor-enter p0

    .line 476
    :try_start_1
    iput-object p1, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    .line 477
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    .line 478
    iput-object p4, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    .line 479
    iput-object p5, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1f

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    .line 487
    :goto_1d
    monitor-exit p0

    .line 488
    return-void

    .line 484
    :cond_1f
    iput-boolean p2, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    .line 485
    iput-boolean p3, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    goto :goto_1d

    .line 487
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public setFailover(Z)V
    .registers 3
    .parameter "isFailover"

    .prologue
    .line 399
    monitor-enter p0

    .line 400
    :try_start_1
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    .line 401
    monitor-exit p0

    .line 402
    return-void

    .line 401
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setInterface(Ljava/lang/String;)V
    .registers 3
    .parameter "interfaceName"

    .prologue
    .line 669
    monitor-enter p0

    .line 670
    :try_start_1
    iput-object p1, p0, Landroid/net/NetworkInfo;->mInterfaceName:Ljava/lang/String;

    .line 671
    monitor-exit p0

    .line 672
    return-void

    .line 671
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setIsAvailable(Z)V
    .registers 3
    .parameter "isAvailable"

    .prologue
    .line 374
    monitor-enter p0

    .line 375
    :try_start_1
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    .line 376
    monitor-exit p0

    .line 377
    return-void

    .line 376
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setRoaming(Z)V
    .registers 3
    .parameter "isRoaming"

    .prologue
    .line 417
    monitor-enter p0

    .line 418
    :try_start_1
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    .line 419
    monitor-exit p0

    .line 420
    return-void

    .line 419
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setSubtype(ILjava/lang/String;)V
    .registers 4
    .parameter "subtype"
    .parameter "subtypeName"

    .prologue
    .line 248
    monitor-enter p0

    .line 249
    :try_start_1
    iput p1, p0, Landroid/net/NetworkInfo;->mSubtype:I

    .line 250
    iput-object p2, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    .line 251
    monitor-exit p0

    .line 252
    return-void

    .line 251
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 516
    monitor-enter p0

    .line 517
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type_ext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeNameExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    if-nez v1, :cond_bb

    const-string v1, "(unspecified)"

    :goto_57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    if-nez v1, :cond_be

    const-string v1, "(none)"

    :goto_67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", roaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isIpv4Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isIpv6Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 537
    iget-object v1, p0, Landroid/net/NetworkInfo;->mInterfaceName:Ljava/lang/String;

    if-eqz v1, :cond_b5

    .line 538
    const-string v1, ", if: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :cond_b5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 518
    :cond_bb
    iget-object v1, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    goto :goto_57

    :cond_be
    iget-object v1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    goto :goto_67

    .line 542
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :catchall_c1
    move-exception v1

    monitor-exit p0
    :try_end_c3
    .catchall {:try_start_1 .. :try_end_c3} :catchall_c1

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 558
    monitor-enter p0

    .line 559
    :try_start_3
    iget v2, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget v2, p0, Landroid/net/NetworkInfo;->mSubtype:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget v2, p0, Landroid/net/NetworkInfo;->mNetworkTypeExt:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget-object v2, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    iget-object v2, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget-object v2, p0, Landroid/net/NetworkInfo;->mTypeNameExt:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    iget-object v2, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 571
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    if-eqz v2, :cond_6b

    move v2, v0

    :goto_38
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    if-eqz v2, :cond_6d

    move v2, v0

    :goto_40
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    if-eqz v2, :cond_6f

    move v2, v0

    :goto_48
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    iget-object v2, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 575
    iget-object v2, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    if-eqz v2, :cond_71

    move v2, v0

    :goto_5a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    if-eqz v2, :cond_73

    :goto_61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget-object v0, p0, Landroid/net/NetworkInfo;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 582
    monitor-exit p0

    .line 583
    return-void

    :cond_6b
    move v2, v1

    .line 571
    goto :goto_38

    :cond_6d
    move v2, v1

    .line 572
    goto :goto_40

    :cond_6f
    move v2, v1

    .line 573
    goto :goto_48

    :cond_71
    move v2, v1

    .line 578
    goto :goto_5a

    :cond_73
    move v0, v1

    .line 579
    goto :goto_61

    .line 582
    :catchall_75
    move-exception v0

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_75

    throw v0
.end method
