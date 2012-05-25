.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 84
    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 86
    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 92
    iput-object v2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 93
    iput-object v2, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 95
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/GridView;->mGravity:I

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 104
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput v8, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 84
    iput v7, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 86
    iput v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 87
    iput v9, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 92
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 93
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 95
    iput v11, p0, Landroid/widget/GridView;->mGravity:I

    .line 97
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 110
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 115
    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 117
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 119
    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 121
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 122
    .local v3, index:I
    if-ltz v3, :cond_3c

    .line 123
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 126
    :cond_3c
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 127
    .local v1, columnWidth:I
    if-lez v1, :cond_46

    .line 128
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 131
    :cond_46
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 132
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 134
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 135
    if-ltz v3, :cond_57

    .line 136
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setGravity(I)V

    .line 139
    :cond_57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .registers 8
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 764
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_1a

    .line 768
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 772
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 773
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 776
    .local v0, offset:I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 778
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_1a
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .registers 8
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 792
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_19

    .line 795
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 799
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 800
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 803
    .local v0, offset:I
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 805
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_19
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .registers 7

    .prologue
    .line 2019
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 2021
    .local v1, childCount:I
    if-lez v1, :cond_29

    .line 2025
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_2a

    .line 2028
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2029
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2030
    .local v2, delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eqz v3, :cond_20

    .line 2033
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2035
    :cond_20
    if-gez v2, :cond_23

    .line 2037
    const/4 v2, 0x0

    .line 2056
    :cond_23
    :goto_23
    if-eqz v2, :cond_29

    .line 2057
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 2060
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_29
    return-void

    .line 2041
    :cond_2a
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2042
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2044
    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v4, :cond_49

    .line 2047
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2050
    :cond_49
    if-lez v2, :cond_23

    .line 2052
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1508
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_c

    .line 1635
    :goto_b
    return v2

    .line 1512
    :cond_c
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_13

    .line 1513
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1516
    :cond_13
    const/4 v1, 0x0

    .line 1517
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1519
    .local v0, action:I
    if-eq v0, v3, :cond_1d

    .line 1520
    sparse-switch p1, :sswitch_data_1ac

    .line 1619
    :cond_1d
    :goto_1d
    if-eqz v1, :cond_18c

    move v2, v3

    .line 1620
    goto :goto_b

    .line 1522
    :sswitch_21
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1523
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_35

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_37

    :cond_35
    move v1, v3

    :goto_36
    goto :goto_1d

    :cond_37
    move v1, v2

    goto :goto_36

    .line 1528
    :sswitch_39
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1529
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_4d

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    :cond_4d
    move v1, v3

    :goto_4e
    goto :goto_1d

    :cond_4f
    move v1, v2

    goto :goto_4e

    .line 1534
    :sswitch_51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1535
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_65

    :cond_63
    move v1, v3

    :goto_64
    goto :goto_1d

    :cond_65
    move v1, v2

    goto :goto_64

    .line 1536
    :cond_67
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1537
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_79

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_7b

    :cond_79
    move v1, v3

    :goto_7a
    goto :goto_1d

    :cond_7b
    move v1, v2

    goto :goto_7a

    .line 1542
    :sswitch_7d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 1543
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_8f

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_91

    :cond_8f
    move v1, v3

    :goto_90
    goto :goto_1d

    :cond_91
    move v1, v2

    goto :goto_90

    .line 1544
    :cond_93
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1545
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a5

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_a8

    :cond_a5
    move v1, v3

    :goto_a6
    goto/16 :goto_1d

    :cond_a8
    move v1, v2

    goto :goto_a6

    .line 1551
    :sswitch_aa
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1552
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1553
    if-nez v1, :cond_1d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1d

    .line 1555
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    .line 1556
    const/4 v1, 0x1

    goto/16 :goto_1d

    .line 1562
    :sswitch_c8
    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_d4

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1563
    :cond_d4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 1564
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_e6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_e9

    :cond_e6
    move v1, v3

    :goto_e7
    goto/16 :goto_1d

    :cond_e9
    move v1, v2

    goto :goto_e7

    .line 1565
    :cond_eb
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1566
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_fd

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_100

    :cond_fd
    move v1, v3

    :goto_fe
    goto/16 :goto_1d

    :cond_100
    move v1, v2

    goto :goto_fe

    .line 1572
    :sswitch_102
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_119

    .line 1573
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_114

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_117

    :cond_114
    move v1, v3

    :goto_115
    goto/16 :goto_1d

    :cond_117
    move v1, v2

    goto :goto_115

    .line 1574
    :cond_119
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1575
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12b

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_12e

    :cond_12b
    move v1, v3

    :goto_12c
    goto/16 :goto_1d

    :cond_12e
    move v1, v2

    goto :goto_12c

    .line 1580
    :sswitch_130
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_147

    .line 1581
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_142

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_145

    :cond_142
    move v1, v3

    :goto_143
    goto/16 :goto_1d

    :cond_145
    move v1, v2

    goto :goto_143

    .line 1582
    :cond_147
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1583
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_159

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_15c

    :cond_159
    move v1, v3

    :goto_15a
    goto/16 :goto_1d

    :cond_15c
    move v1, v2

    goto :goto_15a

    .line 1588
    :sswitch_15e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1589
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_170

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_173

    :cond_170
    move v1, v3

    :goto_171
    goto/16 :goto_1d

    :cond_173
    move v1, v2

    goto :goto_171

    .line 1594
    :sswitch_175
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1595
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_187

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_18a

    :cond_187
    move v1, v3

    :goto_188
    goto/16 :goto_1d

    :cond_18a
    move v1, v2

    goto :goto_188

    .line 1623
    :cond_18c
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_195

    move v2, v3

    .line 1624
    goto/16 :goto_b

    .line 1627
    :cond_195
    packed-switch v0, :pswitch_data_1da

    goto/16 :goto_b

    .line 1629
    :pswitch_19a
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1631
    :pswitch_1a0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1633
    :pswitch_1a6
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1520
    :sswitch_data_1ac
    .sparse-switch
        0x13 -> :sswitch_51
        0x14 -> :sswitch_7d
        0x15 -> :sswitch_21
        0x16 -> :sswitch_39
        0x17 -> :sswitch_aa
        0x3e -> :sswitch_c8
        0x42 -> :sswitch_aa
        0x5c -> :sswitch_102
        0x5d -> :sswitch_130
        0x7a -> :sswitch_15e
        0x7b -> :sswitch_175
    .end sparse-switch

    .line 1627
    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_19a
        :pswitch_1a0
        :pswitch_1a6
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .registers 13
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 576
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 577
    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_60

    if-lez p3, :cond_60

    .line 579
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 582
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 584
    .local v4, lastBottom:I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 588
    .local v1, end:I
    sub-int v0, v1, v4

    .line 590
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 591
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 595
    .local v3, firstTop:I
    if-lez v0, :cond_60

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v7, :cond_39

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_60

    .line 596
    :cond_39
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_46

    .line 598
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 602
    :cond_46
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 603
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_60

    .line 606
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v8, :cond_54

    const/4 p1, 0x1

    .end local p1
    :cond_54
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 609
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 613
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_60
    return-void
