.class Landroid/server/BluetoothDeviceProperties;
.super Ljava/lang/Object;
.source "BluetoothDeviceProperties.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceProperties"


# instance fields
.field private final mPropertiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    .line 38
    iput-object p1, p0, Landroid/server/BluetoothDeviceProperties;->mService:Landroid/server/BluetoothService;

    .line 39
    return-void
.end method


# virtual methods
.method addProperties(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/Map;
    .registers 15
    .parameter "address"
    .parameter "properties"
    .parameter "isNewDevice"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v8, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 49
    :try_start_3
    iget-object v7, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 50
    .local v5, propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_12

    .line 51
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 54
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    array-length v7, p2

    if-ge v0, v7, :cond_a9

    .line 55
    aget-object v3, p2, v0

    .line 56
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 58
    .local v4, newValue:Ljava/lang/String;
    if-nez v3, :cond_3c

    .line 59
    const-string v7, "BluetoothDeviceProperties"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Remote Device Property at index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 63
    :cond_3c
    const-string v7, "UUIDs"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    const-string v7, "Nodes"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    const-string v7, "Services"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 64
    :cond_54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v6, str:Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 66
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_66
    if-ge v1, v2, :cond_9a

    .line 69
    const-string v7, "UUIDs"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    add-int/lit8 v7, v0, 0x1

    aget-object v7, p2, v7

    invoke-static {v7}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothUuid;->isNap(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 70
    const-string v7, "BluetoothDeviceProperties"

    const-string v9, "addProperties: UUIDs: ignore NAP"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 66
    :goto_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 75
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_87

    .line 88
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #len:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #str:Ljava/lang/StringBuilder;
    :catchall_97
    move-exception v7

    monitor-exit v8
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_97

    throw v7

    .line 78
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #len:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #newValue:Ljava/lang/String;
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #str:Ljava/lang/StringBuilder;
    :cond_9a
    if-lez v2, :cond_a0

    .line 79
    :try_start_9c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .end local v1           #j:I
    .end local v2           #len:I
    .end local v6           #str:Ljava/lang/StringBuilder;
    :cond_a0
    :goto_a0
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 82
    :cond_a4
    add-int/lit8 v0, v0, 0x1

    aget-object v4, p2, v0

    goto :goto_a0

    .line 87
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    :cond_a9
    iget-object v7, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    monitor-exit v8
    :try_end_af
    .catchall {:try_start_9c .. :try_end_af} :catchall_97

    .line 91
    if-nez p3, :cond_b6

    .line 92
    iget-object v7, p0, Landroid/server/BluetoothDeviceProperties;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v7, p1}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V

    .line 94
    :cond_b6
    return-object v5
.end method

.method getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "address"
    .parameter "property"

    .prologue
    .line 128
    iget-object v2, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 129
    :try_start_3
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 130
    .local v0, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_15

    .line 131
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v2

    .line 143
    :goto_14
    return-object v1

    .line 136
    :cond_15
    invoke-virtual {p0, p1}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_26

    .line 138
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v2

    goto :goto_14

    .line 141
    .end local v0           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1

    .restart local v0       #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 142
    const-string v1, "BluetoothDeviceProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemoteDeviceProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, 0x0

    goto :goto_14
.end method

.method isEmpty()Z
    .registers 3

    .prologue
    .line 116
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 117
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 118
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method isInCache(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 110
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 111
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 112
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 123
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 124
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "address"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 98
    iget-object v2, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 99
    :try_start_3
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 100
    .local v0, propVal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_17

    .line 101
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :goto_15
    monitor-exit v2

    .line 107
    return-void

    .line 104
    :cond_17
    const-string v1, "BluetoothDeviceProperties"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRemoteDeviceProperty for a device not in cache:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 106
    .end local v0           #propVal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method updateCache(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, propValues:[Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 149
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/server/BluetoothDeviceProperties;->addProperties(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 151
    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method
