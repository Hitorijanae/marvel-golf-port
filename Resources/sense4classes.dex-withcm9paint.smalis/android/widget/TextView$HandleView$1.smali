.class Landroid/widget/TextView$HandleView$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$HandleView;->showActionPopupWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$HandleView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/TextView$HandleView;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11821
    iput-object p1, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    iput-object p2, p0, Landroid/widget/TextView$HandleView$1;->val$view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 11823
    iget-object v0, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 11824
    iget-object v0, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    iget-boolean v0, v0, Landroid/widget/TextView$HandleView;->mIsInsertionHandle:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$6000(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mLongpressWhiteSpace:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$7500(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 11825
    :cond_24
    iget-object v0, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v1, p0, Landroid/widget/TextView$HandleView$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    iget-object v2, v2, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMenuWrapper:Landroid/widget/TextView$MenuWrapper;
    invoke-static {v2}, Landroid/widget/TextView;->access$7600(Landroid/widget/TextView;)Landroid/widget/TextView$MenuWrapper;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView$HandleView;->access$7700(Landroid/widget/TextView$HandleView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    iget-object v4, v4, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v4}, Landroid/widget/TextView;->access$6000(Landroid/widget/TextView;)Z

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    iget-object v5, v5, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mLongpressWhiteSpace:Z
    invoke-static {v5}, Landroid/widget/TextView;->access$7500(Landroid/widget/TextView;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareHtcPasteWindow(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZ)V

    .line 11826
    iget-object v0, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    #getter for: Landroid/widget/TextView$HandleView;->mIsDragging:Z
    invoke-static {v0}, Landroid/widget/TextView$HandleView;->access$7800(Landroid/widget/TextView$HandleView;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->showQuickAction()V
    invoke-static {v0}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;)V

    .line 11830
    :cond_5c
    :goto_5c
    return-void

    .line 11829
    :cond_5d
    iget-object v0, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$ActionPopupWindow;->show()V

    goto :goto_5c
.end method
