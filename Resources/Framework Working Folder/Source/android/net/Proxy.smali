.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXCLLIST_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final EXCLLIST_REGEXP:Ljava/lang/String; = "$|^(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*)+(,(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*))*$"

.field public static final EXTRA_PROXY_INFO:Ljava/lang/String; = "proxy"

.field private static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HOSTNAME_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field private static final NAME_IP_REGEX:Ljava/lang/String; = "[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*"

.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"

.field private static final TAG:Ljava/lang/String; = "Proxy"

.field private static sConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-object v0, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 102
    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 103
    const-string v0, "$|^(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*)+(,(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*))*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 296
    return-void
.end method

.method public static final getAndroidProxySelectorRoutePlanner(Landroid/content/Context;)Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .registers 4
    .parameter "context"

    .prologue
    .line 333
    new-instance v0, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;Landroid/content/Context;)V

    .line 335
    .local v0, ret:Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;
    return-object v0
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    const-string/jumbo v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, host:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    .line 188
    .end local v0           #host:Ljava/lang/String;
    :cond_e
    return-object v0
.end method

.method public static final getDefaultPort()I
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 200
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 204
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_7
    return v1

    .line 202
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_8
    :try_start_8
    const-string/jumbo v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_12} :catch_14

    move-result v1

    goto :goto_7

    .line 203
    :catch_14
    move-exception v0

    .line 204
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-static {p0, v3}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 152
    .local v1, proxy:Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_b

    move-object v2, v3

    .line 156
    :goto_a
    return-object v2

    .line 154
    :cond_b
    :try_start_b
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_18

    move-result-object v2

    goto :goto_a

    .line 155
    :catch_18
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v2, v3

    .line 156
    goto :goto_a
.end method

.method public static final getPort(Landroid/content/Context;)I
    .registers 5
    .parameter "ctx"

    .prologue
    const/4 v3, -0x1

    .line 168
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 169
    .local v1, proxy:Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_c

    move v2, v3

    .line 173
    :goto_b
    return v2

    .line 171
    :cond_c
    :try_start_c
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_19

    move-result v2

    goto :goto_b

    .line 172
    :catch_19
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 173
    goto :goto_b
.end method

.method public static final getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;
    .registers 8
    .parameter "context"
    .parameter "url"

    .prologue
    .line 224
    invoke-static {p0, p1}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 225
    .local v1, prefProxy:Ljava/net/Proxy;
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v1, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 226
    const/4 v3, 0x0

    .line 237
    :goto_d
    return-object v3

    .line 229
    :cond_e
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 231
    .local v2, sa:Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 236
    :cond_1a
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_35

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, httphost:Ljava/lang/String;
    :goto_28
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    const-string/jumbo v5, "http"

    invoke-direct {v3, v0, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_d

    .line 236
    .end local v0           #httphost:Ljava/lang/String;
    :cond_35
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public static final getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;
    .registers 6
    .parameter "ctx"
    .parameter "url"

    .prologue
    .line 116
    const-string v0, ""

    .line 117
    .local v0, host:Ljava/lang/String;
    if-eqz p1, :cond_c

    .line 118
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 119
    .local v2, uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 122
    .end local v2           #uri:Ljava/net/URI;
    :cond_c
    invoke-static {v0}, Landroid/net/Proxy;->isLocalHost(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 123
    sget-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_20

    .line 124
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    sput-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 127
    :cond_20
    sget-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_27

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 137
    :goto_26
    return-object v3

    .line 129
    :cond_27
    sget-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 131
    .local v1, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v1, :cond_3a

    .line 132
    invoke-virtual {v1, v0}, Landroid/net/ProxyProperties;->isExcluded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 133
    invoke-virtual {v1}, Landroid/net/ProxyProperties;->makeProxy()Ljava/net/Proxy;

    move-result-object v3

    goto :goto_26

    .line 137
    .end local v1           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_3a
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_26
.end method

.method private static final isLocalHost(Ljava/lang/String;)Z
    .registers 4
    .parameter "host"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 243
    if-nez p0, :cond_5

    .line 257
    :cond_4
    :goto_4
    return v0

    .line 247
    :cond_5
    if-eqz p0, :cond_4

    .line 248
    :try_start_7
    const-string/jumbo v2, "localhost"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v0, v1

    .line 249
    goto :goto_4

    .line 251
    :cond_12
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_19} :catch_1e

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 252
    goto :goto_4

    .line 255
    :catch_1e
    move-exception v1

    goto :goto_4
.end method

.method public static final setHttpProxySystemProperty(Landroid/net/ProxyProperties;)V
    .registers 5
    .parameter "p"

    .prologue
    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, host:Ljava/lang/String;
    const/4 v2, 0x0

    .line 342
    .local v2, port:Ljava/lang/String;
    const/4 v0, 0x0

    .line 343
    .local v0, exclList:Ljava/lang/String;
    if-eqz p0, :cond_15

    .line 344
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_15
    invoke-static {v1, v2, v0}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public static final setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "host"
    .parameter "port"
    .parameter "exclList"

    .prologue
    .line 353
    if-eqz p2, :cond_b

    const-string v0, ","

    const-string/jumbo v1, "|"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 355
    :cond_b
    if-eqz p0, :cond_36

    .line 356
    const-string/jumbo v0, "http.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    const-string/jumbo v0, "https.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    :goto_19
    if-eqz p1, :cond_43

    .line 363
    const-string/jumbo v0, "http.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    const-string/jumbo v0, "https.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    :goto_27
    if-eqz p2, :cond_50

    .line 370
    const-string/jumbo v0, "http.nonProxyHosts"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    const-string/jumbo v0, "https.nonProxyHosts"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    :goto_35
    return-void

    .line 359
    :cond_36
    const-string/jumbo v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    const-string/jumbo v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_19

    .line 366
    :cond_43
    const-string/jumbo v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    const-string/jumbo v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_27

    .line 373
    :cond_50
    const-string/jumbo v0, "http.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    const-string/jumbo v0, "https.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_35
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "hostname"
    .parameter "port"
    .parameter "exclList"

    .prologue
    .line 265
    sget-object v4, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 266
    .local v2, match:Ljava/util/regex/Matcher;
    sget-object v4, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 268
    .local v1, listMatch:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_18

    .line 269
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 272
    :cond_18
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_24

    .line 273
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 276
    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_36

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_36

    .line 277
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 280
    :cond_36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_61

    .line 281
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_48

    .line 282
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 284
    :cond_48
    const/4 v3, -0x1

    .line 286
    .local v3, portVal:I
    :try_start_49
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_4c} :catch_5a

    move-result v3

    .line 290
    if-lez v3, :cond_54

    const v4, 0xffff

    if-le v3, v4, :cond_61

    .line 291
    :cond_54
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 287
    :catch_5a
    move-exception v0

    .line 288
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 294
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v3           #portVal:I
    :cond_61
    return-void
.end method
