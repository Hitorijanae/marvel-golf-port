.class Landroid/widget/TextView$SelectionEndHandleView;
.super Landroid/widget/TextView$HandleView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    .line 12542
    iput-object p1, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    .line 12543
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 12545
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPos:I

    .line 12546
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$HandleView;->mHotspotY:F

    .line 12548
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .registers 2

    .prologue
    .line 12565
    iget-object v0, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 12552
    iget-object v0, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 12553
    iget v0, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    .line 12558
    :goto_a
    return v0

    .line 12555
    :cond_b
    if-eqz p2, :cond_16

    .line 12556
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_a

    .line 12558
    :cond_16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_a
.end method

.method public setActionPopupWindow(Landroid/widget/TextView$ActionPopupWindow;)V
    .registers 2
    .parameter "actionPopupWindow"

    .prologue
    .line 12591
    iput-object p1, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    .line 12592
    return-void
.end method

.method public updatePosition(FF)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 12577
    const/4 v0, 0x0

    .line 12578
    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$8700(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 12579
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Landroid/widget/TextView;->getEasyUpHardDownOffset(FFI)I

    move-result v0

    .line 12584
    :goto_15
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 12585
    .local v1, selectionStart:I
    if-gt v0, v1, :cond_2d

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 12587
    :cond_2d
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/TextView$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 12588
    return-void

    .line 12581
    .end local v1           #selectionStart:I
    :cond_32
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    goto :goto_15
.end method

.method public updateSelection(I)V
    .registers 4
    .parameter "offset"

    .prologue
    .line 12570
    iget-object v0, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 12571
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionEndHandleView;->updateDrawable()V

    .line 12572
    return-void
.end method
