.class Landroid/widget/SpellChecker$SpellParser;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellParser"
.end annotation


# instance fields
.field private mRange:Ljava/lang/Object;

.field final synthetic this$0:Landroid/widget/SpellChecker;


# direct methods
.method private constructor <init>(Landroid/widget/SpellChecker;)V
    .registers 3
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 456
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 455
    invoke-direct {p0, p1}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method private removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V
    .registers 9
    .parameter "editable"
    .parameter "offset"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p3, spans:[Ljava/lang/Object;,"[TT;"
    array-length v2, p3

    .line 580
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_19

    .line 581
    aget-object v3, p3, v1

    .line 582
    .local v3, span:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 583
    .local v4, start:I
    if-le v4, p2, :cond_f

    .line 580
    :cond_c
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 584
    :cond_f
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 585
    .local v0, end:I
    if-lt v0, p2, :cond_c

    .line 586
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_c

    .line 588
    .end local v0           #end:I
    .end local v3           #span:Ljava/lang/Object;,"TT;"
    .end local v4           #start:I
    :cond_19
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 464
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 465
    return-void
.end method

.method public init(II)V
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 459
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    const/16 v2, 0x21

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 461
    return-void
.end method

.method public isFinished()Z
    .registers 3

    .prologue
    .line 468
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public parse()V
    .registers 22

    .prologue
    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Editable;

    .line 474
    .local v4, editable:Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 475
    .local v12, start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 477
    .local v5, end:I
    add-int/lit16 v0, v12, 0x15e

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 478
    .local v16, wordIteratorWindowEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v4, v12, v1}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v17

    .line 483
    .local v17, wordStart:I
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_93

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/text/method/WordIterator;->following(I)I

    move-result v15

    .line 485
    .local v15, wordEnd:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_81

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v17

    .line 491
    :cond_81
    :goto_81
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_a6

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 576
    :goto_92
    return-void

    .line 489
    .end local v15           #wordEnd:I
    :cond_93
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v15

    .restart local v15       #wordEnd:I
    goto :goto_81

    .line 498
    :cond_a6
    add-int/lit8 v18, v12, -0x1

    add-int/lit8 v19, v5, 0x1

    const-class v20, Landroid/text/style/SpellCheckSpan;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/SpellCheckSpan;

    .line 500
    .local v11, spellCheckSpans:[Landroid/text/style/SpellCheckSpan;
    add-int/lit8 v18, v12, -0x1

    add-int/lit8 v19, v5, 0x1

    const-class v20, Landroid/text/style/SuggestionSpan;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/SuggestionSpan;

    .line 503
    .local v13, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v14, 0x0

    .line 504
    .local v14, wordCount:I
    const/4 v8, 0x0

    .line 506
    .local v8, scheduleOtherSpellCheck:Z
    :cond_cc
    move/from16 v0, v17

    if-gt v0, v5, :cond_dd

    .line 507
    if-lt v15, v12, :cond_158

    move/from16 v0, v17

    if-le v15, v0, :cond_158

    .line 508
    const/16 v18, 0x32

    move/from16 v0, v18

    if-lt v14, v0, :cond_fa

    .line 509
    const/4 v8, 0x1

    .line 569
    :cond_dd
    :goto_dd
    if-eqz v8, :cond_1ca

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v4, v0, v1, v5, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 575
    :goto_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #calls: Landroid/widget/SpellChecker;->spellCheck()V
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)V

    goto :goto_92

    .line 515
    :cond_fa
    move/from16 v0, v17

    if-ge v0, v12, :cond_10a

    if-le v15, v12, :cond_10a

    .line 516
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v11}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 517
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v13}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 520
    :cond_10a
    move/from16 v0, v17

    if-ge v0, v5, :cond_11a

    if-le v15, v5, :cond_11a

    .line 521
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v11}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 522
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 526
    :cond_11a
    const/4 v3, 0x1

    .line 527
    .local v3, createSpellCheckSpan:Z
    if-ne v15, v12, :cond_130

    .line 528
    const/4 v6, 0x0

    .local v6, i:I
    :goto_11e
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_130

    .line 529
    aget-object v18, v11, v6

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 530
    .local v9, spanEnd:I
    if-ne v9, v12, :cond_1c2

    .line 531
    const/4 v3, 0x0

    .line 537
    .end local v6           #i:I
    .end local v9           #spanEnd:I
    :cond_130
    move/from16 v0, v17

    if-ne v0, v5, :cond_147

    .line 538
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_135
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_147

    .line 539
    aget-object v18, v11, v6

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 540
    .local v10, spanStart:I
    if-ne v10, v5, :cond_1c6

    .line 541
    const/4 v3, 0x0

    .line 547
    .end local v6           #i:I
    .end local v10           #spanStart:I
    :cond_147
    if-eqz v3, :cond_156

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    #calls: Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V
    invoke-static {v0, v4, v1, v15}, Landroid/widget/SpellChecker;->access$400(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    .line 550
    :cond_156
    add-int/lit8 v14, v14, 0x1

    .line 554
    .end local v3           #createSpellCheckSpan:Z
    :cond_158
    move v7, v15

    .line 555
    .local v7, originalWordEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/text/method/WordIterator;->following(I)I

    move-result v15

    .line 556
    move/from16 v0, v16

    if-ge v0, v5, :cond_1a2

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_177

    move/from16 v0, v16

    if-lt v15, v0, :cond_1a2

    .line 558
    :cond_177
    add-int/lit16 v0, v7, 0x15e

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v4, v7, v1}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/text/method/WordIterator;->following(I)I

    move-result v15

    .line 562
    :cond_1a2
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_dd

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v17

    .line 564
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_cc

    goto/16 :goto_dd

    .line 528
    .end local v7           #originalWordEnd:I
    .restart local v3       #createSpellCheckSpan:Z
    .restart local v6       #i:I
    .restart local v9       #spanEnd:I
    :cond_1c2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_11e

    .line 538
    .end local v9           #spanEnd:I
    .restart local v10       #spanStart:I
    :cond_1c6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_135

    .line 572
    .end local v3           #createSpellCheckSpan:Z
    .end local v6           #i:I
    .end local v10           #spanStart:I
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto/16 :goto_f0
.end method
