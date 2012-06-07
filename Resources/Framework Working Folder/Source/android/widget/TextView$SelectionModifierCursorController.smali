.class Landroid/widget/TextView$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_REPLACE_ACTION:I = 0xc8


# instance fields
.field private mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

.field private mIsShowing:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4
    .parameter

    .prologue
    .line 12725
    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12719
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 12726
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 12727
    return-void
.end method

.method static synthetic access$11300(Landroid/widget/TextView$SelectionModifierCursorController;)Landroid/widget/TextView$SelectionStartHandleView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12710
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    return-object v0
.end method

.method static synthetic access$11400(Landroid/widget/TextView$SelectionModifierCursorController;)Landroid/widget/TextView$SelectionEndHandleView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12710
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    return-object v0
.end method

.method private initDrawables()V
    .registers 4

    .prologue
    .line 12769
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$10500(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_26

    .line 12771
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleLeftRes:I
    invoke-static {v0}, Landroid/widget/TextView;->access$10600(Landroid/widget/TextView;)I

    move-result v0

    if-nez v0, :cond_4d

    .line 12772
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$10700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080595

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$10502(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12779
    :cond_26
    :goto_26
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$10900(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 12781
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRightRes:I
    invoke-static {v0}, Landroid/widget/TextView;->access$11000(Landroid/widget/TextView;)I

    move-result v0

    if-nez v0, :cond_67

    .line 12782
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$11100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080597

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$10902(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12789
    :cond_4c
    :goto_4c
    return-void

    .line 12776
    :cond_4d
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$10800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleLeftRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$10600(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$10502(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_26

    .line 12786
    :cond_67
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$11200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRightRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$11000(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$10902(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_4c
.end method

.method private initHandles()V
    .registers 5

    .prologue
    .line 12793
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-nez v0, :cond_19

    .line 12794
    new-instance v0, Landroid/widget/TextView$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$10500(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/TextView;->access$10900(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionStartHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    .line 12796
    :cond_19
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-nez v0, :cond_30

    .line 12797
    new-instance v0, Landroid/widget/TextView$SelectionModifierCursorController$1;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/widget/TextView;->access$10900(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$10500(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/TextView$SelectionModifierCursorController$1;-><init>(Landroid/widget/TextView$SelectionModifierCursorController;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    .line 12811
    :cond_30
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->show()V

    .line 12812
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionEndHandleView;->show()V

    .line 12814
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 12817
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartHandleView;->showActionPopupWindow(I)V

    .line 12818
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->getActionPopupWindow()Landroid/widget/TextView$ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setActionPopupWindow(Landroid/widget/TextView$ActionPopupWindow;)V

    .line 12821
    :cond_54
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/TextView;->access$10400(Landroid/widget/TextView;)V

    .line 12822
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    .line 12922
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 12923
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_5
    if-ge v0, v2, :cond_24

    .line 12924
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 12925
    .local v1, offset:I
    iget v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_1b

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 12926
    :cond_1b
    iget v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_21

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 12923
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 12928
    .end local v1           #offset:I
    :cond_24
    return-void
.end method


# virtual methods
.method protected forceShow()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12760
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 12761
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mTempCoords:[I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 12762
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v4, v4, Landroid/widget/TextView;->mTempCoords:[I

    aget v4, v4, v2

    iget-object v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v5}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView$PositionListener;->getPositionX()I

    move-result v5

    if-ne v4, v5, :cond_32

    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v4, v4, Landroid/widget/TextView;->mTempCoords:[I

    aget v4, v4, v3

    iget-object v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v5}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView$PositionListener;->getPositionY()I

    move-result v5

    if-eq v4, v5, :cond_60

    :cond_32
    move v0, v3

    .line 12763
    .local v0, positionHasChanged:Z
    :goto_33
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v4}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView$PositionListener;->isScrollChanged()Z

    move-result v1

    .line 12764
    .local v1, scrollChanged:Z
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    iget-object v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mTempCoords:[I

    aget v5, v5, v2

    iget-object v6, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v6, v6, Landroid/widget/TextView;->mTempCoords:[I

    aget v6, v6, v3

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/widget/TextView$SelectionStartHandleView;->updatePosition(IIZZ)V

    .line 12765
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    iget-object v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mTempCoords:[I

    aget v2, v5, v2

    iget-object v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mTempCoords:[I

    aget v3, v5, v3

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->updatePosition(IIZZ)V

    .line 12766
    return-void

    .end local v0           #positionHasChanged:Z
    .end local v1           #scrollChanged:Z
    :cond_60
    move v0, v2

    .line 12762
    goto :goto_33
.end method

.method public getMaxTouchOffset()I
    .registers 2

    .prologue
    .line 12935
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .registers 2

    .prologue
    .line 12931
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 12825
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->hide()V

    .line 12826
    :cond_a
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionEndHandleView;->hide()V

    .line 12827
    :cond_13
    iput-boolean v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    .line 12829
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 12830
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 12832
    :cond_24
    return-void
.end method

.method public isAllDownAnchor()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 12731
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-nez v1, :cond_a

    .line 12734
    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    iget-boolean v1, v1, Landroid/widget/TextView$HandleView;->mPositionOnTop:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    iget-boolean v1, v1, Landroid/widget/TextView$HandleView;->mPositionOnTop:Z

    if-nez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isDragging()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 12954
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-nez v1, :cond_a

    .line 12957
    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->isDragging()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionEndHandleView;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_1a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isSelectionStartDragged()Z
    .registers 2

    .prologue
    .line 12946
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 12967
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public onDetached()V
    .registers 3

    .prologue
    .line 13004
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 13005
    .local v0, observer:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 13007
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->onDetached()V

    .line 13008
    :cond_12
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionEndHandleView;->onDetached()V

    .line 13009
    :cond_1b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 14
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 12837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_14e

    .line 12916
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 12840
    :pswitch_a
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mIsLongPressed:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$11500(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 12843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 12844
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 12847
    .local v3, y:I
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    int-to-float v1, v2

    int-to-float v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 12849
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isTextEditable()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$5700(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 12851
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/htc/textselection/HtcTextSelectionManager;->checkAutoScroll(FF)V

    .line 12865
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_53
    :goto_53
    :pswitch_53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 12866
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 12869
    .local v3, y:F
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 12872
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isTextEditable()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$5700(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 12873
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    sub-long v9, v0, v4

    .line 12874
    .local v9, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v9, v0

    if-gtz v0, :cond_a1

    .line 12876
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:F

    sub-float v6, v2, v0

    .line 12877
    .local v6, deltaX:F
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:F

    sub-float v7, v3, v0

    .line 12878
    .local v7, deltaY:F
    mul-float v0, v6, v6

    mul-float v1, v7, v7

    add-float v8, v0, v1

    .line 12879
    .local v8, distanceSquared:F
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSquaredTouchSlopDistance:I
    invoke-static {v0}, Landroid/widget/TextView;->access$10100(Landroid/widget/TextView;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_a1

    .line 12880
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->startSelectionActionMode()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$11700(Landroid/widget/TextView;)Z

    .line 12881
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mDiscardNextActionUp:Z
    invoke-static {v0, v11}, Landroid/widget/TextView;->access$11802(Landroid/widget/TextView;Z)Z

    .line 12886
    .end local v6           #deltaX:F
    .end local v7           #deltaY:F
    .end local v8           #distanceSquared:F
    .end local v9           #duration:J
    :cond_a1
    iput v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:F

    .line 12887
    iput v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto/16 :goto_9

    .line 12853
    .local v2, x:I
    .local v3, y:I
    :cond_a7
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextIsSelectable:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$6100(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mIsLongPressed:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$11500(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 12854
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 12855
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->selectCurrentWord()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$11600(Landroid/widget/TextView;)Z

    .line 12856
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mIsInTextSelectionMode:Z
    invoke-static {v0, v11}, Landroid/widget/TextView;->access$9902(Landroid/widget/TextView;Z)Z

    .line 12857
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_f5

    .line 12858
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {v1, v4, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 12859
    :cond_f5
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    sget-object v5, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_WORD:Lcom/htc/textselection/Magnifier$TouchingMode;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/textselection/HtcTextSelectionManager;->showMagnifier(Landroid/widget/TextView;IIILcom/htc/textselection/Magnifier$TouchingMode;)V

    goto/16 :goto_53

    .line 12892
    .end local v2           #x:I
    .end local v3           #y:I
    :pswitch_108
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 12893
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 12894
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    .line 12896
    :cond_11e
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mIsLongPressed:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$11502(Landroid/widget/TextView;Z)Z

    .line 12897
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mDiscardNextActionUp:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$11802(Landroid/widget/TextView;Z)Z

    .line 12898
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$11900(Landroid/widget/TextView;Z)V

    goto/16 :goto_9

    .line 12906
    :pswitch_12f
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$12000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12908
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_9

    .line 12913
    :pswitch_146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto/16 :goto_9

    .line 12837
    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_53
        :pswitch_146
        :pswitch_a
        :pswitch_108
        :pswitch_9
        :pswitch_12f
        :pswitch_12f
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .parameter "isInTouchMode"

    .prologue
    .line 12997
    if-nez p1, :cond_5

    .line 12998
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 13000
    :cond_5
    return-void
.end method

.method public resetDragging()V
    .registers 2

    .prologue
    .line 12963
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->resetDragging()V

    .line 12964
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionEndHandleView;->resetDragging()V

    .line 12965
    return-void
.end method

.method public resetTouchOffsets()V
    .registers 2

    .prologue
    .line 12939
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 12940
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 12739
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12746
    :goto_8
    return-void

    .line 12742
    :cond_9
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->initDrawables()V

    .line 12743
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->initHandles()V

    .line 12744
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/TextView;->access$10400(Landroid/widget/TextView;)V

    .line 12745
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    goto :goto_8
.end method

.method public updatePosition()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 12970
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_8

    .line 12993
    :goto_7
    return-void

    .line 12974
    :cond_8
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 12975
    .local v1, selectionStart:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 12977
    .local v0, selectionEnd:I
    if-ltz v1, :cond_18

    if-gez v0, :cond_23

    .line 12979
    :cond_18
    const-string v2, "TextView"

    const-string v3, "Update selection controller position called with no cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12980
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    goto :goto_7

    .line 12984
    :cond_23
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-nez v2, :cond_33

    .line 12986
    :cond_2b
    const-string v2, "HtcTextSelection"

    const-string v3, "HandleView has not been created before SMCC.updatePosition() "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 12990
    :cond_33
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 12991
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    goto :goto_7
.end method
