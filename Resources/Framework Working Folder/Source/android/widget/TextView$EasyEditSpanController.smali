.class Landroid/widget/TextView$EasyEditSpanController;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyEditSpanController"
.end annotation


# static fields
.field private static final DISPLAY_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private mEasyEditSpan:Landroid/text/style/EasyEditSpan;

.field private mHidePopup:Ljava/lang/Runnable;

.field private mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 8271
    iput-object p1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8271
    invoke-direct {p0, p1}, Landroid/widget/TextView$EasyEditSpanController;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/TextView$EasyEditSpanController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 8271
    invoke-direct {p0}, Landroid/widget/TextView$EasyEditSpanController;->hide()V

    return-void
.end method

.method private adjustSpans(Ljava/lang/CharSequence;)V
    .registers 8
    .parameter "buffer"

    .prologue
    .line 8357
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_22

    move-object v1, p1

    .line 8358
    check-cast v1, Landroid/text/Spannable;

    .line 8359
    .local v1, spannable:Landroid/text/Spannable;
    const/4 v3, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/EasyEditSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/EasyEditSpan;

    .line 8361
    .local v2, spans:[Landroid/text/style/EasyEditSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_22

    .line 8362
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 8361
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 8365
    .end local v0           #i:I
    .end local v1           #spannable:Landroid/text/Spannable;
    .end local v2           #spans:[Landroid/text/style/EasyEditSpan;
    :cond_22
    return-void
.end method

.method private getSpan(Landroid/text/Spanned;)Landroid/text/style/EasyEditSpan;
    .registers 6
    .parameter "spanned"

    .prologue
    const/4 v3, 0x0

    .line 8382
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroid/text/style/EasyEditSpan;

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/EasyEditSpan;

    .line 8384
    .local v0, easyEditSpans:[Landroid/text/style/EasyEditSpan;
    array-length v1, v0

    if-nez v1, :cond_12

    .line 8385
    const/4 v1, 0x0

    .line 8387
    :goto_11
    return-object v1

    :cond_12
    aget-object v1, v0, v3

    goto :goto_11
.end method

.method private hide()V
    .registers 3

    .prologue
    .line 8282
    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    if-eqz v0, :cond_10

    .line 8283
    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$EasyEditPopupWindow;->hide()V

    .line 8284
    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8286
    :cond_10
    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/TextView$EasyEditSpanController;->removeSpans(Ljava/lang/CharSequence;)V

    .line 8287
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    .line 8288
    return-void
.end method

.method private removeSpans(Ljava/lang/CharSequence;)V
    .registers 8
    .parameter "buffer"

    .prologue
    .line 8371
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_20

    move-object v1, p1

    .line 8372
    check-cast v1, Landroid/text/Spannable;

    .line 8373
    .local v1, spannable:Landroid/text/Spannable;
    const/4 v3, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/EasyEditSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/EasyEditSpan;

    .line 8375
    .local v2, spans:[Landroid/text/style/EasyEditSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    array-length v3, v2

    if-ge v0, v3, :cond_20

    .line 8376
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 8375
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 8379
    .end local v0           #i:I
    .end local v1           #spannable:Landroid/text/Spannable;
    .end local v2           #spans:[Landroid/text/style/EasyEditSpan;
    :cond_20
    return-void
.end method


# virtual methods
.method public onTextChange(Ljava/lang/CharSequence;)V
    .registers 7
    .parameter "buffer"

    .prologue
    const/4 v3, 0x0

    .line 8297
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/TextView$EasyEditSpanController;->adjustSpans(Ljava/lang/CharSequence;)V

    .line 8299
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_13

    .line 8347
    .end local p1
    :cond_12
    :goto_12
    return-void

    .line 8304
    .restart local p1
    :cond_13
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_12

    .line 8309
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 8310
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    instance-of v1, v1, Landroid/inputmethodservice/ExtractEditText;

    if-nez v1, :cond_2b

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_12

    .line 8319
    :cond_2b
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    if-eqz v1, :cond_48

    .line 8320
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_46

    .line 8321
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-interface {v1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 8323
    :cond_46
    iput-object v3, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    .line 8325
    :cond_48
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    if-eqz v1, :cond_59

    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    invoke-virtual {v1}, Landroid/widget/TextView$EasyEditPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 8326
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    invoke-virtual {v1}, Landroid/widget/TextView$EasyEditPopupWindow;->hide()V

    .line 8330
    :cond_59
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_12

    .line 8331
    check-cast p1, Landroid/text/Spanned;

    .end local p1
    invoke-direct {p0, p1}, Landroid/widget/TextView$EasyEditSpanController;->getSpan(Landroid/text/Spanned;)Landroid/text/style/EasyEditSpan;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    .line 8332
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    if-eqz v1, :cond_12

    .line 8333
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    if-nez v1, :cond_7d

    .line 8334
    new-instance v1, Landroid/widget/TextView$EasyEditPopupWindow;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    invoke-direct {v1, v2, v3}, Landroid/widget/TextView$EasyEditPopupWindow;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    .line 8335
    new-instance v1, Landroid/widget/TextView$EasyEditSpanController$1;

    invoke-direct {v1, p0}, Landroid/widget/TextView$EasyEditSpanController$1;-><init>(Landroid/widget/TextView$EasyEditSpanController;)V

    iput-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    .line 8342
    :cond_7d
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$EasyEditPopupWindow;->show(Landroid/text/style/EasyEditSpan;)V

    .line 8343
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8344
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_12
.end method
