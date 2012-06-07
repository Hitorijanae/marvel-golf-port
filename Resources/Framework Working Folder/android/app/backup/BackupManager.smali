.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupManager"

.field private static sService:Landroid/app/backup/IBackupManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method private static checkServiceBinder()V
    .registers 1

    .prologue
    .line 66
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_10

    .line 67
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    .line 70
    :cond_10
    return-void
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 113
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 114
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_c

    .line 116
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 121
    :cond_c
    :goto_c
    return-void

    .line 117
    :catch_d
    move-exception v0

    .line 118
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method


# virtual methods
.method public beginRestoreSession()Landroid/app/backup/RestoreSession;
    .registers 8

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, session:Landroid/app/backup/RestoreSession;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 170
    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v4, :cond_18

    .line 173
    :try_start_8
    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .line 174
    .local v0, binder:Landroid/app/backup/IRestoreSession;
    new-instance v3, Landroid/app/backup/RestoreSession;

    iget-object v4, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_19

    .end local v2           #session:Landroid/app/backup/RestoreSession;
    .local v3, session:Landroid/app/backup/RestoreSession;
    move-object v2, v3

    .line 179
    .end local v0           #binder:Landroid/app/backup/IRestoreSession;
    .end local v3           #session:Landroid/app/backup/RestoreSession;
    .restart local v2       #session:Landroid/app/backup/RestoreSession;
    :cond_18
    :goto_18
    return-object v2

    .line 175
    :catch_19
    move-exception v1

    .line 176
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "BackupManager"

    const-string v5, "beginRestoreSession() couldn\'t connect"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public dataChanged()V
    .registers 4

    .prologue
    .line 91
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 92
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_12

    .line 94
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    .line 99
    :cond_12
    :goto_12
    return-void

    .line 95
    :catch_13
    move-exception v0

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "transport"

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, obj:Landroid/content/Intent;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 218
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v2, :cond_e

    .line 220
    :try_start_8
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    .line 225
    .end local v1           #obj:Landroid/content/Intent;
    :cond_e
    :goto_e
    return-object v1

    .line 221
    .restart local v1       #obj:Landroid/content/Intent;
    :catch_f
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BackupManager"

    const-string v3, "getConfigurationIntent[Exception]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 5

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, str:Ljava/lang/String;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 231
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v2, :cond_e

    .line 233
    :try_start_8
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    .line 238
    .end local v1           #str:Ljava/lang/String;
    :cond_e
    :goto_e
    return-object v1

    .line 234
    .restart local v1       #str:Ljava/lang/String;
    :catch_f
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BackupManager"

    const-string v3, "getCurrentTransport[Exception]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "transport"

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, str:Ljava/lang/String;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 244
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v2, :cond_e

    .line 246
    :try_start_8
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    .line 251
    .end local v1           #str:Ljava/lang/String;
    :cond_e
    :goto_e
    return-object v1

    .line 247
    .restart local v1       #str:Ljava/lang/String;
    :catch_f
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BackupManager"

    const-string v3, "getDestinationString[Exception]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public requestRestore(Landroid/app/backup/RestoreObserver;)I
    .registers 10
    .parameter "observer"

    .prologue
    .line 142
    const/4 v2, -0x1

    .line 143
    .local v2, result:I
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 144
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v5, :cond_2c

    .line 145
    const/4 v3, 0x0

    .line 147
    .local v3, session:Landroid/app/backup/RestoreSession;
    :try_start_9
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v6, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .line 149
    .local v0, binder:Landroid/app/backup/IRestoreSession;
    new-instance v4, Landroid/app/backup/RestoreSession;

    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_3c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1d} :catch_2d

    .line 150
    .end local v3           #session:Landroid/app/backup/RestoreSession;
    .local v4, session:Landroid/app/backup/RestoreSession;
    :try_start_1d
    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroid/app/backup/RestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_46

    move-result v2

    .line 154
    if-eqz v4, :cond_2c

    .line 155
    invoke-virtual {v4}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 159
    .end local v0           #binder:Landroid/app/backup/IRestoreSession;
    .end local v4           #session:Landroid/app/backup/RestoreSession;
    :cond_2c
    :goto_2c
    return v2

    .line 151
    .restart local v3       #session:Landroid/app/backup/RestoreSession;
    :catch_2d
    move-exception v1

    .line 152
    .local v1, e:Landroid/os/RemoteException;
    :goto_2e
    :try_start_2e
    const-string v5, "BackupManager"

    const-string/jumbo v6, "restoreSelf() unable to contact service"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_3c

    .line 154
    if-eqz v3, :cond_2c

    .line 155
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    goto :goto_2c

    .line 154
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_3c
    move-exception v5

    :goto_3d
    if-eqz v3, :cond_42

    .line 155
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 154
    :cond_42
    throw v5

    .end local v3           #session:Landroid/app/backup/RestoreSession;
    .restart local v0       #binder:Landroid/app/backup/IRestoreSession;
    .restart local v4       #session:Landroid/app/backup/RestoreSession;
    :catchall_43
    move-exception v5

    move-object v3, v4

    .end local v4           #session:Landroid/app/backup/RestoreSession;
    .restart local v3       #session:Landroid/app/backup/RestoreSession;
    goto :goto_3d

    .line 151
    .end local v3           #session:Landroid/app/backup/RestoreSession;
    .restart local v4       #session:Landroid/app/backup/RestoreSession;
    :catch_46
    move-exception v1

    move-object v3, v4

    .end local v4           #session:Landroid/app/backup/RestoreSession;
    .restart local v3       #session:Landroid/app/backup/RestoreSession;
    goto :goto_2e
.end method

.method public setAutoRestore(Z)V
    .registers 5
    .parameter "doAutoRestore"

    .prologue
    .line 183
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 184
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_c

    .line 186
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    .line 191
    :cond_c
    :goto_c
    return-void

    .line 187
    :catch_d
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setAutoRestore[Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public setBackupEnabled(Z)V
    .registers 5
    .parameter "isEnabled"

    .prologue
    .line 194
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 195
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_c

    .line 197
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    .line 202
    :cond_c
    :goto_c
    return-void

    .line 198
    :catch_d
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setBackupEnabled[Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public setBackupProvisioned(Z)V
    .registers 5
    .parameter "isProvisioned"

    .prologue
    .line 205
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 206
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_c

    .line 208
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupProvisioned(Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    .line 213
    :cond_c
    :goto_c
    return-void

    .line 209
    :catch_d
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setBackupProvisioned[Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method
