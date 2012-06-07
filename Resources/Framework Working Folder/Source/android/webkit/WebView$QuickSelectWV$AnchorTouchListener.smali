.class Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView$QuickSelectWV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorTouchListener"
.end annotation


# static fields
.field static final ANCHOR_FLY_THRESHOLD_MILLI:J = 0x64L


# instance fields
.field private isPriorAnchor:Z

.field private mConfirmMove:Z

.field private mDownX:I

.field private mDownY:I

.field private mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

.field private mUpdateTime:J

.field final synthetic this$1:Landroid/webkit/WebView$QuickSelectWV;

.field private touchOffset:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$QuickSelectWV;)V
    .registers 4
    .parameter

    .prologue
    .line 14098
    iput-object p1, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14099
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    .line 14102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 14103
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    .line 14106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mUpdateTime:J

    return-void
.end method

.method static synthetic access$16700(Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 14098
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    return v0
.end method

.method private getTouchAnchor(Landroid/view/View;)Lcom/htc/textselection/SelectionAnchor;
    .registers 6
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 14109
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    .line 14110
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 14112
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_f

    .line 14121
    .end local v0           #child:Landroid/view/View;
    :cond_e
    :goto_e
    return-object v1

    .line 14113
    .restart local v0       #child:Landroid/view/View;
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/SelectionAnchor;->PRIOR_ANCHOR:Ljava/lang/Object;

    if-ne v2, v3, :cond_1c

    .line 14114
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v1, v1, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto :goto_e

    .line 14115
    :cond_1c
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/SelectionAnchor;->POST_ANCHOR:Ljava/lang/Object;

    if-ne v2, v3, :cond_e

    .line 14116
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v1, v1, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto :goto_e
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v12, 0x3f00

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 14126
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-nez v6, :cond_1f

    .line 14127
    invoke-direct {p0, p1}, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->getTouchAnchor(Landroid/view/View;)Lcom/htc/textselection/SelectionAnchor;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 14128
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-nez v6, :cond_14

    move v7, v8

    .line 14364
    :goto_13
    return v7

    .line 14131
    :cond_14
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-ne v6, v9, :cond_11a

    move v6, v7

    :goto_1d
    iput-boolean v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    .line 14142
    :cond_1f
    const/4 v6, 0x2

    new-array v4, v6, [I

    fill-array-data v4, :array_32c

    .line 14143
    .local v4, onScreenOffset:[I
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 14144
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/webkit/WebView$QuickSelectWV;->spacialDeNoise(FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 14146
    .local v5, p:Landroid/graphics/PointF;
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$17000(Landroid/webkit/WebView;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aget v10, v4, v8

    int-to-float v10, v10

    sub-float/2addr v9, v10

    add-float/2addr v9, v12

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 14147
    .local v0, contentX:I
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v9, v5, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$17100(Landroid/webkit/WebView;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aget v10, v4, v7

    int-to-float v10, v10

    sub-float/2addr v9, v10

    add-float/2addr v9, v12

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 14149
    .local v1, contentY:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_334

    goto :goto_13

    .line 14151
    :pswitch_76
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v6}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v6

    sget-object v9, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v6, v9, :cond_8b

    .line 14152
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v9, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v6, v9}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 14154
    :cond_8b
    iput-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mConfirmMove:Z

    .line 14155
    iget v6, v5, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iput v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mDownX:I

    .line 14156
    iget v6, v5, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    iput v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mDownY:I

    .line 14158
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v6, v6, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v6, v9}, Landroid/webkit/WebView$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    .line 14161
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v6, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    iget-boolean v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v6, :cond_11d

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    :goto_b0
    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14162
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    sub-int/2addr v9, v0

    iput v9, v6, Landroid/graphics/Point;->x:I

    .line 14163
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    sub-int/2addr v9, v1

    iput v9, v6, Landroid/graphics/Point;->y:I

    .line 14166
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView$QuickSelectWV;->hideQuickActions(Z)V

    .line 14169
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v6, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget-boolean v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v6, :cond_122

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    :goto_de
    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14170
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iput-boolean v7, v6, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 14172
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->emptyCanvas:Landroid/graphics/Canvas;

    #calls: Landroid/webkit/WebView;->drawQuickSelect(Landroid/graphics/Canvas;)V
    invoke-static {v6, v9}, Landroid/webkit/WebView;->access$17200(Landroid/webkit/WebView;Landroid/graphics/Canvas;)V

    .line 14173
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v11}, Landroid/webkit/WebView;->access$17300(Landroid/webkit/WebView;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    aget v8, v4, v8

    int-to-float v8, v8

    sub-float v8, v10, v8

    add-float/2addr v8, v12

    float-to-int v8, v8

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    invoke-virtual {v6, v9, v8, v10}, Landroid/webkit/WebView$QuickSelectWV;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_13

    .end local v0           #contentX:I
    .end local v1           #contentY:I
    .end local v4           #onScreenOffset:[I
    .end local v5           #p:Landroid/graphics/PointF;
    :cond_11a
    move v6, v8

    .line 14131
    goto/16 :goto_1d

    .line 14161
    .restart local v0       #contentX:I
    .restart local v1       #contentY:I
    .restart local v4       #onScreenOffset:[I
    .restart local v5       #p:Landroid/graphics/PointF;
    :cond_11d
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    goto :goto_b0

    .line 14169
    :cond_122
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    goto :goto_de

    .line 14180
    :pswitch_127
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v6

    .line 14181
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v6

    .line 14184
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v6, v6, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/webkit/WebView$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    move-result v2

    .line 14187
    .local v2, isScrolling:Z
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_157

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1a0

    .line 14190
    :cond_157
    if-eqz v2, :cond_162

    .line 14191
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v6}, Landroid/webkit/MagnifyView;->dismiss()V

    goto/16 :goto_13

    .line 14194
    :cond_162
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v6, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget-boolean v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v6, :cond_19b

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    :goto_16e
    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14195
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v11}, Landroid/webkit/WebView;->access$17400(Landroid/webkit/WebView;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    aget v8, v4, v8

    int-to-float v8, v8

    sub-float v8, v10, v8

    add-float/2addr v8, v12

    float-to-int v8, v8

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    invoke-virtual {v6, v9, v8, v10}, Landroid/webkit/WebView$QuickSelectWV;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_13

    .line 14194
    :cond_19b
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    goto :goto_16e

    .line 14209
    :cond_1a0
    const/4 v3, 0x0

    .line 14211
    .local v3, movingRect:Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->oSelStart:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14212
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->oSelEnd:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14213
    iget-boolean v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v6, :cond_251

    .line 14214
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14215
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    invoke-virtual {v6, v0, v1, v9, v10}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 14217
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static {v6, v9}, Landroid/webkit/WebView;->access$15600(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 14219
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 14220
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v3, v6, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    .line 14223
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_216

    .line 14224
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-boolean v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-nez v6, :cond_24f

    move v6, v7

    :goto_20c
    iput-boolean v6, v9, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 14226
    iput-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    .line 14227
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iput-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 14255
    :cond_216
    :goto_216
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->oSelStart:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_232

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->oSelEnd:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_238

    .line 14257
    :cond_232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mUpdateTime:J

    .line 14283
    :cond_238
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    #calls: Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V
    invoke-static {v6}, Landroid/webkit/WebView$QuickSelectWV;->access$17500(Landroid/webkit/WebView$QuickSelectWV;)V

    .line 14285
    if-eqz v2, :cond_2b0

    .line 14286
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v6}, Landroid/webkit/MagnifyView;->dismiss()V

    .line 14294
    :goto_246
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_13

    :cond_24f
    move v6, v8

    .line 14224
    goto :goto_20c

    .line 14234
    :cond_251
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14235
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    invoke-virtual {v6, v9, v10, v0, v1}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 14236
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 14238
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static {v6, v9}, Landroid/webkit/WebView;->access$15600(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 14239
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v3, v6, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    .line 14242
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_216

    .line 14243
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-boolean v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-nez v6, :cond_2ae

    move v6, v7

    :goto_2a2
    iput-boolean v6, v9, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 14245
    iput-boolean v7, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    .line 14246
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iput-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto/16 :goto_216

    :cond_2ae
    move v6, v8

    .line 14243
    goto :goto_2a2

    .line 14289
    :cond_2b0
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v6, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget-boolean v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v6, :cond_2e9

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    :goto_2bc
    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14290
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v11}, Landroid/webkit/WebView;->access$17600(Landroid/webkit/WebView;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    aget v8, v4, v8

    int-to-float v8, v8

    sub-float v8, v10, v8

    add-float/2addr v8, v12

    float-to-int v8, v8

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    invoke-virtual {v6, v9, v8, v10}, Landroid/webkit/WebView$QuickSelectWV;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_246

    .line 14289
    :cond_2e9
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    goto :goto_2bc

    .line 14301
    .end local v2           #isScrolling:Z
    .end local v3           #movingRect:Landroid/graphics/Rect;
    :pswitch_2ee
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v6, v6, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v6}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    .line 14304
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iput-boolean v8, v6, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 14305
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v6}, Landroid/webkit/MagnifyView;->dismiss()V

    .line 14307
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iput-boolean v8, v6, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 14308
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->invalidate()V

    .line 14312
    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v6}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v6

    const v9, 0x13e9a9

    iget-boolean v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v10, :cond_31d

    move v8, v7

    :cond_31d
    iget-wide v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mUpdateTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v8, v10}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    .line 14360
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto/16 :goto_13

    .line 14142
    nop

    :array_32c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 14149
    :pswitch_data_334
    .packed-switch 0x0
        :pswitch_76
        :pswitch_2ee
        :pswitch_127
        :pswitch_2ee
    .end packed-switch
.end method
