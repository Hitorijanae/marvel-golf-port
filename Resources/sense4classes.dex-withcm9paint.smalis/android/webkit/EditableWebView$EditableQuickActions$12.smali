.class Landroid/webkit/EditableWebView$EditableQuickActions$12;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 2486
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$12;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 8
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2490
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$12;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v2, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v1, v2, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2492
    packed-switch p2, :pswitch_data_34

    .line 2508
    :goto_b
    return-void

    .line 2495
    :pswitch_c
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$12;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions$12;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-boolean v3, v3, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontUnderline:Z

    if-nez v3, :cond_17

    :goto_14
    iput-boolean v0, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontUnderline:Z

    goto :goto_b

    :cond_17
    move v0, v1

    goto :goto_14

    .line 2499
    :pswitch_19
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$12;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions$12;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-boolean v3, v3, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontBold:Z

    if-nez v3, :cond_24

    :goto_21
    iput-boolean v0, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontBold:Z

    goto :goto_b

    :cond_24
    move v0, v1

    goto :goto_21

    .line 2503
    :pswitch_26
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$12;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions$12;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-boolean v3, v3, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontItalic:Z

    if-nez v3, :cond_31

    :goto_2e
    iput-boolean v0, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontItalic:Z

    goto :goto_b

    :cond_31
    move v0, v1

    goto :goto_2e

    .line 2492
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_c
        :pswitch_19
        :pswitch_26
    .end packed-switch
.end method
