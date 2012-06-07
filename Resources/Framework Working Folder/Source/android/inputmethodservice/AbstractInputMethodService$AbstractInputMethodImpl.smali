.class public abstract Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.super Ljava/lang/Object;
.source "AbstractInputMethodService.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/AbstractInputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractInputMethodImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/AbstractInputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/AbstractInputMethodService;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 63
    if-eqz p1, :cond_b

    .line 64
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/inputmethod/InputMethod$SessionCallback;->sessionCreated(Landroid/view/inputmethod/InputMethodSession;)V

    .line 65
    :cond_b
    return-void
.end method

.method public revokeSession(Landroid/view/inputmethod/InputMethodSession;)V
    .registers 3
    .parameter "session"

    .prologue
    .line 83
    instance-of v0, p1, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;

    if-eqz v0, :cond_9

    .line 84
    check-cast p1, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;

    .end local p1
    invoke-virtual {p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->revokeSelf()V

    .line 85
    :cond_9
    return-void
.end method

.method public setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V
    .registers 4
    .parameter "session"
    .parameter "enabled"

    .prologue
    .line 73
    instance-of v0, p1, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;

    if-eqz v0, :cond_9

    .line 74
    check-cast p1, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;

    .end local p1
    invoke-virtual {p1, p2}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->setEnabled(Z)V

    .line 75
    :cond_9
    return-void
.end method
