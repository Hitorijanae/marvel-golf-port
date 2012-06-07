.class public Landroid/net/LinkProperties;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkProperties$CompareResult;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LinkProperties"


# instance fields
.field private mDnses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpProxy:Landroid/net/ProxyProperties;

.field private mHttpProxyV6:Landroid/net/ProxyProperties;

.field mIfaceName:Ljava/lang/String;

.field mIfaceNameV6:Ljava/lang/String;

.field private mLinkAddresses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mRoutes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 722
    new-instance v0, Landroid/net/LinkProperties$1;

    invoke-direct {v0}, Landroid/net/LinkProperties$1;-><init>()V

    sput-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    .line 93
    invoke-virtual {p0}, Landroid/net/LinkProperties;->clear()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkProperties;)V
    .registers 9
    .parameter "source"

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    .line 98
    if-eqz p1, :cond_86

    .line 99
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .local v2, l:Landroid/net/LinkAddress;
    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 101
    .end local v2           #l:Landroid/net/LinkAddress;
    :cond_3b
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, i:Ljava/net/InetAddress;
    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 102
    .end local v0           #i:Ljava/net/InetAddress;
    :cond_55
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .local v3, r:Landroid/net/RouteInfo;
    iget-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 103
    .end local v3           #r:Landroid/net/RouteInfo;
    :cond_6f
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    if-nez v4, :cond_87

    move-object v4, v5

    :goto_76
    iput-object v4, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 106
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v4

    if-nez v4, :cond_91

    :goto_84
    iput-object v5, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    .line 111
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_86
    return-void

    .line 103
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_87
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    goto :goto_76

    .line 107
    :cond_91
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    goto :goto_84
.end method


