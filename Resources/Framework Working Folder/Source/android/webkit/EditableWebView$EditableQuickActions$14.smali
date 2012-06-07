.class Landroid/webkit/EditableWebView$EditableQuickActions$14;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogAlignment(Landroid/content/Context;)V
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
    .line 2543
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$14;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2546
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2547
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$14;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2549
    packed-switch p2, :pswitch_data_26

    .line 2562
    :goto_d
    return-void

    .line 2551
    :pswitch_e
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$14;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->alignLeft()V

    goto :goto_d

    .line 2554
    :pswitch_16
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$14;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->alignJustified()V

    goto :goto_d

    .line 2557
    :pswitch_1e
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$14;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->alignRight()V

    goto :goto_d

    .line 2549
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_e
        :pswitch_16
        :pswitch_1e
    .end packed-switch
.end method
