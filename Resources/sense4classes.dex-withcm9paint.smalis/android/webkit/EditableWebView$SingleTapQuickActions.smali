.class Landroid/webkit/EditableWebView$SingleTapQuickActions;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Lcom/htc/textselection/QuickActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleTapQuickActions"
.end annotation


# static fields
.field private static final BUTTON_ID_OPEN_LINK:I = 0xe

.field private static final BUTTON_ID_PASTE:I


# instance fields
.field checkTimeout:Z

.field icon_open_link:Landroid/graphics/drawable/Drawable;

.field icon_paste:Landroid/graphics/drawable/Drawable;

.field str_open_link:Ljava/lang/String;

.field str_paste:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView;)V
    .registers 3
    .parameter

    .prologue
    .line 3448
    iput-object p1, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3459
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->checkTimeout:Z

    return-void
.end method

.method private canPaste()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3515
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3516
    .local v0, canPaste:Ljava/lang/Boolean;
    iget-object v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    if-eqz v4, :cond_aa

    iget-object v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 3517
    iget-object v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 3518
    .local v1, description:Landroid/content/ClipDescription;
    iget-boolean v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->checkTimeout:Z

    if-eqz v4, :cond_af

    .line 3520
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_65

    .line 3521
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3523
    .local v2, label:Ljava/lang/String;
    const-string v4, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 3524
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3526
    .local v3, timestamp:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gez v4, :cond_65

    .line 3527
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3534
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #timestamp:Ljava/lang/String;
    :cond_65
    :goto_65
    if-eqz v1, :cond_a6

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    iget-object v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ne v4, v9, :cond_aa

    iget-object v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_a6

    iget-object v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_aa

    .line 3539
    :cond_a6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3542
    .end local v1           #description:Landroid/content/ClipDescription;
    :cond_aa
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 3532
    .restart local v1       #description:Landroid/content/ClipDescription;
    :cond_af
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_65
.end method


# virtual methods
.method public loadResource(Landroid/content/Context;)V
    .registers 10
    .parameter "ctx"

    .prologue
    const/4 v7, 0x0

    .line 3463
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3464
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x2080257

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    .line 3465
    const v5, 0x104000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->str_paste:Ljava/lang/String;

    .line 3467
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3471
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string/jumbo v6, "http:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3472
    .local v4, target:Landroid/content/Intent;
    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3473
    .local v1, mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3f

    .line 3474
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3475
    .local v0, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    .line 3477
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    :cond_3f
    const v5, 0x204018c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->str_open_link:Ljava/lang/String;

    .line 3480
    return-void
.end method

.method public onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V
    .registers 6
    .parameter "actions"

    .prologue
    const/4 v3, 0x0

    .line 3485
    iget-object v0, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->str_paste:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v3, v0, v1}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 3486
    const/16 v0, 0xe

    iget-object v1, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->str_open_link:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 3487
    return-void
.end method

.method public onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V
    .registers 11
    .parameter "actions"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3493
    invoke-direct {p0}, Landroid/webkit/EditableWebView$SingleTapQuickActions;->canPaste()Z

    move-result v3

    .line 3494
    .local v3, bShowPaste:Z
    const/4 v2, 0x1

    .line 3497
    .local v2, bShowOpenLink:Z
    iget-object v7, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v8, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mEditingNode:I
    invoke-static {v8}, Landroid/webkit/EditableWebView;->access$2800(Landroid/webkit/EditableWebView;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/webkit/HTCWebCore;->nativeGetHREF(I)Ljava/lang/String;

    move-result-object v4

    .line 3498
    .local v4, href:Ljava/lang/String;
    if-eqz v4, :cond_41

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_41

    move v2, v5

    .line 3499
    :goto_1e
    iget-object v8, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    if-eqz v2, :cond_43

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_26
    #setter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v8, v7}, Landroid/webkit/EditableWebView;->access$3202(Landroid/webkit/EditableWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 3501
    invoke-interface {p1, v6, v5}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 3503
    invoke-interface {p1, v6, v6}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v1

    .line 3504
    .local v1, aPaste:Lcom/htc/textselection/Action;
    const/16 v5, 0xe

    invoke-interface {p1, v6, v5}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 3506
    .local v0, aLink:Lcom/htc/textselection/Action;
    if-eqz v1, :cond_3b

    .line 3507
    invoke-interface {v1, v3}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 3509
    :cond_3b
    if-eqz v0, :cond_40

    .line 3510
    invoke-interface {v0, v2}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 3512
    :cond_40
    return-void

    .end local v0           #aLink:Lcom/htc/textselection/Action;
    .end local v1           #aPaste:Lcom/htc/textselection/Action;
    :cond_41
    move v2, v6

    .line 3498
    goto :goto_1e

    .line 3499
    :cond_43
    const-string v7, ""

    goto :goto_26
.end method

.method public onQuickActionItemClicked(I)V
    .registers 4
    .parameter "actionID"

    .prologue
    .line 3548
    sparse-switch p1, :sswitch_data_1c

    .line 3556
    :goto_3
    iget-object v0, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 3557
    return-void

    .line 3550
    :sswitch_9
    iget-object v0, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->pasteLatestContentFromClipboard()V

    goto :goto_3

    .line 3553
    :sswitch_f
    iget-object v0, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/EditableWebView;->access$3200(Landroid/webkit/EditableWebView;)Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/webkit/EditableWebView;->openLink(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView;->access$4100(Landroid/webkit/EditableWebView;Ljava/lang/String;)V

    goto :goto_3

    .line 3548
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_9
        0xe -> :sswitch_f
    .end sparse-switch
.end method
