.class public Lcom/htc/widget/internal/ListPopupBubbleWindow;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;,
        Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;,
        Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;,
        Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;,
        Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;,
        Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;,
        Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupBubbleWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constructThreadHash:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownWidth:I

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHideSelector:Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinWidth:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 207
    const/4 v0, 0x0

    const v1, 0x201007c

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 218
    const v0, 0x201007c

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 84
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 101
    iput v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    .line 102
    iput v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    .line 106
    iput-boolean v7, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    .line 107
    iput-boolean v7, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    .line 108
    const v5, 0x7fffffff

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mListItemExpandMaximum:I

    .line 111
    iput v7, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptPosition:I

    .line 123
    new-instance v5, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    .line 124
    new-instance v5, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTouchInterceptor:Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;

    .line 125
    new-instance v5, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mScrollListener:Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;

    .line 126
    new-instance v5, Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHideSelector:Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;

    .line 129
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    .line 275
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->constructThreadHash:I

    .line 243
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 244
    new-instance v5, Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/htc/widget/internal/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    .line 245
    iget-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/widget/internal/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 248
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 249
    const v5, 0x20501c4

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMaxWidth:I

    .line 250
    const v5, 0x20501c5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMinWidth:I

    .line 271
    :cond_7b
    :goto_7b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->constructThreadHash:I

    .line 272
    return-void

    .line 252
    :cond_86
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 254
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 255
    .local v4, wm:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 257
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v6, :cond_e0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 259
    .local v3, width:I
    :goto_a5
    const/high16 v5, 0x205

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMaxWidth:I

    .line 260
    mul-int/lit8 v5, v3, 0x2

    div-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMinWidth:I

    .line 262
    const v5, 0x2050012

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMaxHeight:I

    .line 264
    iget-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/internal/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7b

    .line 265
    iget-object v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/internal/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    .local v0, popDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 268
    iget v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMaxHeight:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMaxHeight:I

    goto :goto_7b

    .line 257
    .end local v0           #popDrawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #width:I
    :cond_e0
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_a5
.end method

.method static synthetic access$1000(Lcom/htc/widget/internal/ListPopupBubbleWindow;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/PopupBubbleWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/internal/ListPopupBubbleWindow;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->constructThreadHash:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/internal/ListPopupBubbleWindow;)Landroid/widget/ListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/internal/ListPopupBubbleWindow;Landroid/widget/ListAdapter;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v0

    return v0
.end method

