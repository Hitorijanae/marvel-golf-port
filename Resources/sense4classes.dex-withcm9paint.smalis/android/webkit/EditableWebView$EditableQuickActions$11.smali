.class Landroid/webkit/EditableWebView$EditableQuickActions$11;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogSettings(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/EditableWebView$EditableQuickActions;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V
    .registers 2
    .parameter

    .prologue
    .line 2510
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$11;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2513
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$11;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-boolean v3, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontUnderline:Z

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$11;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v2, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getUnderlineState()I

    move-result v2

    if-eqz v2, :cond_68

    move v2, v1

    :goto_11
    if-eq v3, v2, :cond_1a

    .line 2514
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$11;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v2, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->toggleUnderline()V

    .line 2515
    :cond_1a
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$11;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-boolean v3, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontBold:Z

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$11;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v2, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getBoldState()I

    move-result v2

    if-eqz v2, :cond_6a

    move v2, v1

    :goto_29
    if-eq v3, v2, :cond_32

    .line 2516
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$11;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v2, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->toggleBold()V

    .line 2517
    :cond_32
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$11;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-boolean v2, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontItalic:Z

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions$11;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v3, v3, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v3}, Landroid/webkit/EditableWebView;->getItalicState()I

    move-result v3

    if-eqz v3, :cond_41

    move v0, v1

    :cond_41
    if-eq v2, v0, :cond_4a

    .line 2518
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$11;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->toggleItalic()V

    .line 2521
    :cond_4a
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$11;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v1, v0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2522
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$11;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 2523
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$11;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 2524
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2525
    return-void

    :cond_68
    move v2, v0

    .line 2513
    goto :goto_11

    :cond_6a
    move v2, v0

    .line 2515
    goto :goto_29
.end method
