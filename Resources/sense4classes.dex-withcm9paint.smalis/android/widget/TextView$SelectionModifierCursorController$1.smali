.class Landroid/widget/TextView$SelectionModifierCursorController$1;
.super Landroid/widget/TextView$SelectionEndHandleView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$SelectionModifierCursorController;->initHandles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$SelectionModifierCursorController;


# direct methods
.method constructor <init>(Landroid/widget/TextView$SelectionModifierCursorController;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12797
    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    iget-object v0, p1, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/TextView$SelectionEndHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "ev"

    .prologue
    .line 12800
    invoke-super {p0, p1}, Landroid/widget/TextView$SelectionEndHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 12801
    .local v0, b:Z
    if-nez v0, :cond_2e

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    #getter for: Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;
    invoke-static {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->access$11300(Landroid/widget/TextView$SelectionModifierCursorController;)Landroid/widget/TextView$SelectionStartHandleView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    #getter for: Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;
    invoke-static {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->access$11400(Landroid/widget/TextView$SelectionModifierCursorController;)Landroid/widget/TextView$SelectionEndHandleView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionEndHandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 12802
    const-string v1, "HtcAnchorOverlap"

    const-string v2, "DISPATCH TO LEFT ANCHOR"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12803
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    #getter for: Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;
    invoke-static {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->access$11300(Landroid/widget/TextView$SelectionModifierCursorController;)Landroid/widget/TextView$SelectionStartHandleView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView$SelectionStartHandleView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12805
    :cond_2e
    return v0
.end method
