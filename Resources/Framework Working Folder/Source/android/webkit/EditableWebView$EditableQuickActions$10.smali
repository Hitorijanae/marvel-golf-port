.class Landroid/webkit/EditableWebView$EditableQuickActions$10;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontcolor(Landroid/content/Context;)V
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
    .line 2421
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2424
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2425
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2427
    packed-switch p2, :pswitch_data_70

    .line 2453
    :goto_d
    return-void

    .line 2429
    :pswitch_e
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nWhiteColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$5000(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_d

    .line 2432
    :pswitch_1c
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlackColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$5100(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_d

    .line 2435
    :pswitch_2a
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGrayColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$5200(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_d

    .line 2438
    :pswitch_38
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$5300(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_d

    .line 2441
    :pswitch_46
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$5400(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_d

    .line 2444
    :pswitch_54
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$5500(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_d

    .line 2447
    :pswitch_62
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$5600(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_d

    .line 2427
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_e
        :pswitch_1c
        :pswitch_2a
        :pswitch_38
        :pswitch_46
        :pswitch_54
        :pswitch_62
    .end packed-switch
.end method
