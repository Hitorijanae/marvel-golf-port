.class public Landroid/webkit/WebViewAutoScroller;
.super Ljava/lang/Object;
.source "WebViewAutoScroller.java"


# static fields
.field private static final AUTO_SCROLL_DELAY:I = 0x14

.field private static final AUTO_SCROLL_STEP_MAGNIFICATION:F = 1.065f

.field private static final INITIAL_AUTO_SCROLL_DELAY:I = 0xfa

.field private static final INITIAL_AUTO_SCROLL_STEP:F = 0.07f

.field private static final LINE_HEIGHT:I = 0x14

.field private static final MSG_AUTO_SCROLL:I = 0x1


# instance fields
.field private AUTO_SCROLL_STEP:F

.field private mAnchorRelatedPositionX:I

.field private mAnchorRelatedPositionY:I

.field private mAutoScrollChanged:Z

.field private mAutoScrollEnabled:Z

.field private mPrivateHandler:Landroid/os/Handler;

.field private mScreenOffset:[I

.field private mScrollableView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    .line 22
    iput v0, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    .line 24
    iput-boolean v0, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollChanged:Z

    .line 25
    iput-boolean v0, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollEnabled:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    iput-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mScreenOffset:[I

    .line 30
    new-instance v0, Landroid/webkit/WebViewAutoScroller$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewAutoScroller$1;-><init>(Landroid/webkit/WebViewAutoScroller;)V

    iput-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mPrivateHandler:Landroid/os/Handler;

    return-void

    .line 28
    nop

    :array_20
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/webkit/WebViewAutoScroller;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/webkit/WebViewAutoScroller;->doAutoScroll(Landroid/os/Message;)V

    return-void
.end method

.method private doAutoScroll(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/4 v9, -0x1

    const/16 v12, 0x5d

    const/4 v10, 0x1

    const/4 v13, 0x0

    .line 90
    iput-boolean v13, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollChanged:Z

    .line 92
    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    if-nez v8, :cond_c

    .line 131
    :goto_b
    return-void

    .line 95
    :cond_c
    const/4 v1, 0x0

    .line 96
    .local v1, dx:F
    const/4 v2, 0x0

    .line 97
    .local v2, dy:F
    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollX()I

    move-result v5

    .line 98
    .local v5, scrollX:I
    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v6

    .line 100
    .local v6, scrollY:I
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v12, :cond_2f

    .line 101
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-gez v8, :cond_98

    move v8, v9

    :goto_27
    int-to-float v8, v8

    iget v11, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    mul-float/2addr v8, v11

    const/high16 v11, 0x3f40

    mul-float v1, v8, v11

    .line 102
    :cond_2f
    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v12, :cond_40

    .line 103
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-gez v8, :cond_9a

    :goto_3b
    int-to-float v8, v9

    iget v9, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    mul-float v2, v8, v9

    .line 105
    :cond_40
    float-to-int v8, v1

    add-int v3, v5, v8

    .line 106
    .local v3, nx:I
    float-to-int v8, v2

    add-int v4, v6, v8

    .line 108
    .local v4, ny:I
    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    instance-of v8, v8, Landroid/webkit/WebView;

    if-eqz v8, :cond_9c

    .line 109
    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    check-cast v8, Landroid/webkit/WebView;

    invoke-virtual {v8, v3, v4, v13, v13}, Landroid/webkit/WebView;->myScrollTo(IIZI)V

    .line 115
    :cond_53
    :goto_53
    iget v8, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v12, :cond_63

    iget v8, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v12, :cond_aa

    .line 116
    :cond_63
    iget v8, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    const/high16 v9, 0x41a0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_73

    .line 117
    iget v8, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    const v9, 0x3f8851ec

    mul-float/2addr v8, v9

    iput v8, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    .line 118
    :cond_73
    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mPrivateHandler:Landroid/os/Handler;

    iget v9, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    iget v11, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    invoke-virtual {v8, v10, v9, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, delayedMsg:Landroid/os/Message;
    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v11, 0x14

    invoke-virtual {v8, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 124
    .end local v0           #delayedMsg:Landroid/os/Message;
    :goto_84
    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollX()I

    move-result v8

    if-ne v5, v8, :cond_94

    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    if-eq v6, v8, :cond_ad

    .line 125
    :cond_94
    iput-boolean v10, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollChanged:Z

    goto/16 :goto_b

    .end local v3           #nx:I
    .end local v4           #ny:I
    :cond_98
    move v8, v10

    .line 101
    goto :goto_27

    :cond_9a
    move v9, v10

    .line 103
    goto :goto_3b

    .line 111
    .restart local v3       #nx:I
    .restart local v4       #ny:I
    :cond_9c
    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ScrollView;

    if-eqz v8, :cond_53

    .line 112
    iget-object v7, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    check-cast v7, Landroid/widget/ScrollView;

    .line 113
    .local v7, widget:Landroid/widget/ScrollView;
    invoke-virtual {v7, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_53

    .line 122
    .end local v7           #widget:Landroid/widget/ScrollView;
    :cond_aa
    iput-boolean v13, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollEnabled:Z

    goto :goto_84

    .line 127
    :cond_ad
    iput-boolean v13, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollChanged:Z

    .line 129
    const v8, 0x3fb33333

    iput v8, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    goto/16 :goto_b
.end method


# virtual methods
.method checkAutoScroll(FF)V
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v6, 0x5a

    const/4 v5, 0x1

    const/high16 v4, 0x4348

    .line 48
    iget-object v2, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    if-nez v2, :cond_a

    .line 64
    :cond_9
    :goto_9
    return-void

    .line 50
    :cond_a
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 51
    .local v1, visibleRect:Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 52
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 53
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 54
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 55
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 56
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    .line 57
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    .line 58
    iget-boolean v2, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollEnabled:Z

    if-nez v2, :cond_9

    iget v2, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v6, :cond_76

    iget v2, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v6, :cond_9

    .line 59
    :cond_76
    iput-boolean v5, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollEnabled:Z

    .line 60
    iget-object v2, p0, Landroid/webkit/WebViewAutoScroller;->mPrivateHandler:Landroid/os/Handler;

    iget v3, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    iget v4, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 61
    .local v0, msg:Landroid/os/Message;
    const v2, 0x3fb33333

    iput v2, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    .line 62
    iget-object v2, p0, Landroid/webkit/WebViewAutoScroller;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_9
.end method

.method checkAutoScroll(FFZ)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "isScreenDimension"

    .prologue
    .line 39
    if-nez p3, :cond_10

    .line 40
    iget-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mScreenOffset:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 41
    iget-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mScreenOffset:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 44
    :cond_10
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewAutoScroller;->checkAutoScroll(FF)V

    .line 45
    return-void
.end method

.method findScrollableView(Landroid/view/View;)V
    .registers 6
    .parameter "anchoredView"

    .prologue
    const/4 v3, 0x0

    .line 67
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_13

    .line 68
    iput-object p1, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    .line 81
    :goto_7
    iget-object v1, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    if-eqz v1, :cond_2b

    .line 82
    iget-object v1, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    iget-object v2, p0, Landroid/webkit/WebViewAutoScroller;->mScreenOffset:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 87
    :goto_12
    return-void

    .line 70
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 71
    .local v0, parent:Landroid/view/ViewParent;
    :goto_17
    if-eqz v0, :cond_27

    .line 72
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_22

    .line 73
    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    iput-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    goto :goto_12

    .line 76
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_22
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_17

    .line 78
    :cond_27
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    goto :goto_7

    .line 84
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_2b
    iget-object v1, p0, Landroid/webkit/WebViewAutoScroller;->mScreenOffset:[I

    aput v3, v1, v3

    .line 85
    iget-object v1, p0, Landroid/webkit/WebViewAutoScroller;->mScreenOffset:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    goto :goto_12
.end method

.method isScrolling()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollChanged:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollEnabled:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method stopScroll()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 134
    iput v0, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    .line 135
    iput v0, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    .line 136
    iput-boolean v0, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollEnabled:Z

    .line 137
    iput-boolean v0, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollChanged:Z

    .line 138
    iget-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    .line 140
    return-void
.end method
