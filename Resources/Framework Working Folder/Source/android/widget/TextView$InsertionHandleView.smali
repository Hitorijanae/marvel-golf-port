.class Landroid/widget/TextView$InsertionHandleView;
.super Landroid/widget/TextView$HandleView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xbb8

.field private static final DELAY_BEFORE_PASTE:I = 0x1f4

.field private static final RECENT_CUT_COPY_DURATION:I = 0x7530


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field private mPasteHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter
    .parameter "drawable"

    .prologue
    const/4 v1, 0x1

    .line 12281
    iput-object p1, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    .line 12282
    invoke-direct {p0, p1, p2, p2}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 12284
    iput v1, p0, Landroid/widget/TextView$HandleView;->mPos:I

    .line 12285
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$HandleView;->mHotspotY:F

    .line 12287
    iput-boolean v1, p0, Landroid/widget/TextView$HandleView;->mIsInsertionHandle:Z

    .line 12289
    return-void
.end method

.method private hideAfterDelay()V
    .registers 5

    .prologue
    .line 12379
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->removeHiderCallback()V

    .line 12380
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_e

    .line 12381
    new-instance v0, Landroid/widget/TextView$InsertionHandleView$2;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InsertionHandleView$2;-><init>(Landroid/widget/TextView$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 12387
    :cond_e
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12388
    return-void
.end method

.method private hidePasteAfterDelay()V
    .registers 5

    .prologue
    .line 12359
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->removePasteHiderCallback()V

    .line 12360
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    if-nez v0, :cond_e

    .line 12361
    new-instance v0, Landroid/widget/TextView$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InsertionHandleView$1;-><init>(Landroid/widget/TextView$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    .line 12367
    :cond_e
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12368
    return-void
.end method

.method private removeHiderCallback()V
    .registers 3

    .prologue
    .line 12391
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 12392
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12394
    :cond_b
    return-void
.end method

.method private removePasteHiderCallback()V
    .registers 3

    .prologue
    .line 12372
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 12373
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12375
    :cond_b
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .registers 2

    .prologue
    .line 12452
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 12398
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public onDetached()V
    .registers 1

    .prologue
    .line 12479
    invoke-super {p0}, Landroid/widget/TextView$HandleView;->onDetached()V

    .line 12480
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->removeHiderCallback()V

    .line 12481
    return-void
.end method

.method onHandleMoved()V
    .registers 1

    .prologue
    .line 12473
    invoke-super {p0}, Landroid/widget/TextView$HandleView;->onHandleMoved()V

    .line 12474
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->removeHiderCallback()V

    .line 12475
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "ev"

    .prologue
    .line 12403
    invoke-super {p0, p1}, Landroid/widget/TextView$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 12405
    .local v3, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_74

    .line 12447
    :cond_b
    :goto_b
    :pswitch_b
    return v3

    .line 12407
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Landroid/widget/TextView$InsertionHandleView;->mDownPositionX:F

    .line 12408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Landroid/widget/TextView$InsertionHandleView;->mDownPositionY:F

    .line 12410
    iget-object v4, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v4}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 12411
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->hideActionPopupWindow()V

    goto :goto_b

    .line 12418
    :pswitch_24
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->offsetHasBeenChanged()Z

    move-result v4

    if-nez v4, :cond_56

    .line 12419
    iget v4, p0, Landroid/widget/TextView$InsertionHandleView;->mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float v0, v4, v5

    .line 12420
    .local v0, deltaX:F
    iget v4, p0, Landroid/widget/TextView$InsertionHandleView;->mDownPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float v1, v4, v5

    .line 12421
    .local v1, deltaY:F
    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float v2, v4, v5

    .line 12422
    .local v2, distanceSquared:F
    iget-object v4, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSquaredTouchSlopDistance:I
    invoke-static {v4}, Landroid/widget/TextView;->access$10100(Landroid/widget/TextView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_56

    .line 12424
    iget-object v4, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v4}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 12425
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->showWithActionPopup()V

    .line 12436
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    :cond_56
    :goto_56
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->hideAfterDelay()V

    goto :goto_b

    .line 12427
    .restart local v0       #deltaX:F
    .restart local v1       #deltaY:F
    .restart local v2       #distanceSquared:F
    :cond_5a
    iget-object v4, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v4, :cond_6c

    iget-object v4, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    invoke-virtual {v4}, Landroid/widget/TextView$ActionPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 12429
    iget-object v4, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    invoke-virtual {v4}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    goto :goto_56

    .line 12431
    :cond_6c
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->showWithActionPopup()V

    goto :goto_56

    .line 12440
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    :pswitch_70
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->hideAfterDelay()V

    goto :goto_b

    .line 12405
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_c
        :pswitch_24
        :pswitch_b
        :pswitch_70
    .end packed-switch
.end method

.method public show()V
    .registers 2

    .prologue
    .line 12293
    invoke-super {p0}, Landroid/widget/TextView$HandleView;->show()V

    .line 12295
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->removePasteHiderCallback()V

    .line 12296
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mLongpressWhiteSpace:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$7500(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 12297
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/widget/TextView$InsertionHandleView;->showActionPopupWindow(I)V

    .line 12301
    :goto_13
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->hideAfterDelay()V

    .line 12302
    return-void

    .line 12299
    :cond_17
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->showPasteWithinTimeScale()V

    goto :goto_13
.end method

.method public showPasteWithinTimeScale()V
    .registers 12

    .prologue
    .line 12326
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "clipboard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 12327
    .local v3, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_5d

    move-result-object v2

    .line 12328
    .local v2, clip:Landroid/content/ClipData;
    const/4 v8, 0x0

    .line 12329
    .local v8, label:Ljava/lang/String;
    const/4 v7, 0x0

    .line 12330
    .local v7, hasHtcTimestamp:Z
    const-wide/16 v0, 0x0

    .line 12332
    .local v0, LastCutOrCopyTimeAcrossAp:J
    if-eqz v2, :cond_3f

    .line 12334
    :try_start_16
    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_21} :catch_53

    move-result-object v8

    .line 12340
    :goto_22
    if-eqz v8, :cond_3f

    :try_start_24
    const-string v9, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 12341
    const/4 v7, 0x1

    .line 12342
    const-string v9, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 12346
    :cond_3f
    if-eqz v7, :cond_52

    .line 12347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v4, v9, v0

    .line 12349
    .local v4, durationSinceCutOrCopy:J
    const-wide/16 v9, 0x7530

    cmp-long v9, v4, v9

    if-gez v9, :cond_52

    .line 12350
    const/16 v9, 0x1f4

    invoke-virtual {p0, v9}, Landroid/widget/TextView$InsertionHandleView;->showActionPopupWindow(I)V

    .line 12356
    .end local v0           #LastCutOrCopyTimeAcrossAp:J
    .end local v2           #clip:Landroid/content/ClipData;
    .end local v3           #clipboard:Landroid/content/ClipboardManager;
    .end local v4           #durationSinceCutOrCopy:J
    .end local v7           #hasHtcTimestamp:Z
    .end local v8           #label:Ljava/lang/String;
    :cond_52
    :goto_52
    return-void

    .line 12335
    .restart local v0       #LastCutOrCopyTimeAcrossAp:J
    .restart local v2       #clip:Landroid/content/ClipData;
    .restart local v3       #clipboard:Landroid/content/ClipboardManager;
    .restart local v7       #hasHtcTimestamp:Z
    .restart local v8       #label:Ljava/lang/String;
    :catch_53
    move-exception v6

    .line 12336
    .local v6, e:Ljava/lang/Exception;
    const-string v9, "TextView"

    const-string v10, "GetLabel fail! Do framework orig behavior"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_5b} :catch_5d

    .line 12337
    const/4 v8, 0x0

    goto :goto_22

    .line 12353
    .end local v0           #LastCutOrCopyTimeAcrossAp:J
    .end local v2           #clip:Landroid/content/ClipData;
    .end local v3           #clipboard:Landroid/content/ClipboardManager;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #hasHtcTimestamp:Z
    .end local v8           #label:Ljava/lang/String;
    :catch_5d
    move-exception v6

    .line 12354
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v9, "TextView"

    const-string v10, "Security exception"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method public showPasteWithoutInsertionHandle()V
    .registers 4

    .prologue
    .line 12318
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

    if-nez v0, :cond_e

    new-instance v0, Landroid/widget/TextView$HtcPastePositionListener;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$HtcPastePositionListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

    .line 12319
    :cond_e
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView$PositionListener;->addSubscriber(Landroid/widget/TextView$TextViewPositionListener;Z)V

    .line 12320
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->showPasteWithinTimeScale()V

    .line 12321
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->hidePasteAfterDelay()V

    .line 12322
    return-void
