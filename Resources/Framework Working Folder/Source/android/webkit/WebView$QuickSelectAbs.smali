.class public abstract Landroid/webkit/WebView$QuickSelectAbs;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "QuickSelectAbs"
.end annotation


# static fields
.field static final MSG_SEL_WORD:I = 0x61a9


# instance fields
.field protected ANCHOR_DRAWABLE_HEIGHT:I

.field protected final ENABLE_MSG:Z

.field private final MAGNIFY_HEIGHT:I

.field MAGNIFY_HEIGHT_DIP:I

.field private final MAGNIFY_OFFSET:I

.field private MAGNIFY_OFFSET_DIP:I

.field private final MAGNIFY_WIDTH:I

.field MAGNIFY_WIDTH_DIP:I

.field private final POSITION_MAGNIFY_HEIGHT:I

.field private POSITION_MAGNIFY_HEIGHT_DIP:I

.field private final POSITION_MAGNIFY_WIDTH:I

.field private POSITION_MAGNIFY_WIDTH_DIP:I

.field final TOLERANT_DISTANCE:I

.field acrossFlag:Z

.field protected emptyCanvas:Landroid/graphics/Canvas;

.field mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

.field mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

.field public mQSMethod:Landroid/webkit/WebViewSelectionMethod;

.field protected mQSMode:Z

.field protected mSelectPath:Landroid/graphics/Path;

.field protected mSelectRect:Landroid/graphics/Rect;

.field protected mSelectRegion:Landroid/graphics/Region;

.field magnifier:Landroid/webkit/MagnifyView;

.field magnifierAnchor:Landroid/graphics/Rect;

.field oSelEnd:Landroid/graphics/Rect;

.field oSelStart:Landroid/graphics/Rect;

.field selEnd:Landroid/graphics/Rect;

.field selStart:Landroid/graphics/Rect;

.field protected selectionPaint:Landroid/graphics/Paint;

.field protected showAnchor:Z

.field showMagnifier:Z

.field testWordPos:Landroid/graphics/Point;

.field testWordSelect:Z

.field final synthetic this$0:Landroid/webkit/WebView;

.field tmpRect:Landroid/graphics/Rect;

.field tmpRectF:Landroid/graphics/RectF;

.field tolerantBox:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x5a

    const/high16 v4, 0x4120

    const/4 v3, 0x0

    const/16 v2, 0x3c

    const/4 v1, 0x0

    .line 12860
    iput-object p1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12862
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    .line 12863
    new-instance v0, Landroid/webkit/WebViewSelectionMethod;

    invoke-direct {v0}, Landroid/webkit/WebViewSelectionMethod;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    .line 12866
    iput v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->ANCHOR_DRAWABLE_HEIGHT:I

    .line 12869
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    .line 12870
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 12873
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 12874
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    .line 12875
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    .line 12877
    const/16 v0, 0x8c

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_WIDTH:I

    .line 12878
    iput v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_HEIGHT:I

    .line 12879
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_WIDTH:I

    .line 12880
    iput v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_HEIGHT:I

    .line 12881
    iput v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_OFFSET:I

    .line 12883
    const/16 v0, 0x8c

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_WIDTH_DIP:I

    .line 12884
    iput v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_HEIGHT_DIP:I

    .line 12885
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_WIDTH_DIP:I

    .line 12886
    iput v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_HEIGHT_DIP:I

    .line 12887
    iput v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_OFFSET_DIP:I

    .line 12890
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    .line 12891
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    .line 12892
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->oSelStart:Landroid/graphics/Rect;

    .line 12893
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->oSelEnd:Landroid/graphics/Rect;

    .line 12894
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    .line 12896
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->emptyCanvas:Landroid/graphics/Canvas;

    .line 12897
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    .line 12898
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    .line 12899
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRectF:Landroid/graphics/RectF;

    .line 12900
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    .line 12901
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    .line 12914
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    .line 12935
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordSelect:Z

    .line 12936
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordPos:Landroid/graphics/Point;

    .line 13134
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->TOLERANT_DISTANCE:I

    .line 13135
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method final dismissAnchor()V
    .registers 2

    .prologue
    .line 13126
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 13127
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 13128
    :cond_11
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 13129
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 13130
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 13131
    return-void
.end method

.method protected abstract doWordSelection(II)V
.end method

.method public handleSelectMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 12924
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6

    .line 12931
    :pswitch_5
    return-void

    .line 12924
    :pswitch_data_6
    .packed-switch 0x61a9
        :pswitch_5
    .end packed-switch