.end method

.method private correctTooLow(III)V
    .registers 14
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 616
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_61

    if-lez p3, :cond_61

    .line 618
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 621
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 624
    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 627
    .local v6, start:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 631
    .local v0, end:I
    sub-int v7, v2, v6

    .line 632
    .local v7, topOffset:I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 633
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 634
    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 638
    .local v5, lastPosition:I
    if-lez v7, :cond_61

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_39

    if-le v3, v0, :cond_61

    .line 639
    :cond_39
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_45

    .line 641
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 645
    :cond_45
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 646
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_61

    .line 649
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v8, :cond_54

    const/4 p1, 0x1

    .end local p1
    :cond_54
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 652
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 656
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_61
    return-void
.end method

.method private determineColumns(I)Z
    .registers 10
    .parameter "availableSpace"

    .prologue
    const/4 v7, 0x1

    .line 925
    iget v2, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 926
    .local v2, requestedHorizontalSpacing:I
    iget v4, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 927
    .local v4, stretchMode:I
    iget v1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 928
    .local v1, requestedColumnWidth:I
    const/4 v0, 0x0

    .line 930
    .local v0, didNotInitiallyFit:Z
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_36

    .line 931
    if-lez v1, :cond_32

    .line 933
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 944
    :goto_16
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-gtz v5, :cond_1c

    .line 945
    iput v7, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 948
    :cond_1c
    packed-switch v4, :pswitch_data_74

    .line 956
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 959
    .local v3, spaceLeftOver:I
    if-gez v3, :cond_2e

    .line 960
    const/4 v0, 0x1

    .line 963
    :cond_2e
    packed-switch v4, :pswitch_data_7a

    .line 995
    .end local v3           #spaceLeftOver:I
    :goto_31
    return v0

    .line 937
    :cond_32
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_16

    .line 941
    :cond_36
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_16

    .line 951
    :pswitch_3b
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 952
    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 966
    .restart local v3       #spaceLeftOver:I
    :pswitch_40
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 967
    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 972
    :pswitch_4a
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 973
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_5a

    .line 974
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 977
    :cond_5a
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 983
    :pswitch_5f
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 984
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_6f

    .line 985
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 988
    :cond_6f
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 948
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch

    .line 963
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_40
        :pswitch_5f
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 8
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 273
    const/4 v1, 0x0

    .line 275
    .local v1, selectedView:Landroid/view/View;
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v0, v3, v4

    .line 276
    .local v0, end:I
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_14

    .line 277
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 280
    :cond_14
    :goto_14
    if-ge p2, v0, :cond_30

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v3, :cond_30

    .line 281
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 282
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_22

    .line 283
    move-object v1, v2

    .line 288
    :cond_22
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 290
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 291
    goto :goto_14

    .line 293
    .end local v2           #temp:Landroid/view/View;
    :cond_30
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .registers 6
    .parameter "lastPosition"
    .parameter "nextBottom"

    .prologue
    .line 407
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 408
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 410
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 411
    .local v0, invertedPosition:I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 413
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 18
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 669
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 670
    .local v2, fadingEdgeLength:I
    iget v9, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 671
    .local v9, selectedPosition:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 672
    .local v4, numColumns:I
    iget v11, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 675
    .local v11, verticalSpacing:I
    const/4 v6, -0x1

    .line 677
    .local v6, rowEnd:I
    iget-boolean v12, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_4f

    .line 678
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 689
    .local v7, rowStart:I
    :goto_13
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v10

    .line 690
    .local v10, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 693
    .local v1, bottomSelectionPixel:I
    iget-boolean v12, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v12, :cond_69

    move v12, v6

    :goto_24
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 695
    .local v8, sel:Landroid/view/View;
    iput v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 697
    iget-object v5, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 698
    .local v5, referenceView:Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 699
    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 701
    iget-boolean v12, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_6b

    .line 702
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 703
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 704
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 712
    :goto_4e
    return-object v8

    .line 680
    .end local v1           #bottomSelectionPixel:I
    .end local v5           #referenceView:Landroid/view/View;
    .end local v7           #rowStart:I
    .end local v8           #sel:Landroid/view/View;
    .end local v10           #topSelectionPixel:I
    :cond_4f
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 682
    .local v3, invertedSelection:I
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 683
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #rowStart:I
    goto :goto_13

    .end local v3           #invertedSelection:I
    .restart local v1       #bottomSelectionPixel:I
    .restart local v10       #topSelectionPixel:I
    :cond_69
    move v12, v7

    .line 693
    goto :goto_24

    .line 706
    .restart local v5       #referenceView:Landroid/view/View;
    .restart local v8       #sel:Landroid/view/View;
    :cond_6b
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 707
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 708
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto :goto_4e
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 5
    .parameter "nextTop"

    .prologue
    .line 397
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 398
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 399
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 400
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 402
    :cond_1d
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 403
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .registers 18
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v10

    .line 418
    .local v10, selectedPosition:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 419
    .local v4, numColumns:I
    iget v12, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 422
    .local v12, verticalSpacing:I
    const/4 v7, -0x1

    .line 424
    .local v7, rowEnd:I
    iget-boolean v13, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_4a

    .line 425
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 433
    .local v8, rowStart:I
    :goto_11
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 434
    .local v2, fadingEdgeLength:I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v11

    .line 436
    .local v11, topSelectionPixel:I
    iget-boolean v13, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v13, :cond_64

    move v13, v7

    :goto_20
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 437
    .local v9, sel:Landroid/view/View;
    iput v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 439
    iget-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 441
    .local v6, referenceView:Landroid/view/View;
    iget-boolean v13, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_66

    .line 442
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 443
    move/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 444
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 445
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 457
    :goto_49
    return-object v9

    .line 427
    .end local v2           #fadingEdgeLength:I
    .end local v6           #referenceView:Landroid/view/View;
    .end local v8           #rowStart:I
    .end local v9           #sel:Landroid/view/View;
    .end local v11           #topSelectionPixel:I
    :cond_4a
    iget v13, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 429
    .local v3, invertedSelection:I
    iget v13, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 430
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8       #rowStart:I
    goto :goto_11

    .end local v3           #invertedSelection:I
    .restart local v2       #fadingEdgeLength:I
    .restart local v11       #topSelectionPixel:I
    :cond_64
    move v13, v8

    .line 436
    goto :goto_20

    .line 447
    .restart local v6       #referenceView:Landroid/view/View;
    .restart local v9       #sel:Landroid/view/View;
    :cond_66
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 449
    .local v1, bottomSelectionPixel:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 450
    .local v5, offset:I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 451
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 452
    invoke-direct/range {p0 .. p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 453
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 454
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_49
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "top"

    .prologue
    .line 515
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 518
    .local v6, numColumns:I
    const/4 v4, -0x1

    .line 520
    .local v4, motionRowEnd:I
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_1d

    .line 521
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 529
    .local v5, motionRowStart:I
    :goto_b
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_37

    move v10, v4

    :goto_10
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 532
    .local v8, temp:Landroid/view/View;
    iput v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 534
    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 536
    .local v7, referenceView:Landroid/view/View;
    if-nez v7, :cond_39

    .line 537
    const/4 v8, 0x0

    .line 570
    .end local v8           #temp:Landroid/view/View;
    :cond_1c
    :goto_1c
    return-object v8

    .line 523
    .end local v5           #motionRowStart:I
    .end local v7           #referenceView:Landroid/view/View;
    :cond_1d
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 525
    .local v3, invertedSelection:I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 526
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #motionRowStart:I
    goto :goto_b

    .end local v3           #invertedSelection:I
    :cond_37
    move v10, v5

    .line 529
    goto :goto_10

    .line 540
    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v8       #temp:Landroid/view/View;
    :cond_39
    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 545
    .local v9, verticalSpacing:I
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_67

    .line 546
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 547
    .local v0, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 548
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 550
    .local v1, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 551
    .local v2, childCount:I
    if-lez v2, :cond_61

    .line 552
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 565
    :cond_61
    :goto_61
    if-nez v8, :cond_1c

    .line 567
    if-eqz v0, :cond_8a

    move-object v8, v0

    .line 568
    goto :goto_1c

    .line 555
    .end local v0           #above:Landroid/view/View;
    .end local v1           #below:Landroid/view/View;
    .end local v2           #childCount:I
    :cond_67
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 556
    .restart local v1       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 557
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 559
    .restart local v0       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 560
    .restart local v2       #childCount:I
    if-lez v2, :cond_61

    .line 561
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_61

    :cond_8a
    move-object v8, v1

    .line 570
    goto :goto_1c
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v5, 0x0

    .line 360
    const/4 v1, 0x0

    .line 362
    .local v1, selectedView:Landroid/view/View;
    const/4 v0, 0x0

    .line 363
    .local v0, end:I
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_f

    .line 364
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 367
    :cond_f
    :goto_f
    if-le p2, v0, :cond_2a

    if-ltz p1, :cond_2a

    .line 369
    invoke-direct {p0, p1, p2, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 370
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_1a

    .line 371
    move-object v1, v2

    .line 374
    :cond_1a
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 376
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 378
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 379
    goto :goto_f

    .line 381
    .end local v2           #temp:Landroid/view/View;
    :cond_2a
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_36

    .line 382
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 385
    :cond_36
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .registers 8
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "numColumns"
    .parameter "rowStart"

    .prologue
    .line 727
    move v0, p1

    .line 728
    .local v0, bottomSelectionPixel:I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    .line 729
    sub-int/2addr v0, p2

    .line 731
    :cond_c
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .registers 5
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "rowStart"

    .prologue
    .line 744
    move v0, p1

    .line 745
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_4

    .line 746
    add-int/2addr v0, p2

    .line 748
    :cond_4
    return v0
.end method

.method private isCandidateSelection(II)Z
    .registers 11
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1866
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1867
    .local v0, count:I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 1872
    .local v1, invertedIndex:I
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_28

    .line 1873
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 1874
    .local v3, rowStart:I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1880
    .local v2, rowEnd:I
    :goto_1d
    sparse-switch p2, :sswitch_data_5e

    .line 1901
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1876
    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_28
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 1877
    .restart local v2       #rowEnd:I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_1d

    .line 1884
    :sswitch_3d
    if-ne p1, v3, :cond_40

    .line 1899
    :cond_3f
    :goto_3f
    return v4

    :cond_40
    move v4, v5

    .line 1884
    goto :goto_3f

    .line 1887
    :sswitch_42
    if-eqz v3, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 1890
    :sswitch_46
    if-eq p1, v2, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 1893
    :sswitch_4a
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 1896
    :sswitch_50
    if-ne p1, v3, :cond_54

    if-eqz v3, :cond_3f

    :cond_54
    move v4, v5

    goto :goto_3f

    .line 1899
    :sswitch_56
    if-ne p1, v2, :cond_5c

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_3f

    :cond_5c
    move v4, v5

    goto :goto_3f

    .line 1880
    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_50
        0x11 -> :sswitch_46
        0x21 -> :sswitch_4a
        0x42 -> :sswitch_3d
        0x82 -> :sswitch_42
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .registers 17
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "where"

    .prologue
    .line 1310
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_1a

    .line 1312
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1313
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_1a

    .line 1316
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1328
    .end local v1           #child:Landroid/view/View;
    .local v9, child:Landroid/view/View;
    :goto_19
    return-object v9

    .line 1323
    .end local v9           #child:Landroid/view/View;
    :cond_1a
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1326
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1328
    .end local v1           #child:Landroid/view/View;
    .restart local v9       #child:Landroid/view/View;
    goto :goto_19
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .registers 19
    .parameter "startPos"
    .parameter "y"
    .parameter "flow"

    .prologue
    .line 297
    iget v8, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 298
    .local v8, columnWidth:I
    iget v10, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 301
    .local v10, horizontalSpacing:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4d

    move v0, v10

    :goto_e
    add-int v4, v2, v0

    .line 304
    .local v4, nextLeft:I
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_4f

    .line 305
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int v0, v0, p1

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 315
    .local v12, last:I
    :cond_1e
    :goto_1e
    const/4 v14, 0x0

    .line 317
    .local v14, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v9

    .line 318
    .local v9, hasFocus:Z
    invoke-virtual {p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v11

    .line 319
    .local v11, inClick:Z
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 321
    .local v13, selectedPosition:I
    const/4 v7, 0x0

    .line 322
    .local v7, child:Landroid/view/View;
    move/from16 v1, p1

    .local v1, pos:I
    :goto_2c
    if-ge v1, v12, :cond_71

    .line 324
    if-ne v1, v13, :cond_6c

    const/4 v5, 0x1

    .line 327
    .local v5, selected:Z
    :goto_31
    if-eqz p3, :cond_6e

    const/4 v6, -0x1

    .local v6, where:I
    :goto_34
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 328
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 330
    add-int/2addr v4, v8

    .line 331
    add-int/lit8 v0, v12, -0x1

    if-ge v1, v0, :cond_43

    .line 332
    add-int/2addr v4, v10

    .line 335
    :cond_43
    if-eqz v5, :cond_4a

    if-nez v9, :cond_49

    if-eqz v11, :cond_4a

    .line 336
    :cond_49
    move-object v14, v7

    .line 322
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 301
    .end local v1           #pos:I
    .end local v4           #nextLeft:I
    .end local v5           #selected:Z
    .end local v6           #where:I
    .end local v7           #child:Landroid/view/View;
    .end local v9           #hasFocus:Z
    .end local v11           #inClick:Z
    .end local v12           #last:I
    .end local v13           #selectedPosition:I
    .end local v14           #selectedView:Landroid/view/View;
    :cond_4d
    const/4 v0, 0x0

    goto :goto_e

    .line 307
    .restart local v4       #nextLeft:I
    :cond_4f
    add-int/lit8 v12, p1, 0x1

    .line 308
    .restart local v12       #last:I
    const/4 v0, 0x0

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 310
    sub-int v0, v12, p1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v0, v2, :cond_1e

    .line 311
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v2, v12, p1

    sub-int/2addr v0, v2

    add-int v2, v8, v10

    mul-int/2addr v0, v2

    add-int/2addr v4, v0

    goto :goto_1e

    .line 324
    .restart local v1       #pos:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v9       #hasFocus:Z
    .restart local v11       #inClick:Z
    .restart local v13       #selectedPosition:I
    .restart local v14       #selectedView:Landroid/view/View;
    :cond_6c
    const/4 v5, 0x0

    goto :goto_31

    .line 327
    .restart local v5       #selected:Z
    :cond_6e
    sub-int v6, v1, p1

    goto :goto_34

    .line 340
    .end local v5           #selected:Z
    :cond_71
    iput-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 342
    if-eqz v14, :cond_79

    .line 343
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 346
    :cond_79
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .registers 26
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 841
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 842
    .local v5, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 843
    .local v16, selectedPosition:I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 844
    .local v7, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 848
    .local v18, verticalSpacing:I
    const/4 v13, -0x1

    .line 850
    .local v13, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9d

    .line 851
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 853
    .local v9, oldRowStart:I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 865
    .local v14, rowStart:I
    :goto_29
    sub-int v12, v14, v9

    .line 867
    .local v12, rowDelta:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v17

    .line 868
    .local v17, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 872
    .local v4, bottomSelectionPixel:I
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 877
    if-lez v12, :cond_f5

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_e5

    const/4 v8, 0x0

    .line 885
    .local v8, oldBottom:I
    :goto_4a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f1

    move/from16 v19, v13

    :goto_54
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 886
    .local v15, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 888
    .local v11, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 911
    .end local v8           #oldBottom:I
    :goto_6f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_168

    .line 912
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 913
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 914
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 921
    :goto_9c
    return-object v15

    .line 855
    .end local v4           #bottomSelectionPixel:I
    .end local v9           #oldRowStart:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v12           #rowDelta:I
    .end local v14           #rowStart:I
    .end local v15           #sel:Landroid/view/View;
    .end local v17           #topSelectionPixel:I
    :cond_9d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 857
    .local v6, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 858
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 860
    .restart local v14       #rowStart:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 861
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 862
    .restart local v9       #oldRowStart:I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_29

    .line 882
    .end local v6           #invertedSelection:I
    .restart local v4       #bottomSelectionPixel:I
    .restart local v12       #rowDelta:I
    .restart local v17       #topSelectionPixel:I
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_4a

    .restart local v8       #oldBottom:I
    :cond_f1
    move/from16 v19, v14

    .line 885
    goto/16 :goto_54

    .line 889
    .end local v8           #oldBottom:I
    :cond_f5
    if-gez v12, :cond_135

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_127

    const/4 v10, 0x0

    .line 896
    .local v10, oldTop:I
    :goto_100
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_132

    move/from16 v19, v13

    :goto_10a
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 897
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 899
    .restart local v11       #referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_6f

    .line 893
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_100

    .restart local v10       #oldTop:I
    :cond_132
    move/from16 v19, v14

    .line 896
    goto :goto_10a

    .line 904
    .end local v10           #oldTop:I
    :cond_135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_15a

    const/4 v10, 0x0

    .line 907
    .restart local v10       #oldTop:I
    :goto_13e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_165

    move/from16 v19, v13

    :goto_148
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 908
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .restart local v11       #referenceView:Landroid/view/View;
    goto/16 :goto_6f

    .line 904
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_15a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_13e

    .restart local v10       #oldTop:I
    :cond_165
    move/from16 v19, v14

    .line 907
    goto :goto_148

    .line 916
    .end local v10           #oldTop:I
    .restart local v11       #referenceView:Landroid/view/View;
    .restart local v15       #sel:Landroid/view/View;
    :cond_168
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 917
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 918
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_9c
.end method

.method private pinToBottom(I)V
    .registers 7
    .parameter "childrenBottom"

    .prologue
    .line 471
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 472
    .local v1, count:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v3, v4, :cond_1c

    .line 473
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 474
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 475
    .local v2, offset:I
    if-lez v2, :cond_1c

    .line 476
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 479
    .end local v0           #bottom:I
    .end local v2           #offset:I
    :cond_1c
    return-void
.end method

.method private pinToTop(I)V
    .registers 5
    .parameter "childrenTop"

    .prologue
    .line 461
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v2, :cond_14

    .line 462
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 463
    .local v1, top:I
    sub-int v0, p1, v1

    .line 464
    .local v0, offset:I
    if-gez v0, :cond_14

    .line 465
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 468
    .end local v0           #offset:I
    .end local v1           #top:I
    :cond_14
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .registers 34
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"
    .parameter "where"

    .prologue
    .line 1349
    if-eqz p6, :cond_154

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_154

    const/4 v14, 0x1

    .line 1350
    .local v14, isSelected:Z
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_157

    const/16 v20, 0x1

    .line 1351
    .local v20, updateChildSelected:Z
    :goto_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v16, v0

    .line 1352
    .local v16, mode:I
    if-lez v16, :cond_15b

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_15b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_15b

    const/4 v13, 0x1

    .line 1354
    .local v13, isPressed:Z
    :goto_30
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_15e

    const/16 v19, 0x1

    .line 1356
    .local v19, updateChildPressed:Z
    :goto_3a
    if-eqz p7, :cond_44

    if-nez v20, :cond_44

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_162

    :cond_44
    const/16 v17, 0x1

    .line 1360
    .local v17, needToMeasure:Z
    :goto_46
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/AbsListView$LayoutParams;

    .line 1361
    .local v18, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v18, :cond_61

    .line 1362
    new-instance v18, Landroid/widget/AbsListView$LayoutParams;

    .end local v18           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1365
    .restart local v18       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1367
    if-eqz p7, :cond_166

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-nez v22, :cond_166

    .line 1368
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1374
    :goto_8a
    if-eqz v20, :cond_96

    .line 1375
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 1376
    if-eqz v14, :cond_96

    .line 1377
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    .line 1381
    :cond_96
    if-eqz v19, :cond_9d

    .line 1382
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1385
    :cond_9d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_ca

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_ca

    .line 1386
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_17f

    move-object/from16 v22, p1

    .line 1387
    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1394
    :cond_ca
    :goto_ca
    if-eqz v17, :cond_1ac

    .line 1395
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1398
    .local v7, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v22, v0

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 1400
    .local v11, childWidthSpec:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1405
    .end local v7           #childHeightSpec:I
    .end local v11           #childWidthSpec:I
    :goto_fd
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1406
    .local v21, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1409
    .local v12, h:I
    if-eqz p4, :cond_1b1

    move/from16 v10, p3

    .line 1411
    .local v10, childTop:I
    :goto_109
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getResolvedLayoutDirection()I

    move-result v15

    .line 1412
    .local v15, layoutDirection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 1413
    .local v5, absoluteGravity:I
    and-int/lit8 v22, v5, 0x7

    packed-switch v22, :pswitch_data_1f0

    .line 1424
    :pswitch_11e
    move/from16 v8, p5

    .line 1428
    .local v8, childLeft:I
    :goto_120
    if-eqz v17, :cond_1d3

    .line 1429
    add-int v9, v8, v21

    .line 1430
    .local v9, childRight:I
    add-int v6, v10, v12

    .line 1431
    .local v6, childBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 1437
    .end local v6           #childBottom:I
    .end local v9           #childRight:I
    :goto_12b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13c

    .line 1438
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1441
    :cond_13c
    if-eqz p7, :cond_153

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_153

    .line 1443
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1445
    :cond_153
    return-void

    .line 1349
    .end local v5           #absoluteGravity:I
    .end local v8           #childLeft:I
    .end local v10           #childTop:I
    .end local v12           #h:I
    .end local v13           #isPressed:Z
    .end local v14           #isSelected:Z
    .end local v15           #layoutDirection:I
    .end local v16           #mode:I
    .end local v17           #needToMeasure:Z
    .end local v18           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v19           #updateChildPressed:Z
    .end local v20           #updateChildSelected:Z
    .end local v21           #w:I
    :cond_154
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 1350
    .restart local v14       #isSelected:Z
    :cond_157
    const/16 v20, 0x0

    goto/16 :goto_13

    .line 1352
    .restart local v16       #mode:I
    .restart local v20       #updateChildSelected:Z
    :cond_15b
    const/4 v13, 0x0

    goto/16 :goto_30

    .line 1354
    .restart local v13       #isPressed:Z
    :cond_15e
    const/16 v19, 0x0

    goto/16 :goto_3a

    .line 1356
    .restart local v19       #updateChildPressed:Z
    :cond_162
    const/16 v17, 0x0

    goto/16 :goto_46

    .line 1370
    .restart local v17       #needToMeasure:Z
    .restart local v18       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_166
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1371
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_8a

    .line 1388
    :cond_17f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_ca

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_ca

    .line 1402
    :cond_1ac
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_fd

    .line 1409
    .restart local v12       #h:I
    .restart local v21       #w:I
    :cond_1b1
    sub-int v10, p3, v12

    goto/16 :goto_109

    .line 1415
    .restart local v5       #absoluteGravity:I
    .restart local v10       #childTop:I
    .restart local v15       #layoutDirection:I
    :pswitch_1b5
    move/from16 v8, p5

    .line 1416
    .restart local v8       #childLeft:I
    goto/16 :goto_120

    .line 1418
    .end local v8           #childLeft:I
    :pswitch_1b9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    div-int/lit8 v22, v22, 0x2

    add-int v8, p5, v22

    .line 1419
    .restart local v8       #childLeft:I
    goto/16 :goto_120

    .line 1421
    .end local v8           #childLeft:I
    :pswitch_1c7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v22, v0

    add-int v22, v22, p5

    sub-int v8, v22, v21

    .line 1422
    .restart local v8       #childLeft:I
    goto/16 :goto_120

    .line 1433
    :cond_1d3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, v8, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1434
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_12b

    .line 1413
    nop

    :pswitch_data_1f0
    .packed-switch 0x1
        :pswitch_1b9
        :pswitch_11e
        :pswitch_1b5
        :pswitch_11e
        :pswitch_1c7
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .registers 12
    .parameter "direction"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 1701
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1702
    .local v4, selectedPosition:I
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1707
    .local v3, numColumns:I
    const/4 v2, 0x0

    .line 1709
    .local v2, moved:Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_30

    .line 1710
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1711
    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1718
    .local v0, endOfRowPos:I
    :goto_1b
    sparse-switch p1, :sswitch_data_90

    .line 1749
    :cond_1e
    :goto_1e
    if-eqz v2, :cond_2a

    .line 1750
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1751
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1754
    :cond_2a
    if-eqz v2, :cond_2f

    .line 1755
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1758
    :cond_2f
    return v2

    .line 1713
    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_30
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 1714
    .local v1, invertedSelection:I
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1715
    .restart local v0       #endOfRowPos:I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_1b

    .line 1720
    .end local v1           #invertedSelection:I
    :sswitch_48
    if-lez v5, :cond_1e

    .line 1721
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1722
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1723
    const/4 v2, 0x1

    goto :goto_1e

    .line 1727
    :sswitch_57
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_1e

    .line 1728
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1729
    add-int v6, v4, v3

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1730
    const/4 v2, 0x1

    goto :goto_1e

    .line 1734
    :sswitch_6e
    if-le v4, v5, :cond_1e

    .line 1735
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1736
    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1737
    const/4 v2, 0x1

    goto :goto_1e

    .line 1741
    :sswitch_7d
    if-ge v4, v0, :cond_1e

    .line 1742
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1743
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1744
    const/4 v2, 0x1

    goto :goto_1e

    .line 1718
    :sswitch_data_90
    .sparse-switch
        0x11 -> :sswitch_6e
        0x21 -> :sswitch_48
        0x42 -> :sswitch_7d
        0x82 -> :sswitch_57
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 9
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 1090
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1093
    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_d

    .line 1094
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1095
    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1098
    :cond_d
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 1099
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 1100
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1101
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1103
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_2c

    .line 1104
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1105
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1112
    :goto_2b
    return-void

    .line 1107
    :cond_2c
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1109
    .local v1, invertedIndex:I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1110
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_2b
.end method

.method protected computeVerticalScrollExtent()I
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 2064
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 2065
    .local v1, count:I
    if-lez v1, :cond_3e

    .line 2066
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2067
    .local v4, numColumns:I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 2069
    .local v5, rowCount:I
    mul-int/lit8 v2, v5, 0x64

    .line 2071
    .local v2, extent:I
    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2072
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2073
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2074
    .local v3, height:I
    if-lez v3, :cond_23

    .line 2075
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 2078
    :cond_23
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2079
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2080
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2081
    if-lez v3, :cond_3d

    .line 2082
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 2087
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #numColumns:I
    .end local v5           #rowCount:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_3d
    :goto_3d
    return v2

    :cond_3e
    move v2, v8

    goto :goto_3d
.end method

.method protected computeVerticalScrollOffset()I
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 2092
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v7, :cond_40

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_40

    .line 2093
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2094
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2095
    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2096
    .local v0, height:I
    if-lez v0, :cond_40

    .line 2097
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2098
    .local v1, numColumns:I
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    div-int v5, v7, v1

    .line 2099
    .local v5, whichRow:I
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    div-int v2, v7, v1

    .line 2100
    .local v2, rowCount:I
    mul-int/lit8 v7, v5, 0x64

    mul-int/lit8 v8, v3, 0x64

    div-int/2addr v8, v0

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v2

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2104
    .end local v0           #height:I
    .end local v1           #numColumns:I
    .end local v2           #rowCount:I
    .end local v3           #top:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #whichRow:I
    :cond_40
    return v6
.end method

.method protected computeVerticalScrollRange()I
    .registers 6

    .prologue
    .line 2110
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2111
    .local v0, numColumns:I
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 2112
    .local v2, rowCount:I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2113
    .local v1, result:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_28

    .line 2115
    iget v3, p0, Landroid/view/View;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2117
    :cond_28
    return v1
.end method

.method fillGap(Z)V
    .registers 11
    .parameter "down"

    .prologue
    const/16 v8, 0x22

    .line 225
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 226
    .local v1, numColumns:I
    iget v6, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 228
    .local v6, verticalSpacing:I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 230
    .local v0, count:I
    if-eqz p1, :cond_3d

    .line 231
    const/4 v3, 0x0

    .line 232
    .local v3, paddingTop:I
    iget v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_17

    .line 233
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v3

    .line 235
    :cond_17
    if-lez v0, :cond_3b

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .line 237
    .local v5, startOffset:I
    :goto_25
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v4, v7, v0

    .line 238
    .local v4, position:I
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v7, :cond_30

    .line 239
    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    .line 241
    :cond_30
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 242
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 259
    .end local v3           #paddingTop:I
    :goto_3a
    return-void

    .end local v4           #position:I
    .end local v5           #startOffset:I
    .restart local v3       #paddingTop:I
    :cond_3b
    move v5, v3

    .line 235
    goto :goto_25

    .line 244
    .end local v3           #paddingTop:I
    :cond_3d
    const/4 v2, 0x0

    .line 245
    .local v2, paddingBottom:I
    iget v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_48

    .line 246
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v2

    .line 248
    :cond_48
    if-lez v0, :cond_67

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .line 250
    .restart local v5       #startOffset:I
    :goto_55
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 251
    .restart local v4       #position:I
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v7, :cond_6e

    .line 252
    sub-int/2addr v4, v1

    .line 256
    :goto_5c
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 257
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_3a

    .line 248
    .end local v4           #position:I
    .end local v5           #startOffset:I
    :cond_67
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_55

    .line 254
    .restart local v4       #position:I
    .restart local v5       #startOffset:I
    :cond_6e
    add-int/lit8 v4, v4, -0x1

    goto :goto_5c
.end method

.method findMotionRow(I)I
    .registers 6
    .parameter "y"

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 484
    .local v0, childCount:I
    if-lez v0, :cond_33

    .line 486
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 487
    .local v2, numColumns:I
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1f

    .line 488
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_33

    .line 489
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1d

    .line 490
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 501
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1c
    return v3

    .line 488
    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_1d
    add-int/2addr v1, v2

    goto :goto_d

    .line 494
    .end local v1           #i:I
    :cond_1f
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_21
    if-ltz v1, :cond_33

    .line 495
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_31

    .line 496
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1c

    .line 494
    :cond_31
    sub-int/2addr v1, v2

    goto :goto_21

    .line 501
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_33
    const/4 v3, -0x1

    goto :goto_1c
.end method

.method fullScroll(I)Z
    .registers 5
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    .line 1672
    const/4 v0, 0x0

    .line 1673
    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_16

    .line 1674
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1675
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1676
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1677
    const/4 v0, 0x1

    .line 1685
    :cond_10
    :goto_10
    if-eqz v0, :cond_15

    .line 1686
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1689
    :cond_15
    return v0

    .line 1678
    :cond_16
    const/16 v1, 0x82

    if-ne p1, v1, :cond_10

    .line 1679
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1680
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1681
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1682
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getNumColumns()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2011
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public getStretchMode()I
    .registers 2

    .prologue
    .line 1970
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method protected layoutChildren()V
    .registers 22

    .prologue
    .line 1116
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1117
    .local v3, blockLayoutRequests:Z
    if-nez v3, :cond_e

    .line 1118
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1122
    :cond_e
    :try_start_e
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1124
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_2d

    .line 1127
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1128
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_1b5

    .line 1285
    if-nez v3, :cond_2c

    .line 1286
    :goto_24
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1289
    :cond_2c
    return-void

    .line 1132
    :cond_2d
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1133
    .local v7, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 1135
    .local v6, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    .line 1137
    .local v5, childCount:I
    const/4 v9, 0x0

    .line 1140
    .local v9, delta:I
    const/16 v16, 0x0

    .line 1141
    .local v16, oldSel:Landroid/view/View;
    const/4 v15, 0x0

    .line 1142
    .local v15, oldFirst:Landroid/view/View;
    const/4 v14, 0x0

    .line 1145
    .local v14, newSel:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_2f2

    .line 1164
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1165
    .local v12, index:I
    if-ltz v12, :cond_7d

    if-ge v12, v5, :cond_7d

    .line 1166
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1170
    :cond_7d
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1173
    .end local v12           #index:I
    :cond_87
    :goto_87
    :pswitch_87
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1174
    .local v8, dataChanged:Z
    if-eqz v8, :cond_90

    .line 1175
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V

    .line 1180
    :cond_90
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    if-nez v19, :cond_d1

    .line 1181
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1182
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1285
    if-nez v3, :cond_2c

    goto :goto_24

    .line 1147
    .end local v8           #dataChanged:Z
    :pswitch_a1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1148
    .restart local v12       #index:I
    if-ltz v12, :cond_87

    if-ge v12, v5, :cond_87

    .line 1149
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_87

    .line 1158
    .end local v12           #index:I
    :pswitch_ba
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_87

    .line 1159
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto :goto_87

    .line 1186
    .restart local v8       #dataChanged:Z
    :cond_d1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1190
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1191
    .local v10, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v17, v0

    .line 1193
    .local v17, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-eqz v8, :cond_101

    .line 1194
    const/4 v11, 0x0

    .local v11, i:I
    :goto_eb
    if-ge v11, v5, :cond_106

    .line 1195
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int v20, v10, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1194
    add-int/lit8 v11, v11, 0x1

    goto :goto_eb

    .line 1198
    .end local v11           #i:I
    :cond_101
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1203
    :cond_106
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    .line 1205
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_302

    .line 1233
    if-nez v5, :cond_23c

    .line 1234
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_212

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_20e

    :cond_12a
    const/16 v19, -0x1

    :goto_12c
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1237
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1259
    .end local v7           #childrenTop:I
    .local v18, sel:Landroid/view/View;
    :goto_139
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1261
    if-eqz v18, :cond_2a2

    .line 1262
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1263
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1272
    :cond_153
    :goto_153
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1273
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1274
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1275
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1277
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    .line 1279
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    if-lez v19, :cond_186

    .line 1280
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 1283
    :cond_186
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1285
    if-nez v3, :cond_2c

    goto/16 :goto_24

    .line 1207
    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :pswitch_18d
    if-eqz v14, :cond_19c

    .line 1208
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7, v6}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto :goto_139

    .line 1210
    .end local v18           #sel:Landroid/view/View;
    :cond_19c
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v18

    .line 1212
    .restart local v18       #sel:Landroid/view/View;
    goto :goto_139

    .line 1214
    .end local v18           #sel:Landroid/view/View;
    :pswitch_1a3
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1215
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1216
    .restart local v18       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V
    :try_end_1b4
    .catchall {:try_start_2d .. :try_end_1b4} :catchall_1b5

    goto :goto_139

    .line 1285
    .end local v5           #childCount:I
    .end local v6           #childrenBottom:I
    .end local v7           #childrenTop:I
    .end local v8           #dataChanged:Z
    .end local v9           #delta:I
    .end local v10           #firstPosition:I
    .end local v14           #newSel:Landroid/view/View;
    .end local v15           #oldFirst:Landroid/view/View;
    .end local v16           #oldSel:Landroid/view/View;
    .end local v17           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v18           #sel:Landroid/view/View;
    :catchall_1b5
    move-exception v19

    if-nez v3, :cond_1c0

    .line 1286
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1285
    :cond_1c0
    throw v19

    .line 1219
    .restart local v5       #childCount:I
    .restart local v6       #childrenBottom:I
    .restart local v7       #childrenTop:I
    .restart local v8       #dataChanged:Z
    .restart local v9       #delta:I
    .restart local v10       #firstPosition:I
    .restart local v14       #newSel:Landroid/view/View;
    .restart local v15       #oldFirst:Landroid/view/View;
    .restart local v16       #oldSel:Landroid/view/View;
    .restart local v17       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    :pswitch_1c1
    :try_start_1c1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v6}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v18

    .line 1220
    .restart local v18       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_139

    .line 1223
    .end local v18           #sel:Landroid/view/View;
    :pswitch_1d6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1224
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_139

    .line 1226
    .end local v18           #sel:Landroid/view/View;
    :pswitch_1ee
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1227
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_139

    .line 1230
    .end local v18           #sel:Landroid/view/View;
    :pswitch_206
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v18

    .line 1231
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_139

    .line 1235
    .end local v18           #sel:Landroid/view/View;
    :cond_20e
    const/16 v19, 0x0

    goto/16 :goto_12c

    .line 1239
    :cond_212
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 1240
    .local v13, last:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_228

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_239

    :cond_228
    const/16 v19, -0x1

    :goto_22a
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1242
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v18

    .line 1243
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_139

    .end local v18           #sel:Landroid/view/View;
    :cond_239
    move/from16 v19, v13

    .line 1240
    goto :goto_22a

    .line 1245
    .end local v13           #last:I
    :cond_23c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_26d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_26d

    .line 1246
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-nez v16, :cond_268

    .end local v7           #childrenTop:I
    :goto_25e
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_139

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_268
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_25e

    .line 1248
    :cond_26d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_296

    .line 1249
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v15, :cond_291

    .end local v7           #childrenTop:I
    :goto_287
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_139

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_291
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_287

    .line 1252
    :cond_296
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_139

    .line 1264
    .end local v7           #childrenTop:I
    :cond_2a2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-lez v19, :cond_2df

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2df

    .line 1265
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1266
    .local v4, child:Landroid/view/View;
    if-eqz v4, :cond_153

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_153

    .line 1268
    .end local v4           #child:Landroid/view/View;
    :cond_2df
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2f0
    .catchall {:try_start_1c1 .. :try_end_2f0} :catchall_1b5

    goto/16 :goto_153

    .line 1145
    :pswitch_data_2f2
    .packed-switch 0x1
        :pswitch_87
        :pswitch_a1
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_ba
    .end packed-switch

    .line 1205
    :pswitch_data_302
    .packed-switch 0x1
        :pswitch_1a3
        :pswitch_18d
        :pswitch_1c1
        :pswitch_1d6
        :pswitch_1ee
        :pswitch_206
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 6
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v1, -0x1

    .line 209
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 210
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    move p1, v1

    .line 217
    .end local p1
    :cond_c
    :goto_c
    return p1

    .line 214
    .restart local p1
    :cond_d
    if-ltz p1, :cond_13

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt p1, v2, :cond_c

    :cond_13
    move p1, v1

    .line 215
    goto :goto_c
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 13
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1821
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1823
    const/4 v1, -0x1

    .line 1824
    .local v1, closestChildIndex:I
    if-eqz p1, :cond_37

    if-eqz p3, :cond_37

    .line 1825
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1829
    iget-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 1830
    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1831
    .local v4, minDistance:I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1832
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    if-ge v3, v0, :cond_37

    .line 1834
    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_24

    .line 1832
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1838
    :cond_24
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1839
    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1840
    invoke-virtual {p0, v5, v6}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1841
    invoke-static {p3, v6, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1843
    .local v2, distance:I
    if-ge v2, v4, :cond_21

    .line 1844
    move v4, v2

    .line 1845
    move v1, v3

    goto :goto_21

    .line 1850
    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_37
    if-ltz v1, :cond_40

    .line 1851
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelection(I)V

    .line 1855
    :goto_3f
    return-void

    .line 1853
    :cond_40
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    goto :goto_3f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1494
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1499
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1504
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 26
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1001
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1003
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1004
    .local v18, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1005
    .local v12, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 1006
    .local v19, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1008
    .local v13, heightSize:I
    if-nez v18, :cond_45

    .line 1009
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_1fa

    .line 1010
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    .line 1014
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v20

    add-int v19, v19, v20

    .line 1017
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    .line 1018
    .local v8, childWidth:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v11

    .line 1020
    .local v11, didNotInitiallyFit:Z
    const/4 v5, 0x0

    .line 1021
    .local v5, childHeight:I
    const/4 v7, 0x0

    .line 1023
    .local v7, childState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_216

    const/16 v20, 0x0

    :goto_73
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mItemCount:I

    .line 1024
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1025
    .local v10, count:I
    if-lez v10, :cond_129

    .line 1026
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mIsScrap:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 1028
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/AbsListView$LayoutParams;

    .line 1029
    .local v17, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v17, :cond_b1

    .line 1030
    new-instance v17, Landroid/widget/AbsListView$LayoutParams;

    .end local v17           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1032
    .restart local v17       #p:Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    :cond_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1035
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1037
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v6

    .line 1039
    .local v6, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    const/high16 v21, 0x4000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v9

    .line 1041
    .local v9, childWidthSpec:I
    invoke-virtual {v4, v9, v6}, Landroid/view/View;->measure(II)V

    .line 1043
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1044
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v7, v0}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    move-result v7

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v20

    if-eqz v20, :cond_129

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1051
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v17           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_129
    if-nez v12, :cond_14f

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v20, v20, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v13, v20, v21

    .line 1056
    :cond_14f
    const/high16 v20, -0x8000

    move/from16 v0, v20

    if-ne v12, v0, :cond_18e

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1059
    .local v16, ourSize:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 1060
    .local v15, numColumns:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_174
    if-ge v14, v10, :cond_18c

    .line 1061
    add-int v16, v16, v5

    .line 1062
    add-int v20, v14, v15

    move/from16 v0, v20

    if-ge v0, v10, :cond_186

    .line 1063
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 1065
    :cond_186
    move/from16 v0, v16

    if-lt v0, v13, :cond_222

    .line 1066
    move/from16 v16, v13

    .line 1070
    :cond_18c
    move/from16 v13, v16

    .line 1073
    .end local v14           #i:I
    .end local v15           #numColumns:I
    .end local v16           #ourSize:I
    :cond_18e
    const/high16 v20, -0x8000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1ec

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1ec

    .line 1074
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1077
    .restart local v16       #ourSize:I
    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_1e8

    if-eqz v11, :cond_1ec

    .line 1078
    :cond_1e8
    const/high16 v20, 0x100

    or-int v19, v19, v20

    .line 1082
    .end local v16           #ourSize:I
    :cond_1ec
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 1083
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 1084
    return-void

    .line 1012
    .end local v5           #childHeight:I
    .end local v7           #childState:I
    .end local v8           #childWidth:I
    .end local v10           #count:I
    .end local v11           #didNotInitiallyFit:Z
    :cond_1fa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    goto/16 :goto_3f

    .line 1023
    .restart local v5       #childHeight:I
    .restart local v7       #childState:I
    .restart local v8       #childWidth:I
    .restart local v11       #didNotInitiallyFit:Z
    :cond_216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    goto/16 :goto_73

    .line 1060
    .restart local v10       #count:I
    .restart local v14       #i:I
    .restart local v15       #numColumns:I
    .restart local v16       #ourSize:I
    :cond_222
    add-int/2addr v14, v15

    goto/16 :goto_174
.end method

.method pageScroll(I)Z
    .registers 7
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 1646
    const/4 v0, -0x1

    .line 1648
    .local v0, nextPage:I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1e

    .line 1649
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1654
    :cond_11
    :goto_11
    if-ltz v0, :cond_1d

    .line 1655
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1656
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1657
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1658
    const/4 v1, 0x1

    .line 1661
    :cond_1d
    return v1

    .line 1650
    :cond_1e
    const/16 v2, 0x82

    if-ne p1, v2, :cond_11

    .line 1651
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_11
.end method

.method sequenceScroll(I)Z
    .registers 15
    .parameter "direction"

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1766
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1767
    .local v5, selectedPosition:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1768
    .local v4, numColumns:I
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1772
    .local v0, count:I
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_32

    .line 1773
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1774
    .local v7, startOfRow:I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1781
    .local v1, endOfRow:I
    :goto_1b
    const/4 v3, 0x0

    .line 1782
    .local v3, moved:Z
    const/4 v6, 0x0

    .line 1783
    .local v6, showScroll:Z
    packed-switch p1, :pswitch_data_68

    .line 1807
    :cond_20
    :goto_20
    if-eqz v3, :cond_2c

    .line 1808
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1809
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1812
    :cond_2c
    if-eqz v6, :cond_31

    .line 1813
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1816
    :cond_31
    return v3

    .line 1776
    .end local v1           #endOfRow:I
    .end local v3           #moved:Z
    .end local v6           #showScroll:Z
    .end local v7           #startOfRow:I
    :cond_32
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1777
    .local v2, invertedSelection:I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1778
    .restart local v1       #endOfRow:I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #startOfRow:I
    goto :goto_1b

    .line 1785
    .end local v2           #invertedSelection:I
    .restart local v3       #moved:Z
    .restart local v6       #showScroll:Z
    :pswitch_46
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_20

    .line 1787
    iput v12, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1788
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1789
    const/4 v3, 0x1

    .line 1791
    if-ne v5, v1, :cond_56

    move v6, v8

    :goto_55
    goto :goto_20

    :cond_56
    move v6, v9

    goto :goto_55

    .line 1796
    :pswitch_58
    if-lez v5, :cond_20

    .line 1798
    iput v12, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1799
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1800
    const/4 v3, 0x1

    .line 1802
    if-ne v5, v7, :cond_66

    move v6, v8

    :goto_65
    goto :goto_20

    :cond_66
    move v6, v9

    goto :goto_65

    .line 1783
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_58
        :pswitch_46
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 7
    .parameter "adapter"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 164
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_11

    .line 165
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 168
    :cond_11
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    .line 169
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 170
    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 172
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 173
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 176
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_71

    .line 179
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 180
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 181
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 182
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 184
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 185
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 187
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 190
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_6c

    .line 191
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 195
    .local v0, position:I
    :goto_5f
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 196
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 197
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 204
    .end local v0           #position:I
    :goto_68
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 205
    return-void

    .line 193
    :cond_6c
    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_5f

    .line 199
    .end local v0           #position:I
    :cond_71
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 201
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_68
.end method

.method public setColumnWidth(I)V
    .registers 3
    .parameter "columnWidth"

    .prologue
    .line 1981
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_9

    .line 1982
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 1983
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1985
    :cond_9
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .parameter "gravity"

    .prologue
    .line 1915
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_9

    .line 1916
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 1917
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1919
    :cond_9
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 3
    .parameter "horizontalSpacing"

    .prologue
    .line 1931
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_9

    .line 1932
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 1933
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1935
    :cond_9
    return-void
.end method

.method public setNumColumns(I)V
    .registers 3
    .parameter "numColumns"

    .prologue
    .line 1995
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_9

    .line 1996
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 1997
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1999
    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1457
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1458
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1462
    :goto_9
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1463
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1464
    return-void

    .line 1460
    :cond_10
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_9
.end method

.method setSelectionInt(I)V
    .registers 9
    .parameter "position"

    .prologue
    .line 1473
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1475
    .local v4, previousSelectedPosition:I
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1476
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1478
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2c

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1480
    .local v0, next:I
    :goto_14
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2f

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1483
    .local v2, previous:I
    :goto_1e
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1484
    .local v1, nextRow:I
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1486
    .local v3, previousRow:I
    if-eq v1, v3, :cond_2b

    .line 1487
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1490
    :cond_2b
    return-void

    .line 1478
    .end local v0           #next:I
    .end local v1           #nextRow:I
    .end local v2           #previous:I
    .end local v3           #previousRow:I
    :cond_2c
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    goto :goto_14

    .restart local v0       #next:I
    :cond_2f
    move v2, v4

    .line 1480
    goto :goto_1e
.end method

.method public setStretchMode(I)V
    .registers 3
    .parameter "stretchMode"

    .prologue
    .line 1963
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_9

    .line 1964
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 1965
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1967
    :cond_9
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 3
    .parameter "verticalSpacing"

    .prologue
    .line 1948
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_9

    .line 1949
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 1950
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1952
    :cond_9
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 824
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 825
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 814
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 815
    return-void
.end method
