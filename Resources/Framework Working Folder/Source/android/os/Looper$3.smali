.class final Landroid/os/Looper$3;
.super Ljava/lang/Object;
.source "Looper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/Looper;->showMessageHandleViolation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$windowManager:Landroid/view/IWindowManager;


# direct methods
.method constructor <init>(Landroid/view/IWindowManager;)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Landroid/os/Looper$3;->val$windowManager:Landroid/view/IWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Landroid/os/Looper$3;->val$windowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_a

    .line 241
    :try_start_4
    iget-object v0, p0, Landroid/os/Looper$3;->val$windowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->showMessageHandleViolation(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 245
    :cond_a
    :goto_a
    return-void

    .line 242
    :catch_b
    move-exception v0

    goto :goto_a
.end method