.end method

.method public abstract hideQuickActions(Z)V
.end method

.method init()V
    .registers 9

    .prologue
    const/high16 v7, 0x4270

    const/4 v6, 0x1

    const/high16 v5, 0x3f00

    .line 12962
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebView;->access$12900(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 12965
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 12966
    .local v0, densityFactor:F
    const/high16 v4, 0x42b4

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_OFFSET_DIP:I

    .line 12967
    const/high16 v4, 0x430c

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_WIDTH_DIP:I

    .line 12968
    mul-float v4, v7, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_HEIGHT_DIP:I

    .line 12969
    const/high16 v4, 0x42c8

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_WIDTH_DIP:I

    .line 12970
    mul-float v4, v7, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_HEIGHT_DIP:I

    .line 12973
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebView;->access$13000(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/webkit/WebViewThemeable;->getAnchorBarTopDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 12974
    .local v2, priorDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebView;->access$13100(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/webkit/WebViewThemeable;->getAnchorBarDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 12975
    .local v1, postDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->ANCHOR_DRAWABLE_HEIGHT:I

    .line 12976
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 12977
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 12979
    new-instance v4, Lcom/htc/textselection/SelectionAnchor;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/htc/textselection/SelectionAnchor;-><init>(Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 12980
    new-instance v4, Lcom/htc/textselection/SelectionAnchor;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$13300(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/htc/textselection/SelectionAnchor;-><init>(Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 12985
    new-instance v4, Landroid/webkit/MagnifyView;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$13400(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/webkit/MagnifyView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    .line 12992
    invoke-virtual {p0}, Landroid/webkit/WebView$QuickSelectAbs;->myInit()V

    .line 12993
    return-void
.end method

.method public isSelectMsg(I)Z
    .registers 3
    .parameter "what"

    .prologue
    .line 12917
    const/16 v0, 0x61a9

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSelecting()Z
    .registers 2

    .prologue
    .line 12958
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    return v0
.end method

.method makeSelect(IIII)Z
    .registers 7
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 12950
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 12951
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v0

    .line 12952
    .local v0, ret:Z
    if-eqz v0, :cond_12

    .line 12953
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, p3, p4}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 12954
    :cond_12
    return v0
.end method

.method protected abstract myInit()V
.end method

.method public abstract onTouchEvent(IILandroid/view/MotionEvent;)Z
.end method

.method public abstract selectionDone()V
.end method

.method public abstract setQuickSelectionButtonFlag(I)V
.end method

.method public abstract setUpSelect()V
.end method

.method final showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14
    .parameter "prior"
    .parameter "post"

    .prologue
    .line 13064
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 13065
    .local v2, offsetOnScreen:[I
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v2}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 13067
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 13068
    .local v4, visibleRect:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v4}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 13071
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v9}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v9

    if-nez v9, :cond_ec

    if-eqz p1, :cond_ec

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v9}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_ec

    const/4 v1, 0x1

    .line 13074
    .local v1, needToDimissPost:Z
    :goto_25
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v9}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    .line 13075
    .local v3, scaleRatio:F
    const/4 v0, 0x0

    .line 13079
    .local v0, gap:F
    if-eqz p1, :cond_87

    .line 13080
    iget v9, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    mul-float v5, v9, v3

    .line 13081
    .local v5, xPos:F
    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-eqz v9, :cond_ef

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/4 v10, 0x0

    add-float v7, v9, v10

    .line 13084
    .local v7, yPos:F
    :goto_42
    const/4 v9, 0x0

    aget v9, v2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$14300(Landroid/webkit/WebView;)I

    move-result v10

    sub-int v6, v9, v10

    .line 13085
    .local v6, xpos:I
    const/4 v9, 0x1

    aget v9, v2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v10, v7

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$14400(Landroid/webkit/WebView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v10

    add-int v8, v9, v10

    .line 13087
    .local v8, ypos:I
    invoke-virtual {v4, v6, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_fc

    .line 13088
    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-eqz v9, :cond_f8

    sget-object v9, Lcom/htc/textselection/SelectionAnchor$VisualMode;->BOTTOM:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    :goto_77
    invoke-virtual {v10, v9}, Lcom/htc/textselection/SelectionAnchor;->setVisualMode(Lcom/htc/textselection/SelectionAnchor$VisualMode;)V

    .line 13089
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v10, v6, v8}, Lcom/htc/textselection/SelectionAnchor;->show(Landroid/view/View;II)V

    .line 13090
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 13098
    .end local v5           #xPos:F
    .end local v6           #xpos:I
    .end local v7           #yPos:F
    .end local v8           #ypos:I
    :cond_87
    :goto_87
    if-eqz v1, :cond_8e

    .line 13099
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v9}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 13102
    :cond_8e
    if-eqz p2, :cond_eb

    .line 13103
    iget v9, p2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    mul-float v5, v9, v3

    .line 13104
    .restart local v5       #xPos:F
    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-eqz v9, :cond_103

    iget v9, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/4 v10, 0x0

    sub-float v7, v9, v10

    .line 13107
    .restart local v7       #yPos:F
    :goto_a0
    const/4 v9, 0x0

    aget v9, v2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$14500(Landroid/webkit/WebView;)I

    move-result v10

    sub-int v6, v9, v10

    .line 13108
    .restart local v6       #xpos:I
    const/4 v9, 0x1

    aget v9, v2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v10, v7

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$14600(Landroid/webkit/WebView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v10

    add-int v8, v9, v10

    .line 13110
    .restart local v8       #ypos:I
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    .line 13111
    invoke-virtual {v4, v6, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_10e

    .line 13112
    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-eqz v9, :cond_10b

    sget-object v9, Lcom/htc/textselection/SelectionAnchor$VisualMode;->TOP:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    :goto_db
    invoke-virtual {v10, v9}, Lcom/htc/textselection/SelectionAnchor;->setVisualMode(Lcom/htc/textselection/SelectionAnchor$VisualMode;)V

    .line 13113
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v10, v6, v8}, Lcom/htc/textselection/SelectionAnchor;->show(Landroid/view/View;II)V

    .line 13114
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 13120
    .end local v5           #xPos:F
    .end local v6           #xpos:I
    .end local v7           #yPos:F
    .end local v8           #ypos:I
    :cond_eb
    :goto_eb
    return-void

    .line 13071
    .end local v0           #gap:F
    .end local v1           #needToDimissPost:Z
    .end local v3           #scaleRatio:F
    :cond_ec
    const/4 v1, 0x0

    goto/16 :goto_25

    .line 13081
    .restart local v0       #gap:F
    .restart local v1       #needToDimissPost:Z
    .restart local v3       #scaleRatio:F
    .restart local v5       #xPos:F
    :cond_ef
    iget v9, p1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/4 v10, 0x0

    sub-float v7, v9, v10

    goto/16 :goto_42

    .line 13088
    .restart local v6       #xpos:I
    .restart local v7       #yPos:F
    .restart local v8       #ypos:I
    :cond_f8
    sget-object v9, Lcom/htc/textselection/SelectionAnchor$VisualMode;->TOP:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    goto/16 :goto_77

    .line 13093
    :cond_fc
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    goto :goto_87

    .line 13104
    .end local v6           #xpos:I
    .end local v7           #yPos:F
    .end local v8           #ypos:I
    :cond_103
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/4 v10, 0x0

    add-float v7, v9, v10

    goto :goto_a0

    .line 13112
    .restart local v6       #xpos:I
    .restart local v7       #yPos:F
    .restart local v8       #ypos:I
    :cond_10b
    sget-object v9, Lcom/htc/textselection/SelectionAnchor$VisualMode;->BOTTOM:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    goto :goto_db

    .line 13117
    :cond_10e
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    goto :goto_eb
.end method

.method final showMagnify(Landroid/graphics/Rect;II)V
    .registers 21
    .parameter "anchorRect"
    .parameter "touchX"
    .parameter "touchOffsetY"

    .prologue
    .line 13002
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    if-nez v1, :cond_7

    .line 13060
    :goto_6
    return-void

    .line 13005
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->getBGdrawableID()I

    move-result v1

    if-gtz v1, :cond_1b

    .line 13006
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    const v3, 0x2080457

    invoke-virtual {v1, v3}, Landroid/webkit/MagnifyView;->setBGdrawable(I)V

    .line 13009
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v1}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v2

    .line 13010
    .local v2, scaleRatio:F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v1}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    .line 13012
    .local v10, invScaleRatio:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    .line 13013
    .local v16, selCY:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_OFFSET_DIP:I

    add-int v12, v1, p3

    .line 13020
    .local v12, offset:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_WIDTH_DIP:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_HEIGHT_DIP:I

    invoke-virtual {v1, v3, v4}, Landroid/webkit/MagnifyView;->setMagnifyContentSize(II)V

    .line 13023
    const/4 v1, 0x2

    new-array v13, v1, [I

    .line 13024
    .local v13, offsetOnScreen:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, v13}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 13026
    new-instance v11, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$13500(Landroid/webkit/WebView;)I

    move-result v1

    sub-int v1, p2, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$13600(Landroid/webkit/WebView;)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v12

    invoke-direct {v11, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 13028
    .local v11, magnifyWinCP:Landroid/graphics/Point;
    const/4 v1, 0x0

    aget v1, v13, v1

    iget v3, v11, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v3}, Landroid/webkit/MagnifyView;->getFullWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    sub-float v14, v1, v3

    .line 13029
    .local v14, posX:F
    const/4 v1, 0x1

    aget v1, v13, v1

    iget v3, v11, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v3}, Landroid/webkit/MagnifyView;->getFullHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    sub-float v15, v1, v3

    .line 13031
    .local v15, posY:F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->getFullHeight()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3ea8f5c3

    mul-float/2addr v1, v3

    add-float/2addr v1, v15

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_c4

    .line 13032
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->getFullHeight()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3ea8f5c3

    mul-float/2addr v1, v3

    neg-float v15, v1

    .line 13035
    :cond_c4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContentWidth:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$13700(Landroid/webkit/WebView;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContentHeight:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$13800(Landroid/webkit/WebView;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$13900(Landroid/webkit/WebView;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v8}, Landroid/webkit/WebView;->access$14000(Landroid/webkit/WebView;)I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Landroid/webkit/MagnifyView;->setContent(FFFIIII)V

    .line 13041
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->beginDrawContent()Landroid/graphics/Canvas;

    move-result-object v9

    .line 13042
    .local v9, c:Landroid/graphics/Canvas;
    if-eqz v9, :cond_141

    .line 13043
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mBackgroundColor:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$14100(Landroid/webkit/WebView;)I

    move-result v1

    if-nez v1, :cond_111

    .line 13044
    const/4 v1, -0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 13048
    :cond_111
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, v9}, Landroid/webkit/WebView;->drawPage(Landroid/graphics/Canvas;)V

    .line 13051
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_141

    .line 13052
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13053
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/webkit/WebView;->access$14200()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 13054
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13057
    :cond_141
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->endDrawContent()V

    .line 13059
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    const/4 v4, 0x0

    aget v4, v13, v4

    float-to-int v5, v15

    invoke-virtual {v1, v3, v4, v5}, Landroid/webkit/MagnifyView;->showAtPositon(Landroid/view/View;II)V

    goto/16 :goto_6
.end method

.method public abstract showQuickActions(Landroid/graphics/Rect;I)V
.end method

.method final spacialDeNoise(FF)Landroid/graphics/PointF;
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x4120

    .line 13137
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 13138
    .local v4, p:Landroid/graphics/PointF;
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 13139
    .local v2, oldCenterX:F
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 13140
    .local v3, oldCenterY:F
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 13141
    iput v2, v4, Landroid/graphics/PointF;->x:F

    .line 13142
    iput v3, v4, Landroid/graphics/PointF;->y:F

    .line 13168
    :goto_1f
    return-object v4

    .line 13145
    :cond_20
    const/4 v0, 0x0

    .line 13146
    .local v0, offsetX:F
    const/4 v1, 0x0

    .line 13147
    .local v1, offsetY:F
    sub-float v5, p1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_77

    .line 13148
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_68

    .line 13149
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v0, p1, v5

    .line 13155
    :cond_3a
    :goto_3a
    sub-float v5, p2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_89

    .line 13156
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v5, p2, v5

    if-gez v5, :cond_7a

    .line 13157
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v5

    .line 13164
    :cond_52
    :goto_52
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 13165
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 13166
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_1f

    .line 13150
    :cond_68
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3a

    .line 13151
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float v0, p1, v5

    goto :goto_3a

    .line 13154
    :cond_77
    sub-float v0, p1, v2

    goto :goto_3a

    .line 13158
    :cond_7a
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, p2, v5

    if-lez v5, :cond_52

    .line 13159
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v1, p2, v5

    goto :goto_52

    .line 13162
    :cond_89
    sub-float v1, p2, v3

    goto :goto_52
.end method

.method testSelect(II)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 12938
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 12939
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordPos:Landroid/graphics/Point;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 12940
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordSelect:Z

    .line 12941
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v0

    .line 12942
    .local v0, ret:Z
    if-eqz v0, :cond_1b

    .line 12943
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 12944
    :cond_1b
    iput-boolean v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordSelect:Z

    .line 12945
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordPos:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 12946
    return v0
.end method
