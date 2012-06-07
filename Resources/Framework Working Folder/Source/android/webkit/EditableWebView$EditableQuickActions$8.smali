.class Landroid/webkit/EditableWebView$EditableQuickActions$8;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontsize(Landroid/content/Context;)V
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
    .line 2363
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 2366
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2367
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v2, v0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2369
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v1, v1, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getFontSize()I

    move-result v1

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->getFontSizeIdx(I)I
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4900(Landroid/webkit/EditableWebView$EditableQuickActions;I)I

    move-result v0

    if-ne p2, v0, :cond_2f

    .line 2370
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 2371
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, v2}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 2395
    :goto_2e
    return-void

    .line 2374
    :cond_2f
    packed-switch p2, :pswitch_data_58

    goto :goto_2e

    .line 2376
    :pswitch_33
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetFontSize(I)V

    goto :goto_2e

    .line 2379
    :pswitch_3c
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetFontSize(I)V

    goto :goto_2e

    .line 2382
    :pswitch_45
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetFontSize(I)V

    goto :goto_2e

    .line 2385
    :pswitch_4e
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetFontSize(I)V

    goto :goto_2e

    .line 2374
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_33
        :pswitch_3c
        :pswitch_45
        :pswitch_4e
    .end packed-switch
.end method
