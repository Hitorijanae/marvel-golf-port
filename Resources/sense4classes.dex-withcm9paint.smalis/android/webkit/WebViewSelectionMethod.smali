.class public Landroid/webkit/WebViewSelectionMethod;
.super Ljava/lang/Object;
.source "WebViewSelectionMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewSelectionMethod$SelectionMode;
    }
.end annotation


# instance fields
.field private mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

.field private mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewSelectionMethod;->mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;

    .line 26
    sget-object v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    iput-object v0, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    return-void
.end method


# virtual methods
.method public getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    return-object v0
.end method

.method public setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z
    .registers 6
    .parameter "newMode"

    .prologue
    .line 34
    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v1, p1, :cond_6

    .line 35
    const/4 v1, 0x0

    .line 46
    :goto_5
    return v1

    .line 37
    :cond_6
    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;

    if-eqz v1, :cond_36

    .line 38
    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;

    iget-object v2, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {v2}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v2

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {p1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/textselection/SelectionWatcher;->onModeChanged(II)V

    .line 39
    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {v1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v0

    .line 40
    .local v0, cursorModeValue:I
    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {v1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v1

    if-gt v1, v0, :cond_3a

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {p1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v1

    if-le v1, v0, :cond_3a

    .line 41
    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {p1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/textselection/SelectionWatcher;->onStartSelection(I)V

    .line 45
    .end local v0           #cursorModeValue:I
    :cond_36
    :goto_36
    iput-object p1, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    .line 46
    const/4 v1, 0x1

    goto :goto_5

    .line 42
    .restart local v0       #cursorModeValue:I
    :cond_3a
    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {p1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v1

    if-gt v1, v0, :cond_36

    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {v1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v1

    if-le v1, v0, :cond_36

    .line 43
    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {p1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/textselection/SelectionWatcher;->onEndSelection(I)V

    goto :goto_36
.end method

.method public setSelectionWatcher(Lcom/htc/textselection/SelectionWatcher;)V
    .registers 2
    .parameter "watcher"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/webkit/WebViewSelectionMethod;->mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;

    .line 51
    return-void
.end method
