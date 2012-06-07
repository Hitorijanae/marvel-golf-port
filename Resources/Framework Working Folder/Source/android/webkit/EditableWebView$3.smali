.class Landroid/webkit/EditableWebView$3;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView;)V
    .registers 2
    .parameter

    .prologue
    .line 3249
    iput-object p1, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 17
    .parameter "v"
    .parameter "event"

    .prologue
    .line 3251
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3252
    .local v0, action:I
    const/4 v9, 0x2

    new-array v4, v9, [I

    fill-array-data v4, :array_180

    .line 3253
    .local v4, offset:[I
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v9, v4}, Landroid/webkit/EditableWebView;->getLocationInWindow([I)V

    .line 3254
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x0

    aget v11, v4, v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x1

    aget v12, v4, v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    #calls: Landroid/webkit/EditableWebView;->spacialDeNoise(FF)Landroid/graphics/PointF;
    invoke-static {v9, v10, v11}, Landroid/webkit/EditableWebView;->access$1300(Landroid/webkit/EditableWebView;FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 3255
    .local v5, p:Landroid/graphics/PointF;
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    float-to-int v10, v10

    iget-object v11, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v11}, Landroid/webkit/EditableWebView;->access$5700(Landroid/webkit/EditableWebView;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v1

    .line 3256
    .local v1, contentX:I
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget v10, v5, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    iget-object v11, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v11}, Landroid/webkit/EditableWebView;->access$5800(Landroid/webkit/EditableWebView;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v2

    .line 3257
    .local v2, contentY:I
    packed-switch v0, :pswitch_data_188

    .line 3310
    :cond_4c
    :goto_4c
    const/4 v9, 0x1

    return v9

    .line 3259
    :pswitch_4e
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    iget-object v10, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    .line 3263
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    add-int/lit8 v10, v1, -0xa

    add-int/lit8 v11, v2, -0xa

    add-int/lit8 v12, v1, 0xa

    add-int/lit8 v13, v2, 0xa

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 3264
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    const/4 v10, 0x0

    #setter for: Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;
    invoke-static {v9, v10}, Landroid/webkit/EditableWebView;->access$1202(Landroid/webkit/EditableWebView;Lcom/htc/textselection/SelectionAnchor;)Lcom/htc/textselection/SelectionAnchor;

    .line 3265
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v1, v2, v10, v11}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    .line 3266
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v10, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v9, v10}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 3267
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebView$QuickSelectAbs;->hideQuickActions(Z)V

    .line 3268
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$900(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$EditableQuickActions;

    move-result-object v9

    if-eqz v9, :cond_9b

    .line 3269
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$900(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$EditableQuickActions;

    move-result-object v9

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    .line 3270
    :cond_9b
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v9}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    goto :goto_4c

    .line 3273
    :pswitch_a1
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/webkit/WebView$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    .line 3277
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_4c

    .line 3278
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e5

    .line 3279
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-ge v2, v9, :cond_f1

    .line 3280
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    .line 3287
    :goto_dc
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 3289
    :cond_e5
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v1, v2, v10}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    goto/16 :goto_4c

    .line 3281
    :cond_f1
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v9, :cond_106

    .line 3282
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    goto :goto_dc

    .line 3283
    :cond_106
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    if-ge v1, v9, :cond_11b

    .line 3284
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    goto :goto_dc

    .line 3286
    :cond_11b
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    goto :goto_dc

    .line 3293
    :pswitch_126
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v9}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    .line 3294
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 3295
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 3296
    .local v6, r:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v9, v6}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v8

    .line 3297
    .local v8, type:I
    const/4 v9, 0x1

    if-le v8, v9, :cond_4c

    .line 3298
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    const/16 v10, 0x73

    invoke-virtual {v9, v10}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 3299
    .local v7, start:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 3300
    .local v3, end:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 3301
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 3302
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v9, v7, v3}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3304
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$6000(Landroid/webkit/EditableWebView;)Landroid/webkit/WebView$WrapActions;

    move-result-object v9

    if-eqz v9, :cond_4c

    .line 3305
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v10, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;
    invoke-static {v10}, Landroid/webkit/EditableWebView;->access$6000(Landroid/webkit/EditableWebView;)Landroid/webkit/WebView$WrapActions;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/EditableWebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto/16 :goto_4c

    .line 3252
    nop

    :array_180
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 3257
    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_126
        :pswitch_a1
    .end packed-switch
.end method
