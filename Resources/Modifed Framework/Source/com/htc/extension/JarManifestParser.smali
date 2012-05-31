.class public Lcom/htc/extension/JarManifestParser;
.super Ljava/lang/Object;
.source "JarManifestParser.java"


# instance fields
.field private mManifest:Ljava/util/jar/Manifest;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lcom/htc/extension/JarManifestParser;->setPath(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/htc/extension/JarManifestParser;->setManifest()V

    .line 35
    return-void
.end method

.method private getDefaultPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string v0, "/system/framework/HTCExtension.jar"

    return-object v0
.end method

.method private getManifest()Ljava/util/jar/Manifest;
    .registers 4

    .prologue
    .line 43
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {p0}, Lcom/htc/extension/JarManifestParser;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, jarfile:Ljava/util/jar/JarFile;
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v2

    .line 47
    .end local v1           #jarfile:Ljava/util/jar/JarFile;
    :goto_d
    return-object v2

    .line 45
    :catch_e
    move-exception v0

    .line 46
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 47
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/extension/JarManifestParser;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method private setManifest()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/extension/JarManifestParser;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/extension/JarManifestParser;->mManifest:Ljava/util/jar/Manifest;

    .line 78
    return-void
.end method

.method private setPath(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 81
    if-nez p1, :cond_9

    .line 82
    invoke-direct {p0}, Lcom/htc/extension/JarManifestParser;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/extension/JarManifestParser;->mPath:Ljava/lang/String;

    .line 86
    :goto_8
    return-void

    .line 84
    :cond_9
    iput-object p1, p0, Lcom/htc/extension/JarManifestParser;->mPath:Ljava/lang/String;

    goto :goto_8
.end method


# virtual methods
.method public getEntryValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "entryName"
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v3, p0, Lcom/htc/extension/JarManifestParser;->mManifest:Ljava/util/jar/Manifest;

    if-nez v3, :cond_6

    .line 73
    :cond_5
    :goto_5
    return-object v2

    .line 61
    :cond_6
    iget-object v3, p0, Lcom/htc/extension/JarManifestParser;->mManifest:Ljava/util/jar/Manifest;

    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    .line 63
    .local v0, entries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    if-eqz v0, :cond_5

    .line 67
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/Attributes;

    .line 69
    .local v1, entry:Ljava/util/jar/Attributes;
    if-eqz v1, :cond_5

    .line 73
    invoke-virtual {v1, p2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5
.end method