# virtual methods
.method public addDns(Ljava/net/InetAddress;)V
    .registers 3
    .parameter "dns"

    .prologue
    .line 157
    monitor-enter p0

    .line 159
    if-eqz p1, :cond_8

    :try_start_3
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_8
    monitor-exit p0

    .line 163
    return-void

    .line 161
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public addLinkAddress(Landroid/net/LinkAddress;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 137
    monitor-enter p0

    .line 139
    if-eqz p1, :cond_8

    :try_start_3
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_8
    monitor-exit p0

    .line 143
    return-void

    .line 141
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public addRoute(Landroid/net/RouteInfo;)V
    .registers 3
    .parameter "route"

    .prologue
    .line 177
    monitor-enter p0

    .line 179
    if-eqz p1, :cond_8

    :try_start_3
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_8
    monitor-exit p0

    .line 183
    return-void

    .line 181
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 241
    monitor-enter p0

    .line 243
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 245
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 246
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    .line 253
    monitor-exit p0

    .line 255
    return-void

    .line 253
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public clearV4()V
    .registers 11

    .prologue
    .line 260
    monitor-enter p0

    .line 262
    :try_start_1
    const-string v7, "LinkProperties"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Before clearV4:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v5, varLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 272
    .local v2, l:Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet6Address;

    if-eqz v7, :cond_28

    .line 273
    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 304
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/net/LinkAddress;
    .end local v5           #varLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :catchall_40
    move-exception v7

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_40

    throw v7

    .line 275
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #varLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_43
    :try_start_43
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->clear()V

    .line 276
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v7, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 279
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v4, varDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_58
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 281
    .local v0, d:Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet6Address;

    if-eqz v7, :cond_58

    .line 282
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 284
    .end local v0           #d:Ljava/net/InetAddress;
    :cond_6c
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->clear()V

    .line 285
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v7, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 288
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v6, varRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_81
    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 290
    .local v3, r:Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet6Address;

    if-eqz v7, :cond_81

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet6Address;

    if-eqz v7, :cond_81

    .line 292
    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 295
    .end local v3           #r:Landroid/net/RouteInfo;
    :cond_a5
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->clear()V

    .line 296
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 299
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 302
    const-string v7, "LinkProperties"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After clearV4():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    monitor-exit p0
    :try_end_cf
    .catchall {:try_start_43 .. :try_end_cf} :catchall_40

    .line 306
    return-void
.end method

.method public clearV6()V
    .registers 11

    .prologue
    .line 310
    monitor-enter p0

    .line 312
    :try_start_1
    const-string v7, "LinkProperties"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Before clearV6():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v5, varLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 322
    .local v2, l:Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet4Address;

    if-eqz v7, :cond_28

    .line 323
    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 354
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/net/LinkAddress;
    .end local v5           #varLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :catchall_40
    move-exception v7

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_40

    throw v7

    .line 325
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #varLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_43
    :try_start_43
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->clear()V

    .line 326
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v7, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 329
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v4, varDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_58
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 331
    .local v0, d:Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_58

    .line 332
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 334
    .end local v0           #d:Ljava/net/InetAddress;
    :cond_6c
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->clear()V

    .line 335
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v7, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 338
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v6, varRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_81
    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 340
    .local v3, r:Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet4Address;

    if-eqz v7, :cond_81

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet4Address;

    if-eqz v7, :cond_81

    .line 342
    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 345
    .end local v3           #r:Landroid/net/RouteInfo;
    :cond_a5
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->clear()V

    .line 346
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 349
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    .line 352
    const-string v7, "LinkProperties"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After clearV6():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    monitor-exit p0
    :try_end_cf
    .catchall {:try_start_43 .. :try_end_cf} :catchall_40

    .line 356
    return-void
.end method

.method public compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .registers 7
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    monitor-enter p0

    .line 560
    :try_start_1
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 561
    .local v2, result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    .line 562
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 563
    if-eqz p1, :cond_3b

    .line 564
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 565
    .local v1, newAddress:Landroid/net/LinkAddress;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 566
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 572
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newAddress:Landroid/net/LinkAddress;
    .end local v2           #result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :catchall_38
    move-exception v3

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v3

    .line 570
    .restart local v2       #result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    return-object v2
.end method

.method public compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .registers 7
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    monitor-enter p0

    .line 596
    :try_start_1
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 598
    .local v2, result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    .line 599
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 600
    if-eqz p1, :cond_3b

    .line 601
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 602
    .local v1, newAddress:Ljava/net/InetAddress;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 603
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 609
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newAddress:Ljava/net/InetAddress;
    .end local v2           #result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    :catchall_38
    move-exception v3

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v3

    .line 607
    .restart local v2       #result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    :cond_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    return-object v2
.end method

.method public compareRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .registers 7
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    monitor-enter p0

    .line 632
    :try_start_1
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 634
    .local v2, result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    .line 635
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 636
    if-eqz p1, :cond_3b

    .line 637
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 638
    .local v1, r:Landroid/net/RouteInfo;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 639
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 645
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/RouteInfo;
    .end local v2           #result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    :catchall_38
    move-exception v3

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v3

    .line 643
    .restart local v2       #result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    :cond_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    return-object v2
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 514
    if-ne p0, p1, :cond_5

    .line 530
    :cond_4
    :goto_4
    return v1

    .line 516
    :cond_5
    instance-of v3, p1, Landroid/net/LinkProperties;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 518
    check-cast v0, Landroid/net/LinkProperties;

    .line 530
    .local v0, target:Landroid/net/LinkProperties;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalInterfaceNameV6(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalHttpProxyV6(Landroid/net/LinkProperties;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_38
    move v1, v2

    goto :goto_4
.end method

.method public getAddresses()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    monitor-enter p0

    .line 125
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 127
    .local v2, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 131
    .end local v0           #addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #linkAddress:Landroid/net/LinkAddress;
    :catchall_20
    move-exception v3

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v3

    .line 129
    .restart local v0       #addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_23
    :try_start_23
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_20

    return-object v3
.end method

.method public getDnses()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 171
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getHttpProxy()Landroid/net/ProxyProperties;
    .registers 2

    .prologue
    .line 205
    monitor-enter p0

    .line 207
    :try_start_1
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    monitor-exit p0

    return-object v0

    .line 209
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getHttpProxyV6()Landroid/net/ProxyProperties;
    .registers 2

    .prologue
    .line 233
    monitor-enter p0

    .line 234
    :try_start_1
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    monitor-exit p0

    return-object v0

    .line 235
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceNameV6()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 223
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getLinkAddresses()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    monitor-enter p0

    .line 149
    :try_start_1
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 151
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getRoutes()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    monitor-enter p0

    .line 188
    :try_start_1
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 190
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 657
    monitor-enter p0

    .line 659
    :try_start_2
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-nez v0, :cond_e

    move v0, v1

    :goto_7
    iget-object v2, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    if-nez v2, :cond_3d

    :goto_b
    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :cond_e
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x29

    add-int/2addr v2, v0

    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    if-nez v0, :cond_36

    move v0, v1

    :goto_34
    add-int/2addr v0, v2

    goto :goto_7

    :cond_36
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->hashCode()I

    move-result v0

    goto :goto_34

    :cond_3d
    iget-object v2, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v3, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    if-nez v3, :cond_49

    :goto_47
    add-int/2addr v1, v2

    goto :goto_b

    :cond_49
    iget-object v1, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->hashCode()I

    move-result v1

    goto :goto_47

    .line 669
    :catchall_50
    move-exception v0

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_2 .. :try_end_52} :catchall_50

    throw v0
.end method

.method public isIdenticalAddresses(Landroid/net/LinkProperties;)Z
    .registers 6
    .parameter "target"

    .prologue
    .line 417
    monitor-enter p0

    .line 419
    :try_start_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 420
    .local v1, targetAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v0

    .line 421
    .local v0, sourceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v2, v3, :cond_19

    invoke-interface {v0, v1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    :goto_17
    monitor-exit p0

    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_17

    .line 424
    .end local v0           #sourceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v1           #targetAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :catchall_1b
    move-exception v2

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public isIdenticalDnses(Landroid/net/LinkProperties;)Z
    .registers 5
    .parameter "target"

    .prologue
    .line 436
    monitor-enter p0

    .line 438
    :try_start_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    .line 439
    .local v0, targetDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    :goto_17
    monitor-exit p0

    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_17

    .line 442
    .end local v0           #targetDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :catchall_1b
    move-exception v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z
    .registers 4
    .parameter "target"

    .prologue
    .line 471
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    :cond_10
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method public isIdenticalHttpProxyV6(Landroid/net/LinkProperties;)Z
    .registers 4
    .parameter "target"

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    :cond_10
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method public isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z
    .registers 4
    .parameter "target"

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isIdenticalInterfaceNameV6(Landroid/net/LinkProperties;)Z
    .registers 4
    .parameter "target"

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isIdenticalRoutes(Landroid/net/LinkProperties;)Z
    .registers 5
    .parameter "target"

    .prologue
    .line 454
    monitor-enter p0

    .line 456
    :try_start_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    .line 457
    .local v0, targetRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    :goto_17
    monitor-exit p0

    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_17

    .line 460
    .end local v0           #targetRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    :catchall_1b
    move-exception v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public setHttpProxy(Landroid/net/ProxyProperties;)V
    .registers 3
    .parameter "proxy"

    .prologue
    .line 196
    monitor-enter p0

    .line 198
    :try_start_1
    iput-object p1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 200
    monitor-exit p0

    .line 202
    return-void

    .line 200
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setHttpProxyV6(Landroid/net/ProxyProperties;)V
    .registers 3
    .parameter "proxyV6"

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    :try_start_1
    iput-object p1, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    .line 229
    monitor-exit p0

    .line 230
    return-void

    .line 229
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .registers 2
    .parameter "iface"

    .prologue
    .line 114
    iput-object p1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setInterfaceNameV6(Ljava/lang/String;)V
    .registers 3
    .parameter "ifaceV6"

    .prologue
    .line 215
    monitor-enter p0

    .line 216
    :try_start_1
    iput-object p1, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    .line 217
    monitor-exit p0

    .line 218
    return-void

    .line 217
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    .prologue
    .line 370
    monitor-enter p0

    .line 372
    :try_start_1
    iget-object v10, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-nez v10, :cond_37

    const-string v3, ""

    .line 374
    .local v3, ifaceName:Ljava/lang/String;
    :goto_7
    const-string v5, "LinkAddresses: ["

    .line 375
    .local v5, linkAddresses:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .local v0, addr:Landroid/net/LinkAddress;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    .line 372
    .end local v0           #addr:Landroid/net/LinkAddress;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ifaceName:Ljava/lang/String;
    .end local v5           #linkAddresses:Ljava/lang/String;
    :cond_37
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InterfaceName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 376
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #ifaceName:Ljava/lang/String;
    .restart local v5       #linkAddresses:Ljava/lang/String;
    :cond_53
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 378
    const-string v1, "DnsAddresses: ["

    .line 379
    .local v1, dns:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, addr:Ljava/net/InetAddress;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6e

    .line 380
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_96
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    const-string v9, "Routes: ["

    .line 383
    .local v9, routes:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .local v8, route:Landroid/net/RouteInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_b1

    .line 384
    .end local v8           #route:Landroid/net/RouteInfo;
    :cond_d9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 385
    iget-object v10, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    if-nez v10, :cond_125

    const-string v6, ""

    .line 388
    .local v6, proxy:Ljava/lang/String;
    :goto_f2
    iget-object v10, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    if-nez v10, :cond_145

    const-string v4, ""

    .line 389
    .local v4, ifaceNameV6:Ljava/lang/String;
    :goto_f8
    iget-object v10, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    if-nez v10, :cond_161

    const-string v7, ""

    .line 391
    .local v7, proxyV6:Ljava/lang/String;
    :goto_fe
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    monitor-exit p0

    return-object v10

    .line 385
    .end local v4           #ifaceNameV6:Ljava/lang/String;
    .end local v6           #proxy:Ljava/lang/String;
    .end local v7           #proxyV6:Ljava/lang/String;
    :cond_125
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HttpProxy: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v11}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_f2

    .line 388
    .restart local v6       #proxy:Ljava/lang/String;
    :cond_145
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InterfaceNameV6: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_f8

    .line 389
    .restart local v4       #ifaceNameV6:Ljava/lang/String;
    :cond_161
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HttpProxyV6: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    invoke-virtual {v11}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_fe

    .line 395
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ifaceName:Ljava/lang/String;
    .end local v4           #ifaceNameV6:Ljava/lang/String;
    .end local v5           #linkAddresses:Ljava/lang/String;
    .end local v6           #proxy:Ljava/lang/String;
    .end local v9           #routes:Ljava/lang/String;
    :catchall_182
    move-exception v10

    monitor-exit p0
    :try_end_184
    .catchall {:try_start_1 .. :try_end_184} :catchall_182

    throw v10
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 679
    monitor-enter p0

    .line 681
    :try_start_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 682
    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 684
    .local v2, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_17

    .line 714
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #linkAddress:Landroid/net/LinkAddress;
    :catchall_27
    move-exception v4

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v4

    .line 687
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2a
    :try_start_2a
    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 689
    .local v0, d:Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_39

    .line 692
    .end local v0           #d:Ljava/net/InetAddress;
    :cond_4d
    iget-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    iget-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 694
    .local v3, route:Landroid/net/RouteInfo;
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_5c

    .line 697
    .end local v3           #route:Landroid/net/RouteInfo;
    :cond_6c
    iget-object v4, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    if-eqz v4, :cond_8f

    .line 698
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 699
    iget-object v4, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 705
    :goto_79
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 706
    iget-object v4, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    if-eqz v4, :cond_94

    .line 707
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 708
    iget-object v4, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 714
    :goto_8d
    monitor-exit p0

    .line 716
    return-void

    .line 701
    :cond_8f
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_79

    .line 710
    :cond_94
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_98
    .catchall {:try_start_2a .. :try_end_98} :catchall_27

    goto :goto_8d
.end method
