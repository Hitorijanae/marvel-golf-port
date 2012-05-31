.class Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/internal/ListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V
    .registers 2
    .parameter

    .prologue
    .line 1673
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1673
    invoke-direct {p0, p1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 6

    .prologue
    .line 1678
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1680
    .local v0, threadHashCode:I
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->constructThreadHash:I
    invoke-static {v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$700(Lcom/htc/widget/internal/ListPopupBubbleWindow;)I

    move-result v2

    if-eq v0, v2, :cond_39

    .line 1681
    const-string v2, "ListPopupBubbleWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "thread changed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->constructThreadHash:I
    invoke-static {v4}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$700(Lcom/htc/widget/internal/ListPopupBubbleWindow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_39
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$600(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-result-object v2

    if-nez v2, :cond_51

    .line 1685
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "borranx Strange! mDropDownList is null when showing"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1700
    :cond_50
    :goto_50
    return-void

    .line 1689
    :cond_51
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1691
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$800(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_7a

    .line 1692
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    iget-object v3, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$800(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Landroid/widget/ListAdapter;

    move-result-object v3

    #calls: Lcom/htc/widget/internal/ListPopupBubbleWindow;->measureContentWidth(Landroid/widget/ListAdapter;)I
    invoke-static {v2, v3}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$900(Lcom/htc/widget/internal/ListPopupBubbleWindow;Landroid/widget/ListAdapter;)I

    move-result v1

    .line 1693
    .local v1, width:I
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I
    invoke-static {v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->access$1000(Lcom/htc/widget/internal/ListPopupBubbleWindow;)I

    move-result v2

    if-le v1, v2, :cond_7a

    .line 1694
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v2, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 1698
    .end local v1           #width:I
    :cond_7a
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->show()V

    goto :goto_50
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->dismiss()V

    .line 1706
    return-void
.end method
