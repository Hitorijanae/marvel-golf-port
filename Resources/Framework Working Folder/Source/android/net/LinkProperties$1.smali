.class final Landroid/net/LinkProperties$1;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/LinkProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 723
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;
    .registers 11
    .parameter "in"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 725
    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    .line 726
    .local v5, netProp:Landroid/net/LinkProperties;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, iface:Ljava/lang/String;
    if-eqz v3, :cond_10

    .line 729
    :try_start_d
    invoke-virtual {v5, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_23

    .line 734
    :cond_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 735
    .local v0, addressCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-ge v2, v0, :cond_26

    .line 736
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 735
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 730
    .end local v0           #addressCount:I
    .end local v2           #i:I
    :catch_23
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move-object v5, v7

    .line 765
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #netProp:Landroid/net/LinkProperties;
    :cond_25
    :goto_25
    return-object v5

    .line 738
    .restart local v0       #addressCount:I
    .restart local v2       #i:I
    .restart local v5       #netProp:Landroid/net/LinkProperties;
    :cond_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 739
    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v0, :cond_3b

    .line 741
    :try_start_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_38
    .catch Ljava/net/UnknownHostException; {:try_start_2d .. :try_end_38} :catch_79

    .line 739
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 744
    :cond_3b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 745
    const/4 v2, 0x0

    :goto_40
    if-ge v2, v0, :cond_4e

    .line 746
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 745
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 748
    :cond_4e
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v8, :cond_5d

    .line 749
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/ProxyProperties;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 753
    :cond_5d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, ifaceV6:Ljava/lang/String;
    if-eqz v4, :cond_66

    .line 756
    :try_start_63
    invoke-virtual {v5, v4}, Landroid/net/LinkProperties;->setInterfaceNameV6(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_76

    .line 761
    :cond_66
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v8, :cond_25

    .line 762
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/ProxyProperties;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->setHttpProxyV6(Landroid/net/ProxyProperties;)V

    goto :goto_25

    .line 757
    :catch_76
    move-exception v1

    .restart local v1       #e:Ljava/lang/Exception;
    move-object v5, v7

    .line 758
    goto :goto_25

    .line 742
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #ifaceV6:Ljava/lang/String;
    :catch_79
    move-exception v6

    goto :goto_38
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 723
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkProperties;
    .registers 3
    .parameter "size"

    .prologue
    .line 769
    new-array v0, p1, [Landroid/net/LinkProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 723
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->newArray(I)[Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method
