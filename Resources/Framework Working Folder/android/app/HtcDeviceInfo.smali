.class public final Landroid/app/HtcDeviceInfo;
.super Ljava/lang/Object;
.source "HtcDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/HtcDeviceInfo$ProcessInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/HtcDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfo"


# instance fields
.field public changeListNo:Ljava/lang/String;

.field public deviceAwakeTime:J

.field public deviceScreenOnTime:J

.field public deviceUseTime:J

.field public lastDeviceAliveUpdateTime:J

.field public lastDeviceAwakeUpdateTime:J

.field public lastDeviceScreenOnUpdateTime:J

.field public lastDeviceUseUpdateTime:J

.field public processInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/HtcDeviceInfo$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public simState:I

.field public totalDeviceAliveTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 230
    new-instance v0, Landroid/app/HtcDeviceInfo$1;

    invoke-direct {v0}, Landroid/app/HtcDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/app/HtcDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v1, -0x1

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/HtcDeviceInfo;->simState:I

    .line 25
    iput-wide v3, p0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    .line 26
    iput-wide v1, p0, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    .line 27
    iput-wide v3, p0, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    .line 28
    iput-wide v1, p0, Landroid/app/HtcDeviceInfo;->lastDeviceAwakeUpdateTime:J

    .line 29
    iput-wide v3, p0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 30
    iput-wide v1, p0, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    .line 31
    iput-wide v3, p0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    .line 32
    iput-wide v1, p0, Landroid/app/HtcDeviceInfo;->lastDeviceUseUpdateTime:J

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method public static deserializeFromFile(Ljava/lang/String;)Landroid/app/HtcDeviceInfo;
    .registers 7
    .parameter "path"

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 282
    .local v1, input:Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_18

    .line 283
    .end local v1           #input:Ljava/io/ObjectInputStream;
    .local v2, input:Ljava/io/ObjectInputStream;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/HtcDeviceInfo;
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_4c

    .line 287
    if-eqz v2, :cond_16

    .line 289
    :try_start_13
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_47

    :cond_16
    :goto_16
    move-object v1, v2

    .line 294
    .end local v2           #input:Ljava/io/ObjectInputStream;
    .restart local v1       #input:Ljava/io/ObjectInputStream;
    :goto_17
    return-object v3

    .line 284
    :catch_18
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/Exception;
    :goto_19
    :try_start_19
    const-string v3, "HtcDeviceInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deserialize failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_19 .. :try_end_35} :catchall_3c

    .line 287
    if-eqz v1, :cond_3a

    .line 289
    :try_start_37
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_45

    .line 294
    :cond_3a
    :goto_3a
    const/4 v3, 0x0

    goto :goto_17

    .line 287
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3c
    move-exception v3

    :goto_3d
    if-eqz v1, :cond_42

    .line 289
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    .line 287
    :cond_42
    :goto_42
    throw v3

    .line 290
    :catch_43
    move-exception v4

    goto :goto_42

    .restart local v0       #e:Ljava/lang/Exception;
    :catch_45
    move-exception v3

    goto :goto_3a

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #input:Ljava/io/ObjectInputStream;
    .restart local v2       #input:Ljava/io/ObjectInputStream;
    :catch_47
    move-exception v4

    goto :goto_16

    .line 287
    :catchall_49
    move-exception v3

    move-object v1, v2

    .end local v2           #input:Ljava/io/ObjectInputStream;
    .restart local v1       #input:Ljava/io/ObjectInputStream;
    goto :goto_3d

    .line 284
    .end local v1           #input:Ljava/io/ObjectInputStream;
    .restart local v2       #input:Ljava/io/ObjectInputStream;
    :catch_4c
    move-exception v0

    move-object v1, v2

    .end local v2           #input:Ljava/io/ObjectInputStream;
    .restart local v1       #input:Ljava/io/ObjectInputStream;
    goto :goto_19
.end method

.method private dumpToULog(Landroid/app/HtcDeviceInfo$ProcessInfo;)V
    .registers 7
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    .line 183
    iget v0, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    if-eq v0, v4, :cond_a

    iget v0, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_42

    .line 184
    :cond_a
    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_APP_ACTIVE_TIME:Lcom/htc/utils/ulog/ULogTags;

    iget-object v1, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget-wide v2, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_17
    :goto_17
    iget v0, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    if-ne v0, v4, :cond_2c

    iget v0, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    if-lez v0, :cond_2c

    .line 190
    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_CRASH_NUM:Lcom/htc/utils/ulog/ULogTags;

    iget-object v1, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_2c
    iget v0, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    if-ne v0, v4, :cond_41

    iget v0, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    if-lez v0, :cond_41

    .line 195
    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_ANR_NUM:Lcom/htc/utils/ulog/ULogTags;

    iget-object v1, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_41
    return-void

    .line 185
    :cond_42
    iget v0, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    if-nez v0, :cond_17

    .line 186
    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_MARKETAPP_ACTIVE_TIME:Lcom/htc/utils/ulog/ULogTags;

    iget-object v1, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget-wide v2, p1, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public static writeToParcel(Landroid/app/HtcDeviceInfo;Landroid/os/Parcel;)V
    .registers 3
    .parameter "deviceInfo"
    .parameter "out"

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/HtcDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 228
    return-void
