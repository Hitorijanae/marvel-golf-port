.class Landroid/webkit/EditableWebView$AnchorTouchListener;
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
    name = "AnchorTouchListener"
.end annotation


# static fields
.field private static final ANCHOR_FLY_THRESHOLD_MILLI:J = 0xc8L


# instance fields
.field private mConfirmMove:Z

.field private mDownX:I

.field private mDownY:I

.field final synthetic this$0:Landroid/webkit/EditableWebView;

.field private touchOffset:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView;)V
    .registers 3
    .parameter

    .prologue
    .line 1061
    iput-object p1, p0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1067
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    return-void
.end method

.method private doAutoExtend()Z
    .registers 8

    .prologue
    .line 1070
    iget-object v3, p0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;
    invoke-static {v3}, Landroid/webkit/EditableWebView;->access$1100(Landroid/webkit/EditableWebView;)Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1071
    .local v0, current:I
    if-ltz v0, :cond_1a

    iget-object v3, p0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;
    invoke-static {v3}, Landroid/webkit/EditableWebView;->access$1100(Landroid/webkit/EditableWebView;)Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v0, v3, :cond_1a

    .line 1072
    add-int/lit8 v0, v0, -0x1

    .line 1074
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    iget-wide v5, v5, Landroid/webkit/EditableWebView;->mUpdateTimestamp:J

    sub-long v1, v3, v5

    .line 1078
    .local v1, timeDiff:J
    if-ltz v0, :cond_4e

    const-wide/16 v3, 0xc8

    cmp-long v3, v1, v3

    if-gez v3, :cond_4e

    iget-object v3, p0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;
    invoke-static {v3}, Landroid/webkit/EditableWebView;->access$1100(Landroid/webkit/EditableWebView;)Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v3

    if-nez v3, :cond_4e

    iget-object v3, p0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;
    invoke-static {v3}, Landroid/webkit/EditableWebView;->access$1100(Landroid/webkit/EditableWebView;)Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    const/4 v3, 0x1

    :goto_4d
    return v3

    :cond_4e
    const/4 v3, 0x0

    goto :goto_4d
.end method

