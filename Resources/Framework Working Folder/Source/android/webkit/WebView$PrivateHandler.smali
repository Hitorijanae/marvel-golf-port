.class Landroid/webkit/WebView$PrivateHandler;
.super Landroid/os/Handler;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter

    .prologue
    .line 9636
    iput-object p1, p0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 51
    .parameter "msg"

    .prologue
    .line 9653
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    if-nez v2, :cond_b

    .line 10401
    :cond_a
    :goto_a
    return-void

    .line 9657
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_a

    .line 9662
    :cond_1d
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_d80

    .line 10398
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_a

    .line 9664
    :sswitch_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 9667
    .local v9, currentTime:J
    invoke-static {}, Landroid/webkit/WebView;->access$3900()J

    move-result-wide v2

    sub-long v2, v9, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_a6

    .line 9668
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    if-nez v2, :cond_4e

    .line 9669
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    new-instance v3, Lorg/codeaurora/Performance;

    invoke-direct {v3}, Lorg/codeaurora/Performance;-><init>()V

    #setter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$4002(Landroid/webkit/WebView;Lorg/codeaurora/Performance;)Lorg/codeaurora/Performance;

    .line 9672
    :cond_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/codeaurora/Performance;->cpuBoost(I)V

    .line 9674
    invoke-static {}, Landroid/webkit/WebView;->access$4100()Z

    move-result v2

    if-nez v2, :cond_8d

    .line 9675
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/webkit/WebView;->access$4102(Z)Z

    .line 9678
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 9679
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 9680
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 9682
    :cond_8d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a

    .line 9684
    :cond_a6
    invoke-static {}, Landroid/webkit/WebView;->access$4100()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 9685
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/webkit/WebView;->access$4102(Z)Z

    .line 9688
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 9689
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 9690
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    goto/16 :goto_a

    .line 9696
    .end local v9           #currentTime:J
    :sswitch_da
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "host"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "password"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9700
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_a

    .line 9704
    :sswitch_111
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "host"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9706
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_a

    .line 9712
    :sswitch_134
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_145

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_157

    :cond_145
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 9716
    :cond_157
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v5, v5, Landroid/webkit/WebView;->mLastTouchY:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    const/4 v5, 0x1

    #calls: Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V
    invoke-static {v2, v3, v4, v5}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;IIZ)V

    goto/16 :goto_a

    .line 9724
    :sswitch_18f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)I

    move-result v2

    if-nez v2, :cond_1ad

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollY:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)I

    move-result v2

    if-nez v2, :cond_1ad

    .line 9725
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mSentAutoScrollMessage:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$4702(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_a

    .line 9728
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mCurrentScrollingLayerId:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4800(Landroid/webkit/WebView;)I

    move-result v2

    if-nez v2, :cond_1db

    .line 9729
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollX:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollY:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->pinScrollBy(IIZI)Z
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;IIZI)Z

    .line 9734
    :goto_1d0
    const/16 v2, 0xb

    const-wide/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/webkit/WebView$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 9731
    :cond_1db
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollX:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v4}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollY:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    #calls: Landroid/webkit/WebView;->scrollLayerTo(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$5100(Landroid/webkit/WebView;II)V

    goto :goto_1d0

    .line 9739
    :sswitch_209
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_22a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_22a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    .line 9742
    :cond_22a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateSelection()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;)V

    goto/16 :goto_a

    .line 9747
    :sswitch_233
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5402(Landroid/webkit/WebView;Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    .line 9748
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27a

    .line 9749
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v2

    if-nez v2, :cond_270

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_270

    .line 9751
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x4

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;I)I

    .line 9752
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateSelection()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;)V

    goto/16 :goto_a

    .line 9756
    :cond_270
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x5

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;I)I

    goto/16 :goto_a

    .line 9758
    :cond_27a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_a

    .line 9759
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;I)I

    goto/16 :goto_a

    .line 9764
    :sswitch_28f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v2

    if-eqz v2, :cond_2a4

    .line 9765
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->removeTouchHighlight()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;)V

    .line 9767
    :cond_2a4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_2b8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_397

    .line 9768
    :cond_2b8
    new-instance v36, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v36 .. v36}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 9769
    .local v36, ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v2, 0x100

    move-object/from16 v0, v36

    iput v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 9770
    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, v36

    iput-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 9771
    move-object/from16 v0, v36

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 9772
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Point;

    move-object/from16 v0, v36

    iput-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 9773
    move-object/from16 v0, v36

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v7, v7, Landroid/webkit/WebView;->mLastTouchY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v48, v0

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static/range {v48 .. v48}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)I

    move-result v48

    add-int v7, v7, v48

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v2, v3

    .line 9775
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Point;

    move-object/from16 v0, v36

    iput-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 9776
    move-object/from16 v0, v36

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v5, v5, Landroid/webkit/WebView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mLastTouchY:I

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v2, v3

    .line 9781
    const/4 v2, 0x0

    move-object/from16 v0, v36

    iput v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 9782
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;)Z

    move-result v2

    move-object/from16 v0, v36

    iput-boolean v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 9783
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v36

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v36

    iget-object v4, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    move-object/from16 v0, v36

    iput v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 9786
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v2

    move-object/from16 v0, v36

    iput-wide v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 9787
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 9789
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x8d

    move-object/from16 v0, v36

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebViewCore;->sendTouchMessage(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 9790
    .end local v36           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_397
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    .line 9791
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;I)I

    .line 9792
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_a

    .line 9800
    :sswitch_3b3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_3e0

    .line 9801
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_3d7

    .line 9802
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    .line 9804
    :cond_3d7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->singleTapInEditableWebView()V

    goto/16 :goto_a

    .line 9808
    :cond_3e0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->doShortPress()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$6200(Landroid/webkit/WebView;)V

    goto/16 :goto_a

    .line 9814
    :sswitch_3e9
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_422

    .line 9817
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v18

    .line 9818
    .local v18, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_422

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 9824
    .end local v18           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_422
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/graphics/Point;

    .line 9825
    .local v26, p:Landroid/graphics/Point;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_442

    .line 9826
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebView;->spawnContentScrollTo(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$6400(Landroid/webkit/WebView;II)V

    goto/16 :goto_a

    .line 9828
    :cond_442
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebView;->setContentScrollTo(II)Z
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$6500(Landroid/webkit/WebView;II)Z

    goto/16 :goto_a

    .line 9833
    .end local v26           #p:Landroid/graphics/Point;
    :sswitch_453
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/webkit/WebViewCore$ViewState;

    .line 9835
    .local v42, viewState:Landroid/webkit/WebViewCore$ViewState;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    move-object/from16 v0, v42

    iget v4, v0, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    move-object/from16 v0, v42

    invoke-virtual {v2, v0, v3, v4}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    goto/16 :goto_a

    .line 9839
    .end local v42           #viewState:Landroid/webkit/WebViewCore$ViewState;
    :sswitch_476
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 9840
    .local v12, density:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    goto/16 :goto_a

    .line 9844
    .end local v12           #density:F
    :sswitch_48d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebView;->nativeReplaceBaseContent(I)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$6600(Landroid/webkit/WebView;I)V

    goto/16 :goto_a

    .line 9849
    :sswitch_49a
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/webkit/WebViewCore$DrawData;

    .line 9851
    .local v14, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v14, v3}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    goto/16 :goto_a

    .line 9856
    .end local v14           #draw:Landroid/webkit/WebViewCore$DrawData;
    :sswitch_4aa
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebView;->access$6700(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/webkit/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 9858
    .local v15, drawableDir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6800(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/view/WindowManager;

    .line 9860
    .local v45, windowManager:Landroid/view/WindowManager;
    invoke-interface/range {v45 .. v45}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    .line 9861
    .local v13, display:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v4

    #calls: Landroid/webkit/WebView;->nativeCreate(ILjava/lang/String;Z)V
    invoke-static {v2, v3, v15, v4}, Landroid/webkit/WebView;->access$6900(Landroid/webkit/WebView;ILjava/lang/String;Z)V

    .line 9863
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2}, Landroid/webkit/WebView;->access$7000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v2

    if-eqz v2, :cond_4fd

    .line 9864
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v3}, Landroid/webkit/WebView;->access$7000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 9865
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7002(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;

    .line 9867
    :cond_4fd
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mIsPaused:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$7100(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 9868
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$7200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    #calls: Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7300(IZ)V

    goto/16 :goto_a

    .line 9882
    .end local v13           #display:Landroid/view/Display;
    .end local v15           #drawableDir:Ljava/lang/String;
    .end local v45           #windowManager:Landroid/view/WindowManager;
    :sswitch_515
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 9884
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTextGeneration:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;)I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 9885
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/lang/String;

    .line 9886
    .local v37, text:Ljava/lang/String;
    if-nez v37, :cond_54b

    .line 9887
    const-string v37, ""

    .line 9889
    :cond_54b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 9894
    .end local v37           #text:Ljava/lang/String;
    :sswitch_55a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7500(Landroid/webkit/WebView;Z)V

    .line 9897
    :sswitch_562
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$TextSelectionData;

    #calls: Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v3, v4, v5, v2}, Landroid/webkit/WebView;->access$7600(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_a

    .line 9901
    :sswitch_579
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 9903
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$7700(Landroid/webkit/WebView;)V

    goto/16 :goto_a

    .line 9907
    :sswitch_59e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 9909
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 9910
    .local v17, hint:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v25

    .line 9911
    .local v25, orig_hint:Ljava/lang/CharSequence;
    if-eqz v25, :cond_5dc

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 9912
    :cond_5dc
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 9913
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v18

    .line 9918
    .restart local v18       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 9919
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto/16 :goto_a

    .line 9925
    .end local v17           #hint:Ljava/lang/String;
    .end local v18           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v25           #orig_hint:Ljava/lang/CharSequence;
    :sswitch_612
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    #calls: Landroid/webkit/WebView;->navHandledKey(IIZJ)Z
    invoke-static/range {v2 .. v7}, Landroid/webkit/WebView;->access$7800(Landroid/webkit/WebView;IIZJ)Z

    goto/16 :goto_a

    .line 9929
    :sswitch_623
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->howToSelection:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$7900(Landroid/webkit/WebView;)I

    move-result v3

    if-ne v2, v3, :cond_664

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v2}, Landroid/webkit/WebView$QuickSelectAbs;->isSelecting()Z

    move-result v2

    if-eqz v2, :cond_664

    .line 9930
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v0, v2, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebView$QuickSelectWV;

    .line 9931
    .local v29, quickSelect:Landroid/webkit/WebView$QuickSelectWV;
    invoke-virtual/range {v29 .. v29}, Landroid/webkit/WebView$QuickSelectWV;->resumeSelection()V

    .line 9948
    .end local v29           #quickSelect:Landroid/webkit/WebView$QuickSelectWV;
    :cond_647
    :goto_647
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->nativeCursorIsTextInput()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$8000(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 9949
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateWebTextViewPosition()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$8100(Landroid/webkit/WebView;)V

    goto/16 :goto_a

    .line 9936
    :cond_664
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_647

    .line 9938
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_647

    .line 9939
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->updatePositionRect()V

    .line 9940
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    check-cast v2, Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->resumeSelctionUI()V

    goto :goto_647

    .line 9953
    :sswitch_68d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearTextEntry()V

    goto/16 :goto_a

    .line 9956
    :sswitch_696
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/graphics/Rect;

    .line 9957
    .local v30, r:Landroid/graphics/Rect;
    if-nez v30, :cond_6a9

    .line 9958
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_a

    .line 9962
    :cond_6a9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v30

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$8200(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_a

    .line 9967
    .end local v30           #r:Landroid/graphics/Rect;
    :sswitch_6c2
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/webkit/WebTextView$AutoCompleteAdapter;

    .line 9968
    .local v8, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 9969
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_a

    .line 9976
    .end local v8           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :sswitch_6e7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mGotCenterDown:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$8302(Landroid/webkit/WebView;Z)Z

    .line 9977
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mTrackballDown:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$8402(Landroid/webkit/WebView;Z)Z

    .line 9978
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_a

    .line 9982
    :sswitch_700
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_710

    const/4 v2, 0x1

    :goto_70b
    #setter for: Landroid/webkit/WebView;->mForwardTouchEvents:Z
    invoke-static {v3, v2}, Landroid/webkit/WebView;->access$8502(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_a

    :cond_710
    const/4 v2, 0x0

    goto :goto_70b

    .line 9986
    :sswitch_712
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 9989
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/webkit/WebViewCore$TouchEventData;

    .line 9991
    .restart local v36       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/webkit/WebView$TouchEventQueue;->enqueueTouchEvent(Landroid/webkit/WebViewCore$TouchEventData;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 9994
    const/16 v2, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$PrivateHandler;->removeMessages(I)V

    goto/16 :goto_a

    .line 9999
    .end local v36           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_73d
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_74c

    .line 10000
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$7700(Landroid/webkit/WebView;)V

    goto/16 :goto_a

    .line 10002
    :cond_74c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7500(Landroid/webkit/WebView;Z)V

    goto/16 :goto_a

    .line 10008
    :sswitch_756
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFindIsUp:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$8600(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 10009
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebView;->access$8700(Landroid/webkit/WebView;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    if-eqz v2, :cond_777

    .line 10010
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebView;->access$8700(Landroid/webkit/WebView;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->findAll()V

    goto/16 :goto_a

    .line 10013
    :cond_777
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->mCustomFindMode:Z

    if-eqz v2, :cond_a

    .line 10014
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/WebView;->access$8800(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    goto/16 :goto_a

    .line 10021
    :sswitch_790
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x2

    #setter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$8902(Landroid/webkit/WebView;I)I

    .line 10022
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 10026
    :sswitch_79f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$8900(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 10028
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebView;->awakenScrollBars(IZ)Z
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$9000(Landroid/webkit/WebView;IZ)Z

    .line 10031
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 10033
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a

    .line 10040
    :sswitch_7e8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebView;->doMotionUp(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$9100(Landroid/webkit/WebView;II)V

    goto/16 :goto_a

    .line 10044
    :sswitch_7f9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_80a

    const/4 v2, 0x1

    :goto_805
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setKeepScreenOn(Z)V

    goto/16 :goto_a

    :cond_80a
    const/4 v2, 0x0

    goto :goto_805

    .line 10048
    :sswitch_80c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 10050
    .local v19, layerId:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Ljava/lang/String;

    .line 10051
    .local v39, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebView;->access$9200(Landroid/webkit/WebView;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 10052
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebView;->access$9200(Landroid/webkit/WebView;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    move/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v2, v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->enterFullScreenVideo(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 10057
    .end local v19           #layerId:I
    .end local v39           #url:Ljava/lang/String;
    :sswitch_835
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/view/View;

    .line 10058
    .local v40, view:Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 10059
    .local v24, orientation:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    .line 10061
    .local v23, npp:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_862

    .line 10062
    const-string/jumbo v2, "webview"

    const-string v3, "Should not have another full screen."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10063
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$9300(Landroid/webkit/WebView;)V

    .line 10065
    :cond_862
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-direct {v3, v4, v0, v1}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebView;II)V

    iput-object v3, v2, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 10066
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    .line 10067
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v2}, Landroid/webkit/PluginFullScreenHolder;->show()V

    goto/16 :goto_a

    .line 10072
    .end local v23           #npp:I
    .end local v24           #orientation:I
    .end local v40           #view:Landroid/view/View;
    :sswitch_88b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$9300(Landroid/webkit/WebView;)V

    goto/16 :goto_a

    .line 10076
    :sswitch_894
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 10077
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 10078
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_a

    .line 10083
    :sswitch_8ae
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->pauseTimers()V

    goto/16 :goto_a

    .line 10087
    :sswitch_8b7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPausedTimerByZoom:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$9400(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 10088
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->resumeTimers()V

    goto/16 :goto_a

    .line 10160
    :sswitch_8ca
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/webkit/WebViewCore$ShowRectData;

    .line 10161
    .local v11, data:Landroid/webkit/WebViewCore$ShowRectData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$9500(Landroid/webkit/WebView;)I

    move-result v46

    .line 10162
    .local v46, x:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v11, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v20

    .line 10163
    .local v20, left:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v11, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v44

    .line 10164
    .local v44, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v11, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v22

    .line 10165
    .local v22, maxWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v43

    .line 10166
    .local v43, viewWidth:I
    move/from16 v0, v44

    move/from16 v1, v43

    if-ge v0, v1, :cond_9ad

    .line 10168
    div-int/lit8 v2, v44, 0x2

    add-int v2, v2, v20

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$9600(Landroid/webkit/WebView;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v3, v43, 0x2

    sub-int/2addr v2, v3

    add-int v46, v46, v2

    .line 10185
    :goto_916
    const/4 v2, 0x0

    add-int v3, v46, v43

    move/from16 v0, v22

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v3, v43

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v46

    .line 10187
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v11, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v38

    .line 10188
    .local v38, top:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v11, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v16

    .line 10189
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v11, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v21

    .line 10190
    .local v21, maxHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v41

    .line 10194
    .local v41, viewHeight:I
    iget-boolean v2, v11, Landroid/webkit/WebViewCore$ShowRectData;->mhasFocusNode:Z

    if-eqz v2, :cond_9bd

    .line 10195
    div-int/lit8 v2, v16, 0x2

    add-int v2, v2, v38

    div-int/lit8 v3, v41, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v11, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    const/high16 v4, 0x3f00

    sub-float/2addr v3, v4

    move/from16 v0, v16

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v47, v0

    .line 10208
    .local v47, y:I
    :goto_964
    const/4 v2, 0x0

    add-int v3, v47, v41

    move/from16 v0, v21

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v3, v41

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v47

    .line 10212
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I
    invoke-static {v3}, Landroid/webkit/WebView;->access$9800(Landroid/webkit/WebView;)I

    move-result v3

    sub-int v3, v47, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v47

    .line 10216
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_9d2

    .line 10217
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v46

    #setter for: Landroid/webkit/WebView;->mPendingScrollX:I
    invoke-static {v2, v0}, Landroid/webkit/WebView;->access$9902(Landroid/webkit/WebView;I)I

    .line 10218
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v47

    #setter for: Landroid/webkit/WebView;->mPendingScrollY:I
    invoke-static {v2, v0}, Landroid/webkit/WebView;->access$10002(Landroid/webkit/WebView;I)I

    .line 10219
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x133

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 10173
    .end local v16           #height:I
    .end local v21           #maxHeight:I
    .end local v38           #top:I
    .end local v41           #viewHeight:I
    .end local v47           #y:I
    :cond_9ad
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$9700(Landroid/webkit/WebView;)I

    move-result v2

    sub-int v2, v20, v2

    add-int/lit8 v2, v2, -0x14

    add-int v46, v46, v2

    goto/16 :goto_916

    .line 10197
    .restart local v16       #height:I
    .restart local v21       #maxHeight:I
    .restart local v38       #top:I
    .restart local v41       #viewHeight:I
    :cond_9bd
    move/from16 v0, v38

    int-to-float v2, v0

    iget v3, v11, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move/from16 v0, v16

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v11, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move/from16 v0, v41

    int-to-float v4, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v47, v0

    .restart local v47       #y:I
    goto :goto_964

    .line 10221
    :cond_9d2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 10223
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    iget v2, v2, Landroid/webkit/ZoomManager;->mFocusNodeScale:I

    if-eqz v2, :cond_a

    .line 10224
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v3}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v3

    iget v3, v3, Landroid/webkit/ZoomManager;->mFocusNodeScale:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v31

    .line 10226
    .local v31, rect:Landroid/graphics/Rect;
    if-eqz v31, :cond_a6a

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a6a

    .line 10227
    move-object/from16 v0, v31

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v4}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v4

    iget v4, v4, Landroid/webkit/ZoomManager;->mFocusXratio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v27, v0

    .line 10228
    .local v27, predictX:I
    move-object/from16 v0, v31

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v4}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v4

    iget v4, v4, Landroid/webkit/ZoomManager;->mFocusYratio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v28, v0

    .line 10229
    .local v28, predictY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v4}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v4

    iget v4, v4, Landroid/webkit/ZoomManager;->mFocusAnchorX:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v5}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v5

    iget v5, v5, Landroid/webkit/ZoomManager;->mFocusAnchorY:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->shiftAfterZoom(II)V

    .line 10234
    .end local v27           #predictX:I
    .end local v28           #predictY:I
    :cond_a6a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/webkit/ZoomManager;->mFocusNodeScale:I

    goto/16 :goto_a

    .line 10243
    .end local v11           #data:Landroid/webkit/WebViewCore$ShowRectData;
    .end local v16           #height:I
    .end local v20           #left:I
    .end local v21           #maxHeight:I
    .end local v22           #maxWidth:I
    .end local v31           #rect:Landroid/graphics/Rect;
    .end local v38           #top:I
    .end local v41           #viewHeight:I
    .end local v43           #viewWidth:I
    .end local v44           #width:I
    .end local v46           #x:I
    .end local v47           #y:I
    :sswitch_a77
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->centerFitRect(Landroid/graphics/Rect;)V

    goto/16 :goto_a

    .line 10247
    :sswitch_a86
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #setter for: Landroid/webkit/WebView;->mHorizontalScrollBarMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$10102(Landroid/webkit/WebView;I)I

    .line 10248
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    #setter for: Landroid/webkit/WebView;->mVerticalScrollBarMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$10202(Landroid/webkit/WebView;I)I

    goto/16 :goto_a

    .line 10254
    :sswitch_a9e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mIsPaused:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$7100(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_ab3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->m_bIsBrowserApp:Z
    invoke-static {v3}, Landroid/webkit/WebView;->access$10300(Landroid/webkit/WebView;)Z

    move-result v3

    if-ne v2, v3, :cond_ab3

    .line 10264
    :cond_ab3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 10266
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setStopDrawing(Z)V

    .line 10268
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->m_bPauseAll:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ada

    .line 10269
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->resumeAll()V

    .line 10275
    :cond_ada
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getSmartZoomInst()Landroid/webkit/ZoomManager$HTCSmartZoom;

    move-result-object v2

    if-eqz v2, :cond_af7

    .line 10276
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getSmartZoomInst()Landroid/webkit/ZoomManager$HTCSmartZoom;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager$HTCSmartZoom;->finishScaleToFit()V

    .line 10278
    :cond_af7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    if-eqz v2, :cond_b8f

    .line 10279
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->mDrawInSchedule:Z

    .line 10280
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    iget-boolean v2, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bDisableURLLink:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b53

    .line 10281
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bDisableURLLink:Z

    .line 10282
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/ZoomManager$HTCMultiTouch;->fnMultiTouchRecoveryStatus(I)V

    .line 10283
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bMTEnding:Z

    .line 10286
    :cond_b53
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_b80

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    iget-boolean v2, v2, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b80

    .line 10287
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    .line 10288
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPictureCount:I

    .line 10291
    :cond_b80
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bUpdateSizeFinish:Z

    .line 10294
    :cond_b8f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 10297
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->recoverBackground()V

    goto/16 :goto_a

    .line 10305
    :sswitch_ba5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    iget-boolean v2, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_inMultiTouchMode:Z

    if-nez v2, :cond_a

    .line 10307
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v2, :cond_be5

    .line 10308
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/webkit/HTCWebCore;->nativeSetSkiaFontCacheSize(J)V

    .line 10310
    :cond_be5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bMTEnding:Z

    goto/16 :goto_a

    .line 10315
    :sswitch_bf6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    .line 10316
    .local v35, setLoading:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->m_bIsLoading:Z

    move/from16 v0, v35

    if-eq v2, v0, :cond_a

    .line 10317
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setIsLoading(Z)V

    goto/16 :goto_a

    .line 10322
    .end local v35           #setLoading:Z
    :sswitch_c15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;
    invoke-static {v2}, Landroid/webkit/WebView;->access$10400(Landroid/webkit/WebView;)Landroid/webkit/AccessibilityInjector;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 10323
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    .line 10324
    .local v34, selectionString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;
    invoke-static {v2}, Landroid/webkit/WebView;->access$10400(Landroid/webkit/WebView;)Landroid/webkit/AccessibilityInjector;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/webkit/AccessibilityInjector;->onSelectionStringChange(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 10330
    .end local v34           #selectionString:Ljava/lang/String;
    :sswitch_c36
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/util/ArrayList;

    .line 10331
    .local v32, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v32

    #calls: Landroid/webkit/WebView;->setTouchHighlightRects(Ljava/util/ArrayList;)V
    invoke-static {v2, v0}, Landroid/webkit/WebView;->access$10500(Landroid/webkit/WebView;Ljava/util/ArrayList;)V

    goto/16 :goto_a

    .line 10335
    .end local v32           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :sswitch_c49
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/webkit/WebView$SaveWebArchiveMessage;

    .line 10336
    .local v33, saveMessage:Landroid/webkit/WebView$SaveWebArchiveMessage;
    move-object/from16 v0, v33

    iget-object v2, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_a

    .line 10337
    move-object/from16 v0, v33

    iget-object v2, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 10342
    .end local v33           #saveMessage:Landroid/webkit/WebView$SaveWebArchiveMessage;
    :sswitch_c64
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$AutoFillData;

    #setter for: Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3, v2}, Landroid/webkit/WebView;->access$1002(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;

    .line 10343
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 10344
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setAutoFillable(I)V

    .line 10345
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_a

    .line 10350
    :sswitch_c9b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 10353
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_a

    .line 10358
    :sswitch_cb3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebView;->nativeSelectAt(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$10600(Landroid/webkit/WebView;II)V

    goto/16 :goto_a

    .line 10363
    :sswitch_cc4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->updateContentFromMessage(I)V

    goto/16 :goto_a

    .line 10367
    :sswitch_cd1
    const-string v2, "KENLOG"

    const-string v3, "<WebView> SET_WILL_NOT_DRAW"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10368
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    goto/16 :goto_a

    .line 10372
    :sswitch_ce2
    const-string v2, "KENLOG"

    const-string v3, "<WebView> SET_WILL_DRAW"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10373
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    goto/16 :goto_a

    .line 10377
    :sswitch_cf3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebView;->access$10700(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v3

    #calls: Landroid/webkit/WebView;->setupPackageListener(Landroid/content/Context;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$10800(Landroid/webkit/WebView;Landroid/content/Context;)V

    .line 10378
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebView;->access$10900(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    #calls: Landroid/webkit/WebView;->setupProxyListener(Landroid/content/Context;)V
    invoke-static {v2}, Landroid/webkit/WebView;->access$11000(Landroid/content/Context;)V

    .line 10380
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateSelectionColors()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$11100(Landroid/webkit/WebView;)V

    .line 10381
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v3}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getWebSelectionType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebSelectionType(I)V

    .line 10383
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->m_bIsBrowserApp:Z
    invoke-static {v3}, Landroid/webkit/WebView;->access$10300(Landroid/webkit/WebView;)Z

    move-result v3

    #calls: Landroid/webkit/WebView;->nativeSetIsBrowser(Z)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$11200(Landroid/webkit/WebView;Z)V

    goto/16 :goto_a

    .line 10386
    :sswitch_d3c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto/16 :goto_a

    .line 10390
    :sswitch_d46
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-eqz v2, :cond_a

    .line 10392
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v2}, Landroid/webkit/JWebCoreJavaBridge;->stopDelayTimer()V

    .line 10393
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x134

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_a

    .line 9662
    :sswitch_data_d80
    .sparse-switch
        0x1 -> :sswitch_da
        0x2 -> :sswitch_111
        0x3 -> :sswitch_233
        0x4 -> :sswitch_28f
        0x5 -> :sswitch_3b3
        0x6 -> :sswitch_6c2
        0x8 -> :sswitch_790
        0x9 -> :sswitch_79f
        0xa -> :sswitch_134
        0xb -> :sswitch_18f
        0xc -> :sswitch_28
        0x65 -> :sswitch_3e9
        0x69 -> :sswitch_49a
        0x6a -> :sswitch_623
        0x6b -> :sswitch_4aa
        0x6c -> :sswitch_515
        0x6d -> :sswitch_453
        0x6e -> :sswitch_612
        0x6f -> :sswitch_68d
        0x70 -> :sswitch_562
        0x71 -> :sswitch_8ca
        0x72 -> :sswitch_6e7
        0x73 -> :sswitch_712
        0x74 -> :sswitch_700
        0x75 -> :sswitch_696
        0x76 -> :sswitch_73d
        0x77 -> :sswitch_7e8
        0x78 -> :sswitch_835
        0x79 -> :sswitch_88b
        0x7a -> :sswitch_894
        0x7b -> :sswitch_48d
        0x7c -> :sswitch_579
        0x7d -> :sswitch_59e
        0x7e -> :sswitch_756
        0x7f -> :sswitch_a77
        0x80 -> :sswitch_55a
        0x81 -> :sswitch_a86
        0x82 -> :sswitch_c15
        0x83 -> :sswitch_c36
        0x84 -> :sswitch_c49
        0x85 -> :sswitch_c64
        0x86 -> :sswitch_c9b
        0x87 -> :sswitch_cb3
        0x88 -> :sswitch_7f9
        0x89 -> :sswitch_80c
        0x8a -> :sswitch_209
        0x8b -> :sswitch_476
        0xc8 -> :sswitch_a9e
        0xc9 -> :sswitch_ba5
        0xcc -> :sswitch_bf6
        0xcd -> :sswitch_cc4
        0x12e -> :sswitch_cd1
        0x12f -> :sswitch_ce2
        0x130 -> :sswitch_cf3
        0x131 -> :sswitch_d3c
        0x134 -> :sswitch_d46
        0x136 -> :sswitch_8ae
        0x137 -> :sswitch_8b7
    .end sparse-switch
.end method