.end method


# virtual methods
.method public add(Landroid/app/HtcDeviceInfo;)V
    .registers 10
    .parameter "diffInfo"

    .prologue
    .line 124
    if-nez p1, :cond_3

    .line 144
    :cond_2
    return-void

    .line 127
    :cond_3
    iget-wide v4, p0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    iget-wide v6, p1, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    .line 128
    iget-wide v4, p0, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    iget-wide v6, p1, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    .line 129
    iget-wide v4, p0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    iget-wide v6, p1, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 130
    iget-wide v4, p0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    iget-wide v6, p1, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    .line 132
    iget-object v4, p1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 133
    .local v3, infos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 134
    .local v2, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget-object v4, p0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    iget-object v5, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 135
    .local v0, currentProcressInfo:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-nez v0, :cond_4d

    .line 136
    iget-object v4, p0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    iget-object v5, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/app/HtcDeviceInfo$ProcessInfo;->clone()Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 138
    :cond_4d
    iget-wide v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    iget-wide v6, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 139
    iget v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    iget v5, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 140
    iget v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    iget v5, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    .line 141
    iget v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    iget v5, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    goto :goto_29
.end method

.method public clone()Landroid/app/HtcDeviceInfo;
    .registers 8

    .prologue
    .line 61
    new-instance v0, Landroid/app/HtcDeviceInfo;

    invoke-direct {v0}, Landroid/app/HtcDeviceInfo;-><init>()V

    .line 62
    .local v0, deviceInfo:Landroid/app/HtcDeviceInfo;
    iget-object v4, p0, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    iput-object v4, v0, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    .line 63
    iget v4, p0, Landroid/app/HtcDeviceInfo;->simState:I

    iput v4, v0, Landroid/app/HtcDeviceInfo;->simState:I

    .line 64
    iget-wide v4, p0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    iput-wide v4, v0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    .line 65
    iget-wide v4, p0, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    iput-wide v4, v0, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    .line 66
    iget-wide v4, p0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    iput-wide v4, v0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 67
    iget-wide v4, p0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    iput-wide v4, v0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    .line 68
    iget-object v4, p0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 69
    .local v3, infos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 70
    .local v2, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget-object v4, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    iget-object v5, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/app/HtcDeviceInfo$ProcessInfo;->clone()Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 72
    .end local v2           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :cond_3f
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;
    .registers 12
    .parameter "oldInfo"

    .prologue
    .line 86
    if-nez p1, :cond_7

    .line 87
    invoke-virtual {p0}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v0

    .line 120
    :cond_6
    return-object v0

    .line 89
    :cond_7
    new-instance v0, Landroid/app/HtcDeviceInfo;

    invoke-direct {v0}, Landroid/app/HtcDeviceInfo;-><init>()V

    .line 90
    .local v0, diffInfo:Landroid/app/HtcDeviceInfo;
    iget-object v6, p0, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    iput-object v6, v0, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    .line 91
    iget v6, p0, Landroid/app/HtcDeviceInfo;->simState:I

    iput v6, v0, Landroid/app/HtcDeviceInfo;->simState:I

    .line 92
    iget-wide v6, p0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    iget-wide v8, p1, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    sub-long/2addr v6, v8

    iput-wide v6, v0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    .line 93
    iget-wide v6, p0, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    iget-wide v8, p1, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    sub-long/2addr v6, v8

    iput-wide v6, v0, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    .line 94
    iget-wide v6, p0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    iget-wide v8, p1, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    sub-long/2addr v6, v8

    iput-wide v6, v0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 95
    iget-wide v6, p0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    iget-wide v8, p1, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    sub-long/2addr v6, v8

    iput-wide v6, v0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    .line 97
    iget-object v6, p0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 98
    .local v3, infos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 99
    .local v2, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget-object v6, p1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    iget-object v7, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 100
    .local v5, oldProcressInfo:Landroid/app/HtcDeviceInfo$ProcessInfo;
    const/4 v4, 0x0

    .line 101
    .local v4, newInfo:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-nez v5, :cond_5f

    .line 102
    invoke-virtual {v2}, Landroid/app/HtcDeviceInfo$ProcessInfo;->clone()Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-result-object v4

    .line 118
    :goto_57
    iget-object v6, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    iget-object v7, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 104
    :cond_5f
    iget-wide v6, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    iget-wide v8, v5, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7f

    iget v6, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    iget v7, v5, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    sub-int/2addr v6, v7

    if-nez v6, :cond_7f

    iget v6, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    iget v7, v5, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    sub-int/2addr v6, v7

    if-nez v6, :cond_7f

    iget v6, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    iget v7, v5, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    sub-int/2addr v6, v7

    if-eqz v6, :cond_3a

    .line 108
    :cond_7f
    new-instance v4, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .end local v4           #newInfo:Landroid/app/HtcDeviceInfo$ProcessInfo;
    invoke-direct {v4}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V

    .line 109
    .restart local v4       #newInfo:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget-object v6, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    iput-object v6, v4, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 110
    iget-wide v6, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    iget-wide v8, v5, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    sub-long/2addr v6, v8

    iput-wide v6, v4, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 111
    iget v6, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    iget v7, v5, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 112
    iget v6, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    iget v7, v5, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    .line 113
    iget v6, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    iput v6, v4, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 114
    iget v6, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    iget v7, v5, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    goto :goto_57
