.class Landroid/app/HtcFragmentBreadCrumbs$1;
.super Ljava/lang/Object;
.source "HtcFragmentBreadCrumbs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/HtcFragmentBreadCrumbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/HtcFragmentBreadCrumbs;


# direct methods
.method constructor <init>(Landroid/app/HtcFragmentBreadCrumbs;)V
    .registers 2
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Landroid/app/HtcFragmentBreadCrumbs$1;->this$0:Landroid/app/HtcFragmentBreadCrumbs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/app/FragmentManager$BackStackEntry;

    if-eqz v1, :cond_26

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    .line 313
    .local v0, bse:Landroid/app/FragmentManager$BackStackEntry;
    iget-object v1, p0, Landroid/app/HtcFragmentBreadCrumbs$1;->this$0:Landroid/app/HtcFragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/HtcFragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-ne v0, v1, :cond_27

    .line 314
    iget-object v1, p0, Landroid/app/HtcFragmentBreadCrumbs$1;->this$0:Landroid/app/HtcFragmentBreadCrumbs;

    #getter for: Landroid/app/HtcFragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Landroid/app/HtcFragmentBreadCrumbs;->access$000(Landroid/app/HtcFragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 315
    iget-object v1, p0, Landroid/app/HtcFragmentBreadCrumbs$1;->this$0:Landroid/app/HtcFragmentBreadCrumbs;

    #getter for: Landroid/app/HtcFragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Landroid/app/HtcFragmentBreadCrumbs;->access$000(Landroid/app/HtcFragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 332
    .end local v0           #bse:Landroid/app/FragmentManager$BackStackEntry;
    :cond_26
    :goto_26
    return-void

    .line 318
    .restart local v0       #bse:Landroid/app/FragmentManager$BackStackEntry;
    :cond_27
    iget-object v1, p0, Landroid/app/HtcFragmentBreadCrumbs$1;->this$0:Landroid/app/HtcFragmentBreadCrumbs;

    #getter for: Landroid/app/HtcFragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/HtcFragmentBreadCrumbs$OnBreadCrumbClickListener;
    invoke-static {v1}, Landroid/app/HtcFragmentBreadCrumbs;->access$100(Landroid/app/HtcFragmentBreadCrumbs;)Landroid/app/HtcFragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 319
    iget-object v1, p0, Landroid/app/HtcFragmentBreadCrumbs$1;->this$0:Landroid/app/HtcFragmentBreadCrumbs;

    #getter for: Landroid/app/HtcFragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/HtcFragmentBreadCrumbs$OnBreadCrumbClickListener;
    invoke-static {v1}, Landroid/app/HtcFragmentBreadCrumbs;->access$100(Landroid/app/HtcFragmentBreadCrumbs;)Landroid/app/HtcFragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object v2

    iget-object v1, p0, Landroid/app/HtcFragmentBreadCrumbs$1;->this$0:Landroid/app/HtcFragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/HtcFragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-ne v0, v1, :cond_54

    const/4 v1, 0x0

    :goto_3c
    invoke-interface {v2, v1, v3}, Landroid/app/HtcFragmentBreadCrumbs$OnBreadCrumbClickListener;->onBreadCrumbClick(Landroid/app/FragmentManager$BackStackEntry;I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 324
    :cond_42
    iget-object v1, p0, Landroid/app/HtcFragmentBreadCrumbs$1;->this$0:Landroid/app/HtcFragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/HtcFragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-ne v0, v1, :cond_56

    .line 326
    iget-object v1, p0, Landroid/app/HtcFragmentBreadCrumbs$1;->this$0:Landroid/app/HtcFragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/HtcFragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_26

    :cond_54
    move-object v1, v0

    .line 319
    goto :goto_3c

    .line 328
    :cond_56
    iget-object v1, p0, Landroid/app/HtcFragmentBreadCrumbs$1;->this$0:Landroid/app/HtcFragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/HtcFragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(II)V

    goto :goto_26
.end method
