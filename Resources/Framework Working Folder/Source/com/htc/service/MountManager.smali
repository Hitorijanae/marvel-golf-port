.class public Lcom/htc/service/MountManager;
.super Ljava/lang/Object;
.source "MountManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MountManager"


# instance fields
.field private mService:Landroid/os/storage/IMountService;


# direct methods
.method public constructor <init>(Landroid/os/storage/IMountService;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    .line 18
    return-void
.end method


# virtual methods
.method public decryptStorage(Ljava/lang/String;)I
    .registers 5
    .parameter "password"

    .prologue
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result v1

    .line 41
    :goto_15
    return v1

    .line 38
    :catch_16
    move-exception v0

    .line 39
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string v2, "decryptStorage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    const/4 v1, -0x1

    goto :goto_15
.end method

.method public enableModemLink()I
    .registers 4

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->enableModemLink()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 137
    :goto_6
    return v1

    .line 134
    :catch_7
    move-exception v0

    .line 135
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string v2, "enableModemLink: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .registers 5
    .parameter "password"

    .prologue
    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->encryptStorage(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result v1

    .line 29
    :goto_15
    return v1

    .line 26
    :catch_16
    move-exception v0

    .line 27
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string v2, "encryptStorage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    const/4 v1, -0x1

    goto :goto_15
.end method

.method public formatVolume(Ljava/lang/String;)I
    .registers 5
    .parameter "path"

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 50
    :goto_6
    return v1

    .line 47
    :catch_7
    move-exception v0

    .line 48
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string v2, "formatVolume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .registers 5
    .parameter "path"

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 59
    :goto_6
    return-object v1

    .line 56
    :catch_7
    move-exception v0

    .line 57
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string v2, "getStorageUsers: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_6
.end method

.method public isUsbMassStorageConnected()Z
    .registers 4

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageConnected()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 68
    :goto_6
    return v1

    .line 65
    :catch_7
    move-exception v0

    .line 66
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string/jumbo v2, "isUsbMassStorageConnected: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public mountISO(Ljava/lang/String;)I
    .registers 5
    .parameter "path"

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->mountISO(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 163
    :goto_6
    return v1

    .line 160
    :catch_7
    move-exception v0

    .line 161
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string/jumbo v2, "mountISO: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public mountVolume(Ljava/lang/String;)I
    .registers 5
    .parameter "path"

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 77
    :goto_6
    return v1

    .line 74
    :catch_7
    move-exception v0

    .line 75
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string/jumbo v2, "mountVolume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public setAutoMountISOEnabled(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->setAutoMountISOEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 111
    :goto_5
    return-void

    .line 108
    :catch_6
    move-exception v0

    .line 109
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string/jumbo v2, "setAutoMountISOEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setMountISOEnabled(Z)I
    .registers 5
    .parameter "enable"

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->setMountISOEnabled(Z)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 123
    :goto_6
    return v1

    .line 120
    :catch_7
    move-exception v0

    .line 121
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string/jumbo v2, "setMountISOEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public setPCtoolISOEnabled(Z)I
    .registers 5
    .parameter "enable"

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->setPCtoolISOEnabled(Z)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 150
    :goto_6
    return v1

    .line 147
    :catch_7
    move-exception v0

    .line 148
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string/jumbo v2, "setPCtoolISOEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public setUsbMassStorageEnabled(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 99
    :goto_5
    return-void

    .line 96
    :catch_6
    move-exception v0

    .line 97
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string/jumbo v2, "setUsbMassStorageEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public unmountISO()I
    .registers 4

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->unmountISO()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 175
    :goto_6
    return v1

    .line 172
    :catch_7
    move-exception v0

    .line 173
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string/jumbo v2, "unmountISO: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public unmountVolume(Ljava/lang/String;Z)V
    .registers 4
    .parameter "path"
    .parameter "force"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/service/MountManager;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 83
    return-void
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .registers 7
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 91
    :goto_5
    return-void

    .line 88
    :catch_6
    move-exception v0

    .line 89
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string/jumbo v2, "unmountVolume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
