.class Landroid/webkit/EditableWebView$4;
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
    .line 3319
    iput-object p1, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "v"
    .parameter "event"

    .prologue
    .line 3321
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3322
    .local v0, action:I
    const/4 v7, 0x2

    new-array v3, v7, [I

    fill-array-data v3, :array_154

    .line 3323
    .local v3, offset:[I
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7, v3}, Landroid/webkit/EditableWebView;->getLocationInWindow([I)V

    .line 3324
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x0

    aget v9, v3, v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    #calls: Landroid/webkit/EditableWebView;->spacialDeNoise(FF)Landroid/graphics/PointF;
    invoke-static {v7, v8, v9}, Landroid/webkit/EditableWebView;->access$1300(Landroid/webkit/EditableWebView;FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 3325
    .local v4, p:Landroid/graphics/PointF;
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget v8, v4, Landroid/graphics/PointF;->x:F

    float-to-int v8, v8

    iget-object v9, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$6100(Landroid/webkit/EditableWebView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v1

    .line 3326
    .local v1, contentX:I
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget v8, v4, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    iget-object v9, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$6200(Landroid/webkit/EditableWebView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v2

    .line 3327
    .local v2, contentY:I
    packed-switch v0, :pswitch_data_15c

    .line 3371
    :cond_4c
    :goto_4c
    const/4 v7, 0x1

    return v7

    .line 3329
    :pswitch_4e
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    iget-object v8, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    .line 3333
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    add-int/lit8 v8, v1, -0xa

    add-int/lit8 v9, v2, -0xa

    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v11, v2, 0xa

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 3334
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v1, v2, v8, v9}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    .line 3335
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v8, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->PEN_HIGHLIGHT:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 3336
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v7}, Landroid/webkit/WebView$QuickSelectAbs;->dismissAnchor()V

    .line 3337
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebView$QuickSelectAbs;->hideQuickActions(Z)V

    .line 3338
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    goto :goto_4c

    .line 3341
    :pswitch_91
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    .line 3345
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_4c

    .line 3346
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d5

    .line 3347
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v2, v7, :cond_e1

    .line 3348
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    .line 3355
    :goto_cc
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 3357
    :cond_d5
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v2, v8}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    goto/16 :goto_4c

    .line 3349
    :cond_e1
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v7, :cond_f6

    .line 3350
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    goto :goto_cc

    .line 3351
    :cond_f6
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v1, v7, :cond_10b

    .line 3352
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    goto :goto_cc

    .line 3354
    :cond_10b
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    goto :goto_cc

    .line 3361
    :pswitch_116
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v7}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    .line 3362
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v8, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 3363
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5900(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 3364
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 3365
    .local v5, r:Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7, v5}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v6

    .line 3366
    .local v6, type:I
    const/4 v7, 0x1

    if-le v6, v7, :cond_4c

    .line 3367
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget v8, v8, Landroid/webkit/WebView;->m_nSelectHighlightColor:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    .line 3368
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v2, v8}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    goto/16 :goto_4c

    .line 3322
    nop

    :array_154
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 3327
    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_116
        :pswitch_91
    .end packed-switch
.end method
