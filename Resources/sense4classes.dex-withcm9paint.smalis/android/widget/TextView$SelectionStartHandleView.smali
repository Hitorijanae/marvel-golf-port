.class Landroid/widget/TextView$SelectionStartHandleView;
.super Landroid/widget/TextView$HandleView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
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
    .line 12486
    iput-object p1, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    .line 12487
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 12489
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPos:I

    .line 12490
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$HandleView;->mPositionOnTop:Z

    .line 12491
    iget v0, p0, Landroid/widget/TextView$HandleView;->mHeight:I

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/TextView$HandleView;->mHotspotY:F

    .line 12493
    return-void
.end method


# virtual methods
.method public getActionPopupWindow()Landroid/widget/TextView$ActionPopupWindow;
    .registers 2

    .prologue
    .line 12536
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    return-object v0
.end method

.method public getCurrentCursorOffset()I
    .registers 2

    .prologue
    .line 12510
    iget-object v0, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 12497
    iget-object v0, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 12498
    iget v0, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    .line 12503
    :goto_a
    return v0

    .line 12500
    :cond_b
    if-eqz p2, :cond_14

    .line 12501
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_a

    .line 12503
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_a
.end method

.method public updatePosition(FF)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 12522
    const/4 v0, 0x0

    .line 12523
    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$8700(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 12524
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Landroid/widget/TextView;->getEasyUpHardDownOffset(FFI)I

    move-result v0

    .line 12529
    :goto_16
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 12530
    .local v1, selectionEnd:I
    if-lt v0, v1, :cond_24

    add-int/lit8 v2, v1, -0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 12532
    :cond_24
    invoke-virtual {p0, v0, v4}, Landroid/widget/TextView$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 12533
    return-void

    .line 12526
    .end local v1           #selectionEnd:I
    :cond_28
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    goto :goto_16
.end method

.method public updateSelection(I)V
    .registers 4
    .parameter "offset"

    .prologue
    .line 12515
    iget-object v0, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 12516
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionStartHandleView;->updateDrawable()V

    .line 12517
    return-void
.end method
