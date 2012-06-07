.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object; = null

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field protected final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .registers 5
    .parameter "targetView"
    .parameter "fullEditor"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 72
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 73
    if-nez p2, :cond_1a

    const/4 v0, 0x1

    :goto_17
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 74
    return-void

    .line 73
    :cond_1a
    const/4 v0, 0x0

    goto :goto_17
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 4
    .parameter "mgr"
    .parameter "fullEditor"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 66
    if-nez p2, :cond_e

    const/4 v0, 0x1

    :goto_b
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 67
    return-void

    .line 66
    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private ensureDefaultComposingSpans()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 566
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v3, :cond_3d

    .line 568
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v3, :cond_3e

    .line 569
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 575
    .local v0, context:Landroid/content/Context;
    :goto_f
    if-eqz v0, :cond_3d

    .line 576
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010230

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 580
    .local v2, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 581
    .local v1, style:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 582
    if-eqz v1, :cond_3d

    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_3d

    move-object v3, v1

    .line 583
    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 588
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #style:Ljava/lang/CharSequence;
    .end local v2           #ta:Landroid/content/res/TypedArray;
    :cond_3d
    return-void

    .line 570
    :cond_3e
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v3, :cond_4d

    .line 571
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_f

    .line 573
    .end local v0           #context:Landroid/content/Context;
    :cond_4d
    const/4 v0, 0x0

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_f
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .registers 2
    .parameter "text"

    .prologue
    .line 124
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .registers 2
    .parameter "text"

    .prologue
    .line 120
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .registers 7
    .parameter "text"

    .prologue
    .line 77
    sget-object v3, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 78
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, sps:[Ljava/lang/Object;
    if-eqz v2, :cond_27

    .line 80
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_15
    if-ltz v0, :cond_27

    .line 81
    aget-object v1, v2, v0

    .line 82
    .local v1, o:Ljava/lang/Object;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_24

    .line 83
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 80
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 87
    .end local v0           #i:I
    .end local v1           #o:Ljava/lang/Object;
    :cond_27
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .registers 14
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    const/4 v6, -0x1

    .line 592
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 593
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_8

    .line 678
    :goto_7
    return-void

    .line 597
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 600
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 601
    .local v0, a:I
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 605
    .local v1, b:I
    if-ge v1, v0, :cond_18

    .line 606
    move v5, v0

    .line 607
    .local v5, tmp:I
    move v0, v1

    .line 608
    move v1, v5

    .line 611
    .end local v5           #tmp:I
    :cond_18
    if-eq v0, v6, :cond_4a

    if-eq v1, v6, :cond_4a

    .line 612
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 625
    :cond_1f
    :goto_1f
    if-eqz p3, :cond_64

    .line 626
    const/4 v4, 0x0

    .line 627
    .local v4, sp:Landroid/text/Spannable;
    instance-of v6, p1, Landroid/text/Spannable;

    if-nez v6, :cond_5e

    .line 628
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .end local v4           #sp:Landroid/text/Spannable;
    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 629
    .restart local v4       #sp:Landroid/text/Spannable;
    move-object p1, v4

    .line 630
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 631
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_61

    .line 632
    const/4 v3, 0x0

    .local v3, i:I
    :goto_34
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_61

    .line 633
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v8

    const/16 v9, 0x121

    invoke-interface {v4, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 632
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 614
    .end local v3           #i:I
    .end local v4           #sp:Landroid/text/Spannable;
    :cond_4a
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 615
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 616
    if-gez v0, :cond_55

    const/4 v0, 0x0

    .line 617
    :cond_55
    if-gez v1, :cond_58

    const/4 v1, 0x0

    .line 618
    :cond_58
    if-ge v1, v0, :cond_1f

    .line 619
    move v5, v0

    .line 620
    .restart local v5       #tmp:I
    move v0, v1

    .line 621
    move v1, v5

    goto :goto_1f

    .end local v5           #tmp:I
    .restart local v4       #sp:Landroid/text/Spannable;
    :cond_5e
    move-object v4, p1

    .line 638
    check-cast v4, Landroid/text/Spannable;

    .line 640
    :cond_61
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 659
    .end local v4           #sp:Landroid/text/Spannable;
    :cond_64
    if-lez p2, :cond_80

    .line 660
    add-int/lit8 v6, v1, -0x1

    add-int/2addr p2, v6

    .line 664
    :goto_69
    if-gez p2, :cond_6c

    const/4 p2, 0x0

    .line 665
    :cond_6c
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v6

    if-le p2, v6, :cond_76

    .line 666
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result p2

    .line 667
    :cond_76
    invoke-static {v2, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 669
    invoke-interface {v2, v0, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 677
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    goto :goto_7

    .line 662
    :cond_80
    add-int/2addr p2, v0

    goto :goto_69
.end method

.method private sendCurrentText()V
    .registers 12

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 527
    iget-boolean v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-nez v1, :cond_8

    .line 563
    :cond_7
    :goto_7
    return-void

    .line 531
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v8

    .line 532
    .local v8, content:Landroid/text/Editable;
    if-eqz v8, :cond_7

    .line 533
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v6

    .line 534
    .local v6, N:I
    if-eqz v6, :cond_7

    .line 537
    if-ne v6, v2, :cond_3d

    .line 540
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_20

    .line 541
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 543
    :cond_20
    new-array v7, v2, [C

    .line 544
    .local v7, chars:[C
    invoke-interface {v8, v5, v2, v7, v5}, Landroid/text/Editable;->getChars(II[CI)V

    .line 545
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v1, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v9

    .line 546
    .local v9, events:[Landroid/view/KeyEvent;
    if-eqz v9, :cond_3d

    .line 547
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2e
    array-length v1, v9

    if-ge v10, v1, :cond_39

    .line 549
    aget-object v1, v9, v10

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 547
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    .line 551
    :cond_39
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_7

    .line 558
    .end local v7           #chars:[C
    .end local v9           #events:[Landroid/view/KeyEvent;
    .end local v10           #i:I
    :cond_3d
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 560
    .local v0, event:Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 561
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_7
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 91
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .registers 11
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x121

    .line 95
    const-class v4, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 96
    .local v3, sps:[Ljava/lang/Object;
    if-eqz v3, :cond_35

    .line 97
    array-length v4, v3

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_d
    if-ltz v1, :cond_35

    .line 98
    aget-object v2, v3, v1

    .line 99
    .local v2, o:Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v2, v4, :cond_1b

    .line 100
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 97
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 104
    :cond_1b
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 105
    .local v0, fl:I
    and-int/lit16 v4, v0, 0x133

    if-eq v4, v7, :cond_18

    .line 107
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    and-int/lit8 v6, v0, -0x34

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x21

    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_18

    .line 115
    .end local v0           #fl:I
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    :cond_35
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v4, p1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 117
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .registers 4
    .parameter "states"

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 162
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 164
    :goto_7
    return v1

    .line 163
    :cond_8
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 164
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3
    .parameter "text"

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 3
    .parameter "correctionInfo"

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 4
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 189
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .registers 16
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v10, -0x1

    .line 200
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 201
    .local v4, content:Landroid/text/Editable;
    if-nez v4, :cond_9

    const/4 v10, 0x0

    .line 253
    :goto_8
    return v10

    .line 203
    :cond_9
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 205
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 206
    .local v0, a:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 208
    .local v1, b:I
    if-le v0, v1, :cond_19

    .line 209
    move v9, v0

    .line 210
    .local v9, tmp:I
    move v0, v1

    .line 211
    move v1, v9

    .line 215
    .end local v9           #tmp:I
    :cond_19
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 216
    .local v2, ca:I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 217
    .local v3, cb:I
    if-ge v3, v2, :cond_26

    .line 218
    move v9, v2

    .line 219
    .restart local v9       #tmp:I
    move v2, v3

    .line 220
    move v3, v9

    .line 222
    .end local v9           #tmp:I
    :cond_26
    if-eq v2, v10, :cond_30

    if-eq v3, v10, :cond_30

    .line 223
    if-ge v2, v0, :cond_2d

    move v0, v2

    .line 224
    :cond_2d
    if-le v3, v1, :cond_30

    move v1, v3

    .line 227
    :cond_30
    const/4 v5, 0x0

    .line 231
    .local v5, deleted:I
    if-lez p1, :cond_3d

    .line 232
    sub-int v8, v0, p1

    .line 233
    .local v8, start:I
    if-gez v8, :cond_38

    const/4 v8, 0x0

    .line 234
    :cond_38
    :try_start_38
    invoke-interface {v4, v8, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 235
    sub-int v5, v0, v8

    .line 238
    .end local v8           #start:I
    :cond_3d
    if-lez p2, :cond_4f

    .line 239
    sub-int/2addr v1, v5

    .line 241
    add-int v7, v1, p2

    .line 242
    .local v7, end:I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v10

    if-le v7, v10, :cond_4c

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v7

    .line 244
    :cond_4c
    invoke-interface {v4, v1, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_4f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_38 .. :try_end_4f} :catch_54

    .line 251
    .end local v7           #end:I
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 253
    const/4 v10, 0x1

    goto :goto_8

    .line 247
    :catch_54
    move-exception v6

    .line 248
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "BaseInputConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleteSurroundingText (a,b,leftLength,rightLength)=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method

.method public endBatchEdit()Z
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .registers 3

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 264
    .local v0, content:Landroid/text/Editable;
    if-eqz v0, :cond_12

    .line 265
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 266
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 267
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 268
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 270
    :cond_12
    const/4 v1, 0x1

    return v1
.end method

.method public getCursorCapsMode(I)I
    .registers 8
    .parameter "reqModes"

    .prologue
    const/4 v4, 0x0

    .line 279
    iget-boolean v5, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-eqz v5, :cond_6

    .line 293
    :cond_5
    :goto_5
    return v4

    .line 281
    :cond_6
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 282
    .local v2, content:Landroid/text/Editable;
    if-eqz v2, :cond_5

    .line 284
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 285
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 287
    .local v1, b:I
    if-le v0, v1, :cond_19

    .line 288
    move v3, v0

    .line 289
    .local v3, tmp:I
    move v0, v1

    .line 290
    move v1, v3

    .line 293
    .end local v3           #tmp:I
    :cond_19
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    goto :goto_5
.end method

.method public getEditable()Landroid/text/Editable;
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_16

    .line 135
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 136
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 138
    :cond_16
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 4
    .parameter "request"
    .parameter "flags"

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 7
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 339
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 340
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_8

    .line 356
    :cond_7
    :goto_7
    return-object v4

    .line 342
    :cond_8
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 343
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 345
    .local v1, b:I
    if-le v0, v1, :cond_15

    .line 346
    move v3, v0

    .line 347
    .local v3, tmp:I
    move v0, v1

    .line 348
    move v1, v3

    .line 351
    .end local v3           #tmp:I
    :cond_15
    if-eq v0, v1, :cond_7

    .line 353
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_20

    .line 354
    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_7

    .line 356
    :cond_20
    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7
.end method

.method public getSelectionEnd()I
    .registers 3

    .prologue
    .line 707
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 708
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_8

    const/4 v1, -0x1

    .line 712
    :goto_7
    return v1

    .line 710
    :cond_8
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 712
    .local v1, pos:I
    goto :goto_7
.end method

.method public getSelectionStart()I
    .registers 3

    .prologue
    .line 696
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 697
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_8

    const/4 v1, -0x1

    .line 701
    :goto_7
    return v1

    .line 699
    :cond_8
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 701
    .local v1, pos:I
    goto :goto_7
.end method

.method public getSubText(II)Ljava/lang/CharSequence;
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 736
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 737
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 739
    :goto_7
    return-object v1

    :cond_8
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_7
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 728
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 730
    :goto_7
    return-object v1

    :cond_8
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_7
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 9
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 365
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_8

    const/4 v4, 0x0

    .line 389
    :goto_7
    return-object v4

    .line 367
    :cond_8
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 368
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 370
    .local v1, b:I
    if-le v0, v1, :cond_15

    .line 371
    move v3, v0

    .line 372
    .local v3, tmp:I
    move v0, v1

    .line 373
    move v1, v3

    .line 377
    .end local v3           #tmp:I
    :cond_15
    if-gez v1, :cond_18

    .line 378
    const/4 v1, 0x0

    .line 381
    :cond_18
    add-int v4, v1, p1

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_26

    .line 382
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int p1, v4, v1

    .line 386
    :cond_26
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_31

    .line 387
    add-int v4, v1, p1

    invoke-interface {v2, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_7

    .line 389
    :cond_31
    add-int v4, v1, p1

    invoke-static {v2, v1, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7
.end method

.method public getTextAfterCursor(III)Ljava/lang/CharSequence;
    .registers 5
    .parameter "length"
    .parameter "flags"
    .parameter "waitTime"

    .prologue
    .line 688
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 8
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 309
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_8

    const/4 v4, 0x0

    .line 331
    :goto_7
    return-object v4

    .line 311
    :cond_8
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 312
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 314
    .local v1, b:I
    if-le v0, v1, :cond_15

    .line 315
    move v3, v0

    .line 316
    .local v3, tmp:I
    move v0, v1

    .line 317
    move v1, v3

    .line 320
    .end local v3           #tmp:I
    :cond_15
    if-gtz v0, :cond_1a

    .line 321
    const-string v4, ""

    goto :goto_7

    .line 324
    :cond_1a
    if-le p1, v0, :cond_1d

    .line 325
    move p1, v0

    .line 328
    :cond_1d
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_28

    .line 329
    sub-int v4, v0, p1

    invoke-interface {v2, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_7

    .line 331
    :cond_28
    sub-int v4, v0, p1

    invoke-static {v2, v4, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7
.end method

.method public getTextBeforeCursor(III)Ljava/lang/CharSequence;
    .registers 5
    .parameter "length"
    .parameter "flags"
    .parameter "waitTime"

    .prologue
    .line 683
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public performContextMenuAction(I)Z
    .registers 3
    .parameter "id"

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public performEditorAction(I)Z
    .registers 17
    .parameter "actionCode"

    .prologue
    .line 396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 397
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 402
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter "action"
    .parameter "data"

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public replaceText(IILjava/lang/CharSequence;)V
    .registers 5
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 718
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 719
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_7

    .line 722
    :goto_6
    return-void

    .line 721
    :cond_7
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_6
.end method

.method public reportFullscreenMode(Z)Z
    .registers 3
    .parameter "enabled"

    .prologue
    .line 522
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 503
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 504
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 505
    .local v0, h:Landroid/os/Handler;
    :goto_f
    if-nez v0, :cond_1f

    .line 506
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1f

    .line 507
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 510
    :cond_1f
    if-eqz v0, :cond_2a

    .line 511
    const/16 v1, 0x3f3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    :cond_2a
    monitor-exit v2

    .line 515
    const/4 v1, 0x0

    return v1

    .line 504
    .end local v0           #h:Landroid/os/Handler;
    :cond_2d
    const/4 v0, 0x0

    goto :goto_f

    .line 514
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public setComposingRegion(II)Z
    .registers 11
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x121

    .line 436
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 437
    .local v2, content:Landroid/text/Editable;
    if-eqz v2, :cond_47

    .line 438
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 439
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 440
    move v0, p1

    .line 441
    .local v0, a:I
    move v1, p2

    .line 442
    .local v1, b:I
    if-le v0, v1, :cond_15

    .line 443
    move v5, v0

    .line 444
    .local v5, tmp:I
    move v0, v1

    .line 445
    move v1, v5

    .line 448
    .end local v5           #tmp:I
    :cond_15
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    .line 449
    .local v4, length:I
    if-gez v0, :cond_1c

    const/4 v0, 0x0

    .line 450
    :cond_1c
    if-gez v1, :cond_1f

    const/4 v1, 0x0

    .line 451
    :cond_1f
    if-le v0, v4, :cond_22

    move v0, v4

    .line 452
    :cond_22
    if-le v1, v4, :cond_25

    move v1, v4

    .line 454
    :cond_25
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 455
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_3c

    .line 456
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2d
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_3c

    .line 457
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 456
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 462
    .end local v3           #i:I
    :cond_3c
    sget-object v6, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 465
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 466
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 468
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v4           #length:I
    :cond_47
    const/4 v6, 0x1

    return v6
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 4
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v0, 0x1

    .line 431
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 432
    return v0
.end method

.method public setSelection(II)Z
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v2, 0x1

    .line 477
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 478
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_9

    const/4 v2, 0x0

    .line 495
    :cond_8
    :goto_8
    return v2

    .line 479
    :cond_9
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 480
    .local v1, len:I
    if-gt p1, v1, :cond_8

    if-gt p2, v1, :cond_8

    .line 487
    if-ne p1, p2, :cond_1f

    const/16 v3, 0x800

    invoke-static {v0, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_1f

    .line 491
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_8

    .line 493
    :cond_1f
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_8
.end method
