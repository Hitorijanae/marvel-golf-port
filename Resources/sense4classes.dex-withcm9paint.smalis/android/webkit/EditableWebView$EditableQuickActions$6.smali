.class Landroid/webkit/EditableWebView$EditableQuickActions$6;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontStyle(Landroid/content/Context;)V
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
    .line 2293
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$6;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2296
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2297
    packed-switch p2, :pswitch_data_38

    .line 2313
    :goto_6
    return-void

    .line 2299
    :pswitch_7
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$6;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$6;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4200(Landroid/webkit/EditableWebView$EditableQuickActions;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontsize(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4500(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V

    goto :goto_6

    .line 2302
    :pswitch_13
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$6;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$6;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4200(Landroid/webkit/EditableWebView$EditableQuickActions;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontcolor(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4600(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V

    goto :goto_6

    .line 2305
    :pswitch_1f
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$6;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$6;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4200(Landroid/webkit/EditableWebView$EditableQuickActions;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogSettings(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4700(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V

    goto :goto_6

    .line 2308
    :pswitch_2b
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$6;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$6;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4200(Landroid/webkit/EditableWebView$EditableQuickActions;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogAlignment(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4800(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V

    goto :goto_6

    .line 2297
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_7
        :pswitch_13
        :pswitch_1f
        :pswitch_2b
    .end packed-switch
.end method