.end method

.method public showWithActionPopup()V
    .registers 2

    .prologue
    .line 12305
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->show()V

    .line 12306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView$InsertionHandleView;->showActionPopupWindow(I)V

    .line 12307
    return-void
.end method

.method public showWithActionPopupDelay()V
    .registers 4

    .prologue
    .line 12311
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

    if-nez v0, :cond_e

    new-instance v0, Landroid/widget/TextView$HtcPastePositionListener;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$HtcPastePositionListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

    .line 12312
    :cond_e
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView$PositionListener;->addSubscriber(Landroid/widget/TextView$TextViewPositionListener;Z)V

    .line 12313
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/widget/TextView$InsertionHandleView;->showActionPopupWindow(I)V

    .line 12314
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->hidePasteAfterDelay()V

    .line 12315
    return-void
.end method

.method public updatePosition(FF)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 12463
    const/4 v0, 0x0

    .line 12464
    .local v0, offset:I
    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z
    invoke-static {v1}, Landroid/widget/TextView;->access$8700(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 12465
    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/widget/TextView;->getEasyUpHardDownOffset(FFI)I

    move-result v0

    .line 12468
    :goto_15
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$InsertionHandleView;->positionAtCursorOffset(IZ)V

    .line 12469
    return-void

    .line 12467
    :cond_1a
    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    goto :goto_15
.end method

.method public updateSelection(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 12457
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 12458
    return-void
.end method
