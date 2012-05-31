.class public final Landroid/webkit/ClientCertRequestHandler;
.super Landroid/os/Handler;
.source "ClientCertRequestHandler.java"


# instance fields
.field private final mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private final mHandle:I

.field private final mHostAndPort:Ljava/lang/String;

.field private final mTable:Landroid/webkit/SslClientCertLookupTable;


# direct methods
.method constructor <init>(Landroid/webkit/BrowserFrame;ILjava/lang/String;Landroid/webkit/SslClientCertLookupTable;)V
    .registers 5
    .parameter "browserFrame"
    .parameter "handle"
    .parameter "host_and_port"
    .parameter "table"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/webkit/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 44
    iput p2, p0, Landroid/webkit/ClientCertRequestHandler;->mHandle:I

    .line 45
    iput-object p3, p0, Landroid/webkit/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Landroid/webkit/ClientCertRequestHandler;->mTable:Landroid/webkit/SslClientCertLookupTable;

    .line 47
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/ClientCertRequestHandler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Landroid/webkit/ClientCertRequestHandler;->mHandle:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/ClientCertRequestHandler;)Landroid/webkit/BrowserFrame;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Landroid/webkit/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Landroid/webkit/ClientCertRequestHandler;->mTable:Landroid/webkit/SslClientCertLookupTable;

    iget-object v1, p0, Landroid/webkit/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/SslClientCertLookupTable;->Deny(Ljava/lang/String;)V

    .line 89
    new-instance v0, Landroid/webkit/ClientCertRequestHandler$4;

    invoke-direct {v0, p0}, Landroid/webkit/ClientCertRequestHandler$4;-><init>(Landroid/webkit/ClientCertRequestHandler;)V

    invoke-virtual {p0, v0}, Landroid/webkit/ClientCertRequestHandler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method

.method public ignore()V
    .registers 2

    .prologue
    .line 77
    new-instance v0, Landroid/webkit/ClientCertRequestHandler$3;

    invoke-direct {v0, p0}, Landroid/webkit/ClientCertRequestHandler$3;-><init>(Landroid/webkit/ClientCertRequestHandler;)V

    invoke-virtual {p0, v0}, Landroid/webkit/ClientCertRequestHandler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method public proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .registers 8
    .parameter "privateKey"
    .parameter "chain"

    .prologue
    .line 53
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    .line 56
    .local v2, privateKeyBytes:[B
    :try_start_4
    invoke-static {p2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->encodeCertificates([Ljava/security/cert/Certificate;)[[B

    move-result-object v0

    .line 57
    .local v0, chainBytes:[[B
    iget-object v3, p0, Landroid/webkit/ClientCertRequestHandler;->mTable:Landroid/webkit/SslClientCertLookupTable;

    iget-object v4, p0, Landroid/webkit/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v0}, Landroid/webkit/SslClientCertLookupTable;->Allow(Ljava/lang/String;[B[[B)V

    .line 58
    new-instance v3, Landroid/webkit/ClientCertRequestHandler$1;

    invoke-direct {v3, p0, v2, v0}, Landroid/webkit/ClientCertRequestHandler$1;-><init>(Landroid/webkit/ClientCertRequestHandler;[B[[B)V

    invoke-virtual {p0, v3}, Landroid/webkit/ClientCertRequestHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_17
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_17} :catch_18

    .line 71
    .end local v0           #chainBytes:[[B
    :goto_17
    return-void

    .line 63
    :catch_18
    move-exception v1

    .line 64
    .local v1, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Landroid/webkit/ClientCertRequestHandler$2;

    invoke-direct {v3, p0}, Landroid/webkit/ClientCertRequestHandler$2;-><init>(Landroid/webkit/ClientCertRequestHandler;)V

    invoke-virtual {p0, v3}, Landroid/webkit/ClientCertRequestHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17
.end method