.method private getTouchAnchor(Landroid/view/View;)Lcom/htc/textselection/SelectionAnchor;
    .registers 6
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1085
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    .line 1086
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1088
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_f

    .line 1097
    .end local v0           #child:Landroid/view/View;
    :cond_e
    :goto_e
    return-object v1

    .line 1089
    .restart local v0       #child:Landroid/view/View;
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/SelectionAnchor;->PRIOR_ANCHOR:Ljava/lang/Object;

    if-ne v2, v3, :cond_1e

    .line 1090
    iget-object v1, p0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v1, v1, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto :goto_e

    .line 1091
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/SelectionAnchor;->POST_ANCHOR:Ljava/lang/Object;

    if-ne v2, v3, :cond_e

    .line 1092
    iget-object v1, p0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v1, v1, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto :goto_e
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 32
    .parameter "v"
    .parameter "ev"

    .prologue
    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p1}, Landroid/webkit/EditableWebView$AnchorTouchListener;->getTouchAnchor(Landroid/view/View;)Lcom/htc/textselection/SelectionAnchor;

    move-result-object v26

    #setter for: Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;
    invoke-static/range {v25 .. v26}, Landroid/webkit/EditableWebView;->access$1202(Landroid/webkit/EditableWebView;Lcom/htc/textselection/SelectionAnchor;)Lcom/htc/textselection/SelectionAnchor;

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$1200(Landroid/webkit/EditableWebView;)Lcom/htc/textselection/SelectionAnchor;

    move-result-object v25

    if-nez v25, :cond_1c

    .line 1106
    const/16 v25, 0x0

    .line 1279
    :goto_1b
    return v25

    .line 1107
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$1200(Landroid/webkit/EditableWebView;)Lcom/htc/textselection/SelectionAnchor;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_b2

    const/4 v13, 0x1

    .line 1110
    .local v13, isPriorAnchor:Z
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1111
    .local v4, action:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v25

    and-int/lit8 v25, v25, 0x16

    if-eqz v25, :cond_b4

    const/4 v12, 0x1

    .line 1112
    .local v12, isPressedByPen:Z
    :goto_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v27

    #calls: Landroid/webkit/EditableWebView;->spacialDeNoise(FF)Landroid/graphics/PointF;
    invoke-static/range {v25 .. v27}, Landroid/webkit/EditableWebView;->access$1300(Landroid/webkit/EditableWebView;FF)Landroid/graphics/PointF;

    move-result-object v17

    .line 1115
    .local v17, p:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mScreenOffset:[I
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$1400(Landroid/webkit/EditableWebView;)[I

    move-result-object v16

    .line 1116
    .local v16, onScreenOffset:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->getLocationOnScreen([I)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$1200(Landroid/webkit/EditableWebView;)Lcom/htc/textselection/SelectionAnchor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/htc/textselection/SelectionAnchor;->getTouchDownOffset()Landroid/graphics/PointF;

    move-result-object v15

    .line 1120
    .local v15, offset:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    if-eqz v13, :cond_b6

    const/16 v25, 0x73

    :goto_8d
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v19

    .line 1121
    .local v19, rect:Landroid/graphics/Rect;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 1122
    .local v7, caretWidth:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1123
    .local v6, caretHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    #calls: Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView;->access$1000(Landroid/webkit/EditableWebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v19

    .line 1125
    packed-switch v4, :pswitch_data_7fe

    .line 1279
    :cond_ae
    :goto_ae
    const/16 v25, 0x1

    goto/16 :goto_1b

    .line 1107
    .end local v4           #action:I
    .end local v6           #caretHeight:I
    .end local v7           #caretWidth:I
    .end local v12           #isPressedByPen:Z
    .end local v13           #isPriorAnchor:Z
    .end local v15           #offset:Landroid/graphics/PointF;
    .end local v16           #onScreenOffset:[I
    .end local v17           #p:Landroid/graphics/PointF;
    .end local v19           #rect:Landroid/graphics/Rect;
    :cond_b2
    const/4 v13, 0x0

    goto :goto_3f

    .line 1111
    .restart local v4       #action:I
    .restart local v13       #isPriorAnchor:Z
    :cond_b4
    const/4 v12, 0x0

    goto :goto_4c

    .line 1120
    .restart local v12       #isPressedByPen:Z
    .restart local v15       #offset:Landroid/graphics/PointF;
    .restart local v16       #onScreenOffset:[I
    .restart local v17       #p:Landroid/graphics/PointF;
    :cond_b6
    const/16 v25, 0x65

    goto :goto_8d

    .line 1128
    .restart local v6       #caretHeight:I
    .restart local v7       #caretWidth:I
    .restart local v19       #rect:Landroid/graphics/Rect;
    :pswitch_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/webkit/WebView;->shortTapOnWebView:Z

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$300(Landroid/webkit/EditableWebView;)Landroid/os/Handler;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v25

    const/16 v26, 0x216

    invoke-virtual/range {v25 .. v26}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/webkit/WebView$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    .line 1136
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/EditableWebView$AnchorTouchListener;->mDownX:I

    .line 1137
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/EditableWebView$AnchorTouchListener;->mDownY:I

    .line 1138
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/EditableWebView$AnchorTouchListener;->mConfirmMove:Z

    .line 1139
    sget v25, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    shl-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    if-gt v7, v0, :cond_285

    .line 1140
    if-eqz v13, :cond_250

    .line 1141
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/16 v26, 0x0

    aget v26, v16, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static/range {v26 .. v26}, Landroid/webkit/EditableWebView;->access$1600(Landroid/webkit/EditableWebView;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    iput v0, v15, Landroid/graphics/PointF;->x:F

    .line 1151
    :goto_170
    sget v25, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    shl-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    if-gt v6, v0, :cond_2f9

    .line 1152
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/16 v26, 0x1

    aget v26, v16, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static/range {v26 .. v26}, Landroid/webkit/EditableWebView;->access$2000(Landroid/webkit/EditableWebView;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    iput v0, v15, Landroid/graphics/PointF;->y:F

    .line 1159
    :goto_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    move-object/from16 v25, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    const/high16 v27, 0x3f00

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_HEIGHT_DIP:I

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    if-gt v6, v0, :cond_36d

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    add-int v25, v25, v27

    div-int/lit8 v25, v25, 0x2

    :goto_1fc
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v27, 0x3f00

    add-float v25, v25, v27

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v27, v0

    sub-float v25, v25, v27

    const/16 v27, 0x1

    aget v27, v16, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v25, v25, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v27, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static/range {v27 .. v27}, Landroid/webkit/EditableWebView;->access$2300(Landroid/webkit/EditableWebView;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v25, v25, v27

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/webkit/WebView$QuickSelectAbs;->hideQuickActions(Z)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    goto/16 :goto_ae

    .line 1143
    :cond_250
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/16 v26, 0x0

    aget v26, v16, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static/range {v26 .. v26}, Landroid/webkit/EditableWebView;->access$1700(Landroid/webkit/EditableWebView;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    iput v0, v15, Landroid/graphics/PointF;->x:F

    goto/16 :goto_170

    .line 1146
    :cond_285
    if-eqz v13, :cond_2c0

    .line 1147
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sget v26, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/16 v26, 0x0

    aget v26, v16, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static/range {v26 .. v26}, Landroid/webkit/EditableWebView;->access$1800(Landroid/webkit/EditableWebView;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    iput v0, v15, Landroid/graphics/PointF;->x:F

    goto/16 :goto_170

    .line 1149
    :cond_2c0
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sget v26, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/16 v26, 0x0

    aget v26, v16, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static/range {v26 .. v26}, Landroid/webkit/EditableWebView;->access$1900(Landroid/webkit/EditableWebView;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    iput v0, v15, Landroid/graphics/PointF;->x:F

    goto/16 :goto_170

    .line 1154
    :cond_2f9
    if-eqz v13, :cond_334

    .line 1155
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sget v26, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/16 v26, 0x1

    aget v26, v16, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static/range {v26 .. v26}, Landroid/webkit/EditableWebView;->access$2100(Landroid/webkit/EditableWebView;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    iput v0, v15, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1b5

    .line 1157
    :cond_334
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sget v26, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/16 v26, 0x1

    aget v26, v16, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static/range {v26 .. v26}, Landroid/webkit/EditableWebView;->access$2200(Landroid/webkit/EditableWebView;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    iput v0, v15, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1b5

    .line 1160
    :cond_36d
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    goto/16 :goto_1fc

    .line 1168
    :pswitch_375
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v25, v0

    if-nez v25, :cond_3c2

    .line 1169
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->mDownX:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    sub-int v9, v25, v26

    .line 1170
    .local v9, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->mDownY:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    sub-int v10, v25, v26

    .line 1171
    .local v10, dy:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v25

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v27

    sub-long v25, v25, v27

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    cmp-long v25, v25, v27

    if-ltz v25, :cond_564

    .line 1172
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/EditableWebView$AnchorTouchListener;->mConfirmMove:Z

    .line 1176
    .end local v9           #dx:I
    .end local v10           #dy:I
    :cond_3c2
    :goto_3c2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v25, v0

    if-eqz v25, :cond_ae

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    move-object/from16 v25, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v27

    invoke-virtual/range {v25 .. v27}, Landroid/webkit/WebView$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    #calls: Landroid/webkit/EditableWebView;->horizontalEdgeAdjustment(ILandroid/graphics/PointF;)V
    invoke-static {v0, v1, v15}, Landroid/webkit/EditableWebView;->access$2400(Landroid/webkit/EditableWebView;ILandroid/graphics/PointF;)V

    .line 1180
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v16, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v27, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static/range {v27 .. v27}, Landroid/webkit/EditableWebView;->access$2500(Landroid/webkit/EditableWebView;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1181
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    const/16 v27, 0x1

    aget v27, v16, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v27, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static/range {v27 .. v27}, Landroid/webkit/EditableWebView;->access$2600(Landroid/webkit/EditableWebView;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1183
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x3e99999a

    mul-float v5, v25, v26

    .line 1185
    .local v5, buffer:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    float-to-int v0, v5

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v25

    const/16 v26, 0x7

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_487

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    const/16 v26, 0x7

    invoke-virtual/range {v25 .. v26}, Landroid/webkit/EditableWebView;->contentToViewDimension(I)I

    move-result v25

    move/from16 v0, v25

    int-to-float v5, v0

    .line 1187
    :cond_487
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpg-float v25, v25, v26

    if-gez v25, :cond_590

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v26, v26, v5

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_590

    .line 1188
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    add-float v25, v25, v5

    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1195
    :cond_4c1
    :goto_4c1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v25

    sget-object v26, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_5cc

    const/16 v20, 0x1

    .line 1196
    .local v20, selection:Z
    :goto_4db
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    .line 1197
    if-nez v12, :cond_ae

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    const/16 v27, 0x78

    invoke-virtual/range {v26 .. v27}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v26

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Landroid/webkit/WebView$QuickSelectAbs;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_ae

    .line 1173
    .end local v5           #buffer:F
    .end local v20           #selection:Z
    .restart local v9       #dx:I
    .restart local v10       #dy:I
    :cond_564
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v25, v0

    if-nez v25, :cond_3c2

    mul-int v25, v9, v9

    mul-int v26, v10, v10

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    move/from16 v26, v0

    shr-int/lit8 v26, v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_3c2

    .line 1174
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/EditableWebView$AnchorTouchListener;->mConfirmMove:Z

    goto/16 :goto_3c2

    .line 1189
    .end local v9           #dx:I
    .end local v10           #dy:I
    .restart local v5       #buffer:F
    :cond_590
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_4c1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v26, v26, v5

    cmpg-float v25, v25, v26

    if-gtz v25, :cond_4c1

    .line 1190
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    sub-float v25, v25, v5

    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_4c1

    .line 1195
    :cond_5cc
    const/16 v20, 0x0

    goto/16 :goto_4db

    .line 1206
    .end local v5           #buffer:F
    :pswitch_5d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    .line 1207
    if-nez v12, :cond_60a

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/MagnifyView;->dismiss()V

    .line 1211
    :cond_60a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v25

    sget-object v26, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_6a5

    .line 1213
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v4, v0, :cond_68b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->mConfirmMove:Z

    move/from16 v25, v0

    if-nez v25, :cond_68b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$1100(Landroid/webkit/EditableWebView;)Landroid/text/Editable;

    move-result-object v25

    if-eqz v25, :cond_68b

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v25

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v27

    sub-long v25, v25, v27

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    cmp-long v25, v25, v27

    if-gez v25, :cond_68b

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$200(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$SingleTapQuickActions;

    move-result-object v25

    if-eqz v25, :cond_68b

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$200(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$SingleTapQuickActions;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/webkit/EditableWebView$SingleTapQuickActions;->checkTimeout:Z

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/EditableWebView;->showSingleTapQuickActions()V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$300(Landroid/webkit/EditableWebView;)Landroid/os/Handler;

    move-result-object v25

    const/16 v26, 0x66

    const-wide/16 v27, 0xbb8

    invoke-virtual/range {v25 .. v28}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1229
    :cond_68b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$300(Landroid/webkit/EditableWebView;)Landroid/os/Handler;

    move-result-object v25

    const/16 v26, 0x1

    sget v27, Landroid/webkit/EditableWebView;->DELAY_CURSOR_ANCHOR_DISAPPEAR:I

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    invoke-virtual/range {v25 .. v28}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1230
    const/16 v25, 0x1

    goto/16 :goto_1b

    .line 1235
    :cond_6a5
    invoke-direct/range {p0 .. p0}, Landroid/webkit/EditableWebView$AnchorTouchListener;->doAutoExtend()Z

    move-result v25

    if-eqz v25, :cond_738

    .line 1236
    const/16 v23, -0x1

    .line 1237
    .local v23, target:I
    const/4 v8, -0x1

    .line 1239
    .local v8, curr:I
    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    .line 1240
    .local v22, start_end:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$1200(Landroid/webkit/EditableWebView;)Lcom/htc/textselection/SelectionAnchor;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7b6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v25, v0

    :goto_6e3
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_7ca

    const/4 v14, 0x1

    .line 1242
    .local v14, moveEndAnchor:Z
    :goto_6ea
    if-eqz v14, :cond_7cd

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mEndIndex:I
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$2700(Landroid/webkit/EditableWebView;)I

    move-result v8

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    #getter for: Landroid/webkit/EditableWebView;->mEditingNode:I
    invoke-static/range {v26 .. v26}, Landroid/webkit/EditableWebView;->access$2800(Landroid/webkit/EditableWebView;)I

    move-result v26

    add-int/lit8 v27, v8, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/HTCWebCore;->nativeGetWordRange(IILandroid/graphics/Point;)V

    .line 1246
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    .line 1254
    :goto_71f
    move/from16 v0, v23

    if-eq v8, v0, :cond_738

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v25

    const/16 v26, 0x216

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v0, v1, v8, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1267
    .end local v8           #curr:I
    .end local v14           #moveEndAnchor:Z
    .end local v22           #start_end:Landroid/graphics/Point;
    .end local v23           #target:I
    :cond_738
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 1268
    .local v18, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v24

    .line 1269
    .local v24, type:I
    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_7a9

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    const/16 v26, 0x73

    invoke-virtual/range {v25 .. v26}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v21

    .line 1271
    .local v21, start:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    const/16 v26, 0x65

    invoke-virtual/range {v25 .. v26}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v11

    .line 1272
    .local v11, end:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1276
    .end local v11           #end:Landroid/graphics/Rect;
    .end local v21           #start:Landroid/graphics/Rect;
    :cond_7a9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #setter for: Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;
    invoke-static/range {v25 .. v26}, Landroid/webkit/EditableWebView;->access$1202(Landroid/webkit/EditableWebView;Lcom/htc/textselection/SelectionAnchor;)Lcom/htc/textselection/SelectionAnchor;

    goto/16 :goto_ae

    .line 1240
    .end local v18           #r:Landroid/graphics/Rect;
    .end local v24           #type:I
    .restart local v8       #curr:I
    .restart local v22       #start_end:Landroid/graphics/Point;
    .restart local v23       #target:I
    :cond_7b6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v25, v0

    goto/16 :goto_6e3

    :cond_7ca
    const/4 v14, 0x0

    goto/16 :goto_6ea

    .line 1248
    .restart local v14       #moveEndAnchor:Z
    :cond_7cd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    #getter for: Landroid/webkit/EditableWebView;->mStartIndex:I
    invoke-static/range {v25 .. v25}, Landroid/webkit/EditableWebView;->access$2900(Landroid/webkit/EditableWebView;)I

    move-result v8

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$AnchorTouchListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v26, v0

    #getter for: Landroid/webkit/EditableWebView;->mEditingNode:I
    invoke-static/range {v26 .. v26}, Landroid/webkit/EditableWebView;->access$2800(Landroid/webkit/EditableWebView;)I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v8, v2}, Landroid/webkit/HTCWebCore;->nativeGetWordRange(IILandroid/graphics/Point;)V

    .line 1251
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    goto/16 :goto_71f

    .line 1125
    :pswitch_data_7fe
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_5d0
        :pswitch_375
        :pswitch_5d0
    .end packed-switch
.end method
