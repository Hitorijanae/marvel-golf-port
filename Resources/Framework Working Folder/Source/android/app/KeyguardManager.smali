.class public Landroid/app/KeyguardManager;
.super Ljava/lang/Object;
.source "KeyguardManager.java"

# interfaces
.implements Landroid/app/HtcIfKeyguardManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/KeyguardManager$OnKeyguardExitResult;,
        Landroid/app/KeyguardManager$KeyguardLock;
    }
.end annotation


# instance fields
.field private mWM:Landroid/view/IWindowManager;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    .line 112
    return-void
.end method

.method static synthetic access$000(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    return-object v0
.end method


# virtual methods
.method public clearIdleScreen()V
    .registers 2

    .prologue
    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->clearIdleScreen()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 244
    :goto_5
    return-void

    .line 241
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .registers 4
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    new-instance v1, Landroid/app/KeyguardManager$1;

    invoke-direct {v1, p0, p1}, Landroid/app/KeyguardManager$1;-><init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 227
    :goto_a
    return-void

    .line 224
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public getIdleScreenLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getIdleScreenLabel()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 268
    :goto_6
    return-object v0

    .line 265
    :catch_7
    move-exception v0

    .line 268
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hideIdleScreen()V
    .registers 2

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->hideIdleScreen()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 260
    :goto_5
    return-void

    .line 257
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public inKeyguardRestrictedInputMode()Z
    .registers 3

    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->inKeyguardRestrictedInputMode()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 182
    :goto_6
    return v1

    .line 181
    :catch_7
    move-exception v0

    .line 182
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isKeyguardLocked()Z
    .registers 3

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 148
    :goto_6
    return v1

    .line 147
    :catch_7
    move-exception v0

    .line 148
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isKeyguardSecure()Z
    .registers 3

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 165
    :goto_6
    return v1

    .line 164
    :catch_7
    move-exception v0

    .line 165
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public keyguardIsShowing()Z
    .registers 3

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 191
    :goto_6
    return v1

    .line 190
    :catch_7
    move-exception v0

    .line 191
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;
    .registers 3
    .parameter "tag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    new-instance v0, Landroid/app/KeyguardManager$KeyguardLock;

    invoke-direct {v0, p0, p1}, Landroid/app/KeyguardManager$KeyguardLock;-><init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public setIdleScreen(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setIdleScreen(Landroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 236
    :goto_5
    return-void

    .line 233
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setShowKeyguard(Z)V
    .registers 3
    .parameter "showLockScreen"

    .prologue
    .line 274
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setShowKeyguard(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 278
    :goto_5
    return-void

    .line 275
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public showIdleScreen()V
    .registers 2

    .prologue
    .line 248
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->showIdleScreen()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 252
    :goto_5
    return-void

    .line 249
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public showKeyguardWithAnimation(Z)V
    .registers 3
    .parameter "showLockScreen"

    .prologue
    .line 282
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->showKeyguardWithAnimation(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 286
    :goto_5
    return-void

    .line 283
    :catch_6
    move-exception v0

    goto :goto_5
.end method