.method private buildDropDown()I
    .registers 26

    .prologue
    .line 1275
    const/16 v21, 0x0

    .line 1277
    .local v21, otherHeights:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    if-nez v1, :cond_1b9

    .line 1278
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 1286
    .local v8, context:Landroid/content/Context;
    new-instance v1, Lcom/htc/widget/internal/ListPopupBubbleWindow$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$1;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1296
    new-instance v2, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mModal:Z

    if-nez v1, :cond_5d

    const/4 v1, 0x1

    :goto_20
    invoke-direct {v2, v8, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    .line 1298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2d

    .line 1302
    :cond_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1303
    .local v9, count:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_37
    move/from16 v0, v16

    if-ge v0, v9, :cond_5f

    .line 1305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;

    .line 1306
    .local v18, info:Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1303
    add-int/lit8 v16, v16, 0x1

    goto :goto_37

    .line 1296
    .end local v9           #count:I
    .end local v16           #i:I
    .end local v18           #info:Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    :cond_5d
    const/4 v1, 0x0

    goto :goto_20

    .line 1309
    .restart local v9       #count:I
    .restart local v16       #i:I
    :cond_5f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1310
    .local v10, count2:I
    const/16 v16, 0x0

    :goto_69
    move/from16 v0, v16

    if-ge v0, v10, :cond_8f

    .line 1312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;

    .line 1313
    .restart local v18       #info:Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1310
    add-int/lit8 v16, v16, 0x1

    goto :goto_69

    .line 1317
    .end local v18           #info:Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    :cond_8f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setFocusable(Z)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    new-instance v2, Lcom/htc/widget/internal/ListPopupBubbleWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$2;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mScrollListener:Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupScrollListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_f2

    .line 1342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1345
    :cond_f2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    .line 1347
    .local v11, dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    .line 1348
    .local v15, hintView:Landroid/view/View;
    if-eqz v15, :cond_153

    .line 1351
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1352
    .local v13, hintContainer:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1354
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v14, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1358
    .local v14, hintParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptPosition:I

    packed-switch v1, :pswitch_data_1f6

    .line 1370
    const-string v1, "ListPopupBubbleWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hint position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :goto_131
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1377
    .local v24, widthSpec:I
    const/4 v12, 0x0

    .line 1378
    .local v12, heightSpec:I
    move/from16 v0, v24

    invoke-virtual {v15, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1380
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1381
    .restart local v14       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v21, v1, v2

    .line 1384
    move-object v11, v13

    .line 1387
    .end local v12           #heightSpec:I
    .end local v13           #hintContainer:Landroid/widget/LinearLayout;
    .end local v14           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v24           #widthSpec:I
    :cond_153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v1, v11}, Lcom/htc/widget/internal/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 1400
    .end local v8           #context:Landroid/content/Context;
    .end local v9           #count:I
    .end local v10           #count2:I
    .end local v15           #hintView:Landroid/view/View;
    .end local v16           #i:I
    :cond_15a
    :goto_15a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1de

    const/16 v17, 0x1

    .line 1402
    .local v17, ignoreBottomDecorations:Z
    :goto_167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    move/from16 v0, v17

    invoke-virtual {v1, v2, v3, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v20

    .line 1407
    .local v20, maxHeight:I
    const/16 v22, 0x0

    .line 1408
    .local v22, padding:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1409
    .local v7, background:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_19a

    .line 1410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v22, v1, v2

    .line 1414
    :cond_19a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_1a7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e1

    .line 1415
    :cond_1a7
    add-int v1, v20, v22

    .line 1424
    :goto_1a9
    return v1

    .line 1360
    .end local v7           #background:Landroid/graphics/drawable/Drawable;
    .end local v17           #ignoreBottomDecorations:Z
    .end local v20           #maxHeight:I
    .end local v22           #padding:I
    .restart local v8       #context:Landroid/content/Context;
    .restart local v9       #count:I
    .restart local v10       #count2:I
    .restart local v13       #hintContainer:Landroid/widget/LinearLayout;
    .restart local v14       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v15       #hintView:Landroid/view/View;
    .restart local v16       #i:I
    :pswitch_1aa
    invoke-virtual {v13, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_131

    .line 1365
    :pswitch_1b1
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1366
    invoke-virtual {v13, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_131

    .line 1389
    .end local v8           #context:Landroid/content/Context;
    .end local v9           #count:I
    .end local v10           #count2:I
    .end local v11           #dropDownView:Landroid/view/ViewGroup;
    .end local v13           #hintContainer:Landroid/widget/LinearLayout;
    .end local v14           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v15           #hintView:Landroid/view/View;
    .end local v16           #i:I
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 1390
    .restart local v11       #dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v23, v0

    .line 1391
    .local v23, view:Landroid/view/View;
    if-eqz v23, :cond_15a

    .line 1392
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1394
    .restart local v14       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v21, v1, v2

    goto/16 :goto_15a

    .line 1400
    .end local v14           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v23           #view:Landroid/view/View;
    :cond_1de
    const/16 v17, 0x0

    goto :goto_167

    .line 1418
    .restart local v7       #background:Landroid/graphics/drawable/Drawable;
    .restart local v17       #ignoreBottomDecorations:Z
    .restart local v20       #maxHeight:I
    .restart local v22       #padding:I
    :cond_1e1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    sub-int v5, v20, v21

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->mockMeasureHeightOfChildren(IIIII)I

    move-result v19

    .line 1422
    .local v19, listContent:I
    if-lez v19, :cond_1f3

    add-int v21, v21, v22

    .line 1424
    :cond_1f3
    add-int v1, v19, v21

    goto :goto_1a9

    .line 1358
    :pswitch_data_1f6
    .packed-switch 0x0
        :pswitch_1b1
        :pswitch_1aa
    .end packed-switch
.end method

.method private checkWidthLimit(I)I
    .registers 3
    .parameter "width"

    .prologue
    .line 569
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMinWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 570
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mMaxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 571
    return p1
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .registers 12
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1711
    const/4 v6, 0x0

    .line 1712
    .local v6, width:I
    const/4 v4, 0x0

    .line 1713
    .local v4, itemView:Landroid/view/View;
    const/4 v3, 0x0

    .line 1714
    .local v3, itemType:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1716
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1718
    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1719
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-ge v2, v0, :cond_2e

    .line 1720
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 1721
    .local v5, positionType:I
    if-eq v5, v3, :cond_1c

    .line 1722
    move v3, v5

    .line 1723
    const/4 v4, 0x0

    .line 1725
    :cond_1c
    invoke-interface {p1, v2, v9, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1726
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 1727
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1719
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1729
    .end local v5           #positionType:I
    :cond_2e
    return v6
.end method

.method private removePromptView()V
    .registers 4

    .prologue
    .line 923
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_16

    .line 924
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 925
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v0, v1

    .line 926
    check-cast v0, Landroid/view/ViewGroup;

    .line 927
    .local v0, group:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 930
    .end local v0           #group:Landroid/view/ViewGroup;
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_16
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 735
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 736
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 715
    new-instance v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V

    .line 716
    .local v0, info:Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    .line 717
    iput-object p2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    .line 718
    iput-boolean p3, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    .line 719
    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 696
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 697
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 7
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 670
    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_c

    .line 671
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 675
    :cond_c
    new-instance v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V

    .line 676
    .local v0, info:Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    .line 677
    iput-object p2, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    .line 678
    iput-boolean p3, v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    .line 679
    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    return-void
.end method

.method public clearListSelection()V
    .registers 3

    .prologue
    .line 983
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    .line 984
    .local v0, list:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    if-eqz v0, :cond_b

    .line 986
    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;Z)Z

    .line 989
    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->requestLayout()V

    .line 991
    :cond_b
    return-void
.end method

.method public dismiss()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 846
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->dismiss()V

    .line 847
    invoke-direct {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->removePromptView()V

    .line 848
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 850
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_1a

    .line 851
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 853
    :cond_1a
    iput-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    .line 854
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 855
    return-void
.end method

.method public dismissWithoutAnimation()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 871
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->dismissWithoutAnimation()V

    .line 872
    invoke-direct {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->removePromptView()V

    .line 873
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 875
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_1a

    .line 876
    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 878
    :cond_1a
    iput-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    .line 879
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 881
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getExpandDirection()I
    .registers 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getExpandDirection()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 579
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .registers 2

    .prologue
    .line 503
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .registers 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .registers 2

    .prologue
    .line 340
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1037
    const/4 v0, 0x0

    .line 1039
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public getSelectedItemId()J
    .registers 3

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1065
    const-wide/high16 v0, -0x8000

    .line 1067
    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_8
.end method

.method public getSelectedItemPosition()I
    .registers 2

    .prologue
    .line 1050
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1051
    const/4 v0, -0x1

    .line 1053
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_7
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1079
    const/4 v0, 0x0

    .line 1081
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_7
.end method

.method public getSoftInputMode()I
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method getTriangleOffset()I
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    if-eqz v0, :cond_b

    .line 745
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getTriangleOffset()I

    move-result v0

    .line 746
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getVerticalOffset()I
    .registers 2

    .prologue
    .line 521
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 539
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    return v0
.end method

.method public internalDismiss()V
    .registers 3

    .prologue
    .line 862
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->dismiss()V

    .line 863
    invoke-direct {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->removePromptView()V

    .line 864
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/internal/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 865
    return-void
.end method

.method public isDropDownAlwaysVisible()Z
    .registers 2

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .registers 3

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isModal()Z
    .registers 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 16
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1116
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_93

    .line 1122
    const/16 v9, 0x3e

    if-eq p1, v9, :cond_93

    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_20

    const/16 v9, 0x42

    if-eq p1, v9, :cond_93

    const/16 v9, 0x17

    if-eq p1, v9, :cond_93

    .line 1126
    :cond_20
    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 1129
    .local v4, curIndex:I
    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v9}, Lcom/htc/widget/internal/PopupBubbleWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_5f

    move v2, v7

    .line 1131
    .local v2, below:Z
    :goto_2f
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 1134
    .local v0, adapter:Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 1135
    .local v5, firstItem:I
    const/high16 v6, -0x8000

    .line 1137
    .local v6, lastItem:I
    if-eqz v0, :cond_47

    .line 1138
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 1139
    .local v1, allEnabled:Z
    if-eqz v1, :cond_61

    move v5, v8

    .line 1141
    :goto_3f
    if-eqz v1, :cond_68

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 1145
    .end local v1           #allEnabled:Z
    :cond_47
    :goto_47
    if-eqz v2, :cond_4d

    if-ne p1, v11, :cond_4d

    if-le v4, v5, :cond_53

    :cond_4d
    if-nez v2, :cond_75

    if-ne p1, v12, :cond_75

    if-lt v4, v6, :cond_75

    .line 1149
    :cond_53
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->clearListSelection()V

    .line 1150
    iget-object v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v8, v7}, Lcom/htc/widget/internal/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 1151
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->show()V

    .line 1197
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v6           #lastItem:I
    :goto_5e
    :sswitch_5e
    return v7

    .restart local v4       #curIndex:I
    :cond_5f
    move v2, v8

    .line 1129
    goto :goto_2f

    .line 1139
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v1       #allEnabled:Z
    .restart local v2       #below:Z
    .restart local v5       #firstItem:I
    .restart local v6       #lastItem:I
    :cond_61
    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9, v8, v7}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->mockLookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_3f

    .line 1141
    :cond_68
    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10, v8}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->mockLookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_47

    .line 1156
    .end local v1           #allEnabled:Z
    :cond_75
    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    #setter for: Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v9, v8}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;Z)Z

    .line 1159
    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9, p1, p2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 1162
    .local v3, consumed:Z
    if-eqz v3, :cond_95

    .line 1165
    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/htc/widget/internal/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 1170
    iget-object v9, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 1171
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->show()V

    .line 1173
    sparse-switch p1, :sswitch_data_a4

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v3           #consumed:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v6           #lastItem:I
    :cond_93
    move v7, v8

    .line 1197
    goto :goto_5e

    .line 1183
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #below:Z
    .restart local v3       #consumed:Z
    .restart local v4       #curIndex:I
    .restart local v5       #firstItem:I
    .restart local v6       #lastItem:I
    :cond_95
    if-eqz v2, :cond_9c

    if-ne p1, v12, :cond_9c

    .line 1186
    if-ne v4, v6, :cond_93

    goto :goto_5e

    .line 1189
    :cond_9c
    if-nez v2, :cond_93

    if-ne p1, v11, :cond_93

    if-ne v4, v5, :cond_93

    goto :goto_5e

    .line 1173
    nop

    :sswitch_data_a4
    .sparse-switch
        0x13 -> :sswitch_5e
        0x14 -> :sswitch_5e
        0x17 -> :sswitch_5e
        0x42 -> :sswitch_5e
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1243
    const/4 v3, 0x4

    if-ne p1, v3, :cond_41

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1246
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 1247
    .local v0, anchorView:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_22

    .line 1248
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1249
    .local v1, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_21

    .line 1250
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1264
    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_21
    :goto_21
    return v2

    .line 1253
    .restart local v0       #anchorView:Landroid/view/View;
    :cond_22
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_41

    .line 1254
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1255
    .restart local v1       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_31

    .line 1256
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1258
    :cond_31
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_41

    .line 1259
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->dismiss()V

    goto :goto_21

    .line 1264
    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_41
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1212
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1e

    .line 1213
    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1214
    .local v0, consumed:Z
    if-eqz v0, :cond_19

    .line 1215
    sparse-switch p1, :sswitch_data_20

    .line 1227
    .end local v0           #consumed:Z
    :cond_19
    :goto_19
    return v0

    .line 1221
    .restart local v0       #consumed:Z
    :sswitch_1a
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->dismiss()V

    goto :goto_19

    .line 1227
    .end local v0           #consumed:Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_19

    .line 1215
    :sswitch_data_20
    .sparse-switch
        0x17 -> :sswitch_1a
        0x42 -> :sswitch_1a
    .end sparse-switch
.end method

.method public performItemClick(I)Z
    .registers 9
    .parameter "position"

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1020
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_24

    .line 1021
    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    .line 1022
    .local v1, list:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    invoke-virtual {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1023
    .local v2, child:Landroid/view/View;
    invoke-virtual {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1024
    .local v6, adapter:Landroid/widget/ListAdapter;
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1026
    .end local v1           #list:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    .end local v2           #child:Landroid/view/View;
    .end local v6           #adapter:Landroid/widget/ListAdapter;
    :cond_24
    const/4 v0, 0x1

    .line 1028
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public postShow()V
    .registers 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 652
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_35

    .line 286
    new-instance v0, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupDataSetObserver;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V

    iput-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 291
    :cond_c
    :goto_c
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 292
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1f

    .line 293
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 294
    const-string v0, "ListPopupBubbleWindow"

    const-string/jumbo v1, "register data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1f
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_34

    .line 299
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    if-nez p1, :cond_34

    .line 302
    const-string v0, "ListPopupBubbleWindow"

    const-string/jumbo v1, "unregister list data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_34
    return-void

    .line 287
    :cond_35
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    .line 288
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 289
    const-string v0, "ListPopupBubbleWindow"

    const-string/jumbo v1, "unregister data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2
    .parameter "anchor"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 496
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    if-eqz v0, :cond_9

    .line 328
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 330
    :cond_9
    return-void
.end method

.method public setAnimationStyle(I)V
    .registers 3
    .parameter "animationStyle"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setAnimationStyle(I)V

    .line 465
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    return-void
.end method

.method public setContentWidth(I)V
    .registers 5
    .parameter "width"

    .prologue
    .line 560
    invoke-direct {p0, p1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->checkWidthLimit(I)I

    move-result p1

    .line 561
    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 562
    .local v0, popupBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1d

    .line 563
    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 564
    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    .line 566
    :cond_1d
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .registers 2
    .parameter "dropDownAlwaysVisible"

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    .line 392
    return-void
.end method

.method public setExpandDirection(I)V
    .registers 3
    .parameter "direction"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setExpandDirection(I)V

    .line 910
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .registers 2
    .parameter "forceIgnoreOutsideTouch"

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    .line 377
    return-void
.end method

.method public setHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 589
    iput p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    .line 590
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 513
    iput p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    .line 514
    return-void
.end method

.method public setInputMethodMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 947
    return-void
.end method

.method setListItemExpandMax(I)V
    .registers 2
    .parameter "max"

    .prologue
    .line 1100
    iput p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mListItemExpandMaximum:I

    .line 1101
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "selector"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 437
    return-void
.end method

.method public setModal(Z)V
    .registers 3
    .parameter "modal"

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mModal:Z

    .line 355
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setFocusable(Z)V

    .line 356
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;)V

    .line 895
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter "clickListener"

    .prologue
    .line 601
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 602
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 613
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 614
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .parameter "selectedListener"

    .prologue
    .line 625
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 626
    return-void
.end method

.method public setPromptPosition(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 317
    iput p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptPosition:I

    .line 318
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .registers 3
    .parameter "prompt"

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    .line 637
    .local v0, showing:Z
    if-eqz v0, :cond_9

    .line 638
    invoke-direct {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->removePromptView()V

    .line 640
    :cond_9
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    .line 641
    if-eqz v0, :cond_10

    .line 642
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->show()V

    .line 644
    :cond_10
    return-void
.end method

.method public setSelection(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 967
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    .line 968
    .local v0, list:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 969
    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;Z)Z

    .line 970
    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setSelection(I)V

    .line 971
    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 972
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setItemChecked(IZ)V

    .line 975
    :cond_1b
    return-void
.end method

.method public setSoftInputMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setSoftInputMode(I)V

    .line 416
    return-void
.end method

.method setTriangleOffset(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    if-eqz v0, :cond_9

    .line 740
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setTriangleOffset(I)V

    .line 741
    :cond_9
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 531
    iput p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    .line 532
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 549
    iput p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    .line 550
    return-void
.end method

.method public show()V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v9, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 755
    invoke-direct {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->buildDropDown()I

    move-result v6

    .line 757
    .local v6, height:I
    const/4 v4, 0x0

    .line 758
    .local v4, widthSpec:I
    const/4 v5, 0x0

    .line 760
    .local v5, heightSpec:I
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isInputMethodNotNeeded()Z

    move-result v7

    .line 761
    .local v7, noInputMethod:Z
    iget-object v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    if-nez v7, :cond_51

    move v0, v1

    :goto_13
    invoke-virtual {v8, v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->setAllowScrollingAnchorParent(Z)V

    .line 763
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 764
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_53

    .line 767
    const/4 v4, -0x1

    .line 774
    :goto_23
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_74

    .line 777
    if-eqz v7, :cond_63

    move v5, v6

    .line 778
    :goto_2a
    if-eqz v7, :cond_67

    .line 779
    iget-object v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_65

    move v0, v3

    :goto_33
    invoke-virtual {v8, v0, v2}, Lcom/htc/widget/internal/PopupBubbleWindow;->setWindowLayoutMode(II)V

    .line 794
    :goto_36
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget-boolean v3, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_7d

    iget-boolean v3, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_7d

    :goto_40
    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setOutsideTouchable(Z)V

    .line 796
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/internal/PopupBubbleWindow;->update(Landroid/view/View;IIII)V

    .line 839
    :cond_50
    :goto_50
    return-void

    :cond_51
    move v0, v2

    .line 761
    goto :goto_13

    .line 768
    :cond_53
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_60

    .line 769
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_23

    .line 771
    :cond_60
    iget v4, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    goto :goto_23

    :cond_63
    move v5, v3

    .line 777
    goto :goto_2a

    :cond_65
    move v0, v2

    .line 779
    goto :goto_33

    .line 783
    :cond_67
    iget-object v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_72

    move v0, v3

    :goto_6e
    invoke-virtual {v8, v0, v3}, Lcom/htc/widget/internal/PopupBubbleWindow;->setWindowLayoutMode(II)V

    goto :goto_36

    :cond_72
    move v0, v2

    goto :goto_6e

    .line 788
    :cond_74
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_7a

    .line 789
    move v5, v6

    goto :goto_36

    .line 791
    :cond_7a
    iget v5, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    goto :goto_36

    :cond_7d
    move v1, v2

    .line 794
    goto :goto_40

    .line 799
    :cond_7f
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_e1

    .line 800
    const/4 v4, -0x1

    .line 809
    :goto_84
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_fb

    .line 810
    const/4 v5, -0x1

    .line 819
    :goto_89
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/internal/PopupBubbleWindow;->setWindowLayoutMode(II)V

    .line 820
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setClipToScreenEnabled(Z)V

    .line 824
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget-boolean v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_10e

    iget-boolean v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_10e

    :goto_9d
    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setOutsideTouchable(Z)V

    .line 825
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mTouchInterceptor:Lcom/htc/widget/internal/ListPopupBubbleWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 826
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/internal/PopupBubbleWindow;->setListViewHook(Landroid/widget/ListView;)V

    .line 827
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/htc/widget/internal/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 829
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->startIntroAnimation()V

    .line 830
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->setSelection(I)V

    .line 832
    iget-boolean v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mModal:Z

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 833
    :cond_d1
    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->clearListSelection()V

    .line 835
    :cond_d4
    iget-boolean v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mModal:Z

    if-nez v0, :cond_50

    .line 836
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mHideSelector:Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_50

    .line 802
    :cond_e1
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_f3

    .line 803
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/htc/widget/internal/PopupBubbleWindow;->setWidth(I)V

    goto :goto_84

    .line 805
    :cond_f3
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownWidth:I

    invoke-virtual {v0, v8}, Lcom/htc/widget/internal/PopupBubbleWindow;->setWidth(I)V

    goto :goto_84

    .line 812
    :cond_fb
    iget v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_105

    .line 813
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    invoke-virtual {v0, v6}, Lcom/htc/widget/internal/PopupBubbleWindow;->setHeight(I)V

    goto :goto_89

    .line 815
    :cond_105
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/internal/PopupBubbleWindow;

    iget v8, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow;->mDropDownHeight:I

    invoke-virtual {v0, v8}, Lcom/htc/widget/internal/PopupBubbleWindow;->setHeight(I)V

    goto/16 :goto_89

    :cond_10e
    move v1, v2

    .line 824
    goto :goto_9d
.end method