.end method

.method public flush(J)Z
    .registers 10
    .parameter "screenOffTimeOut"

    .prologue
    .line 148
    sget-object v3, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_CHANGE_LIST:Lcom/htc/utils/ulog/ULogTags;

    iget-object v4, p0, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 151
    sget-object v3, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SIM_STATE:Lcom/htc/utils/ulog/ULogTags;

    iget v4, p0, Landroid/app/HtcDeviceInfo;->simState:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 154
    sget-object v3, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_PROJECT_BRANCH:Lcom/htc/utils/ulog/ULogTags;

    const-string/jumbo v4, "ro.build.project"

    const-string/jumbo v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 155
    sget-object v3, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_DEVICE_ACTIVE_TIME:Lcom/htc/utils/ulog/ULogTags;

    const-string/jumbo v4, "ro.serialno"

    const-string/jumbo v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v3, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SCREEN_ON_TIME:Lcom/htc/utils/ulog/ULogTags;

    iget-wide v4, p0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 169
    const-string v3, "HtcDeviceInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SCREEN_ON_TIME:Lcom/htc/utils/ulog/ULogTags;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v3, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SCREENOFF_TIMEOUT:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 176
    .local v2, infos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 177
    .local v1, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    invoke-direct {p0, v1}, Landroid/app/HtcDeviceInfo;->dumpToULog(Landroid/app/HtcDeviceInfo$ProcessInfo;)V

    goto :goto_72

    .line 179
    .end local v1           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :cond_82
    const/4 v3, 0x1

    return v3
.end method

.method public reset()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 76
    const-string/jumbo v0, "ro.build.changelist"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/HtcDeviceInfo;->simState:I

    .line 78
    iput-wide v2, p0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    .line 79
    iput-wide v2, p0, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    .line 80
    iput-wide v2, p0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 81
    iput-wide v2, p0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    .line 82
    iget-object v0, p0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 83
    return-void
.end method

.method public serializeToFile(Ljava/lang/String;)V
    .registers 8
    .parameter "path"

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 265
    .local v1, output:Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_15

    .line 266
    .end local v1           #output:Ljava/io/ObjectOutputStream;
    .local v2, output:Ljava/io/ObjectOutputStream;
    :try_start_b
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_49

    .line 270
    if-eqz v2, :cond_13

    .line 272
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_44

    :cond_13
    :goto_13
    move-object v1, v2

    .line 277
    .end local v2           #output:Ljava/io/ObjectOutputStream;
    .restart local v1       #output:Ljava/io/ObjectOutputStream;
    :cond_14
    :goto_14
    return-void

    .line 267
    :catch_15
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/Exception;
    :goto_16
    :try_start_16
    const-string v3, "HtcDeviceInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serialize failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_3b

    .line 270
    if-eqz v1, :cond_14

    .line 272
    :try_start_35
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_14

    .line 273
    :catch_39
    move-exception v3

    goto :goto_14

    .line 270
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3b
    move-exception v3

    :goto_3c
    if-eqz v1, :cond_41

    .line 272
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    .line 270
    :cond_41
    :goto_41
    throw v3

    .line 273
    :catch_42
    move-exception v4

    goto :goto_41

    .end local v1           #output:Ljava/io/ObjectOutputStream;
    .restart local v2       #output:Ljava/io/ObjectOutputStream;
    :catch_44
    move-exception v3

    goto :goto_13

    .line 270
    :catchall_46
    move-exception v3

    move-object v1, v2

    .end local v2           #output:Ljava/io/ObjectOutputStream;
    .restart local v1       #output:Ljava/io/ObjectOutputStream;
    goto :goto_3c

    .line 267
    .end local v1           #output:Ljava/io/ObjectOutputStream;
    .restart local v2       #output:Ljava/io/ObjectOutputStream;
    :catch_49
    move-exception v0

    move-object v1, v2

    .end local v2           #output:Ljava/io/ObjectOutputStream;
    .restart local v1       #output:Ljava/io/ObjectOutputStream;
    goto :goto_16
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 206
    iget-object v3, p0, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget v3, p0, Landroid/app/HtcDeviceInfo;->simState:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-wide v3, p0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    iget-wide v3, p0, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 210
    iget-wide v3, p0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    iget-wide v3, p0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    iget-object v3, p0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v3, p0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 214
    .local v2, infos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 215
    .local v1, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget-object v3, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-wide v3, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    iget-wide v3, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 218
    iget v3, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v3, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v3, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v3, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v3, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_31

    .line 224
    .end local v1           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :cond_66
    return-void
.end method
