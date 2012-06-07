.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$CheckForItemReleased;,
        Landroid/widget/ListView$IntroAnimatorListener;,
        Landroid/widget/ListView$CheckForPressAnimation;,
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field static final ANIMATION_TYPE_COUNT:I = 0x5

.field public static final DEFAULT_INTRO_ANIMATION:I = 0x0

.field static final DEFAULT_INTRO_ANIMATION_INITIAL_DURATION:I = 0x15e

.field static final DEFAULT_INTRO_ANIMATION_INTERPOLATOR_FACTOR:F = 1.7f

.field static final DIRECTION_INTRO_ANIMATION_DURATION_INTERPOLATOR_FACTOR:F = 0.3f

.field static final DIRECTION_INTRO_ANIMATION_INTERPOLATOR_FACTOR:F = 1.2f

.field public static final DOWN_INTRO_ANIMATION:I = 0x1

.field static final DOWN_INTRO_ANIMATION_INITIAL_DURATION:I = 0x64

.field static final INTRO_ANIMATION_DURATIONS:[I = null

.field public static final LEFT_INTRO_ANIMATION:I = 0x4

.field static final LEFT_INTRO_ANIMATION_INITIAL_DURATION:I = 0xb4

.field private static MAX_DIFF:I = 0x0

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_DIFF:I = 0xf

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field private static final NONSENSITIVE_FACTOR:I = 0xa

.field static final NO_POSITION:I = -0x1

.field public static final RIGHT_INTRO_ANIMATION:I = 0x3

.field static final RIGHT_INTRO_ANIMATION_INITIAL_DURATION:I = 0xb4

.field public static final UP_INTRO_ANIMATION:I = 0x2

.field static final UP_INTRO_ANIMATION_INITIAL_DURATION:I = 0x64


# instance fields
.field isIgnoreFooterViewInBouncing:Z

.field m2DPressAnimationEnabled:Z

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

.field private mCheckForPressAnimationDelay:J

.field mClickAnimationScaleX:F

.field mClickAnimationScaleY:F

.field private mCurrent:F

.field mDefaultIntroAnimationInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDirectionIntroAnimationDurationInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerChangedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

.field private mInBouncing:Z

.field private mIntroAnimatedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIntroAnimationDelay:I

.field private mIntroAnimationRunnable:Ljava/lang/Runnable;

.field private mIntroAnimationType:I

.field mIntroAnimatorListenerPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mIntroAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private mOverScrollShadow:Landroid/graphics/drawable/Drawable;

.field private mOverScrollShadowHeight:I

.field private mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

.field private mPre:F

.field mPressAnimators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

.field private mPressedView:Landroid/view/View;

.field mPressedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mReleaseAnimationDuration:I

.field mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mSame:Z

.field mScaleXDifference:F

.field mScaleYDifference:F

.field mShouldDrawPressShadow:Z

.field mShouldTriggerAnimation:Z

.field private mStart:F

.field private final mTempRect:Landroid/graphics/Rect;

.field shouldHideIntroAnimatedViews:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 206
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Landroid/widget/ListView;->INTRO_ANIMATION_DURATIONS:[I

    .line 3860
    const/16 v0, 0x24

    sput v0, Landroid/widget/ListView;->MAX_DIFF:I

    return-void

    .line 206
    nop

    :array_e
    .array-data 0x4
        0x5et 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 289
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 293
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 122
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 136
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 138
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 141
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 146
    new-instance v7, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v7, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 155
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/ListView;->mIntroAnimatedViews:Ljava/util/ArrayList;

    .line 160
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/widget/ListView;->mDividerChangedList:Ljava/util/ArrayList;

    .line 165
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/widget/ListView;->mIntroAnimatorListenerPool:Ljava/util/ArrayList;

    .line 196
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/ListView;->mIntroAnimationType:I

    .line 201
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ListView;->mShouldTriggerAnimation:Z

    .line 217
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/ListView;->mIntroAnimationDelay:I

    .line 222
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const v8, 0x3fd9999a

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v7, p0, Landroid/widget/ListView;->mDefaultIntroAnimationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 227
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const v8, 0x3f99999a

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v7, p0, Landroid/widget/ListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 232
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const v8, 0x3e99999a

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v7, p0, Landroid/widget/ListView;->mDirectionIntroAnimationDurationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 248
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ListView;->mShouldDrawPressShadow:Z

    .line 253
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    .line 255
    const/high16 v7, 0x4120

    iput v7, p0, Landroid/widget/ListView;->mScaleXDifference:F

    .line 256
    const/high16 v7, 0x4120

    iput v7, p0, Landroid/widget/ListView;->mScaleYDifference:F

    .line 257
    const v7, 0x3f666666

    iput v7, p0, Landroid/widget/ListView;->mClickAnimationScaleX:F

    .line 258
    const v7, 0x3f666666

    iput v7, p0, Landroid/widget/ListView;->mClickAnimationScaleY:F

    .line 262
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    .line 269
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    .line 274
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    .line 3858
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/ListView;->mSame:Z

    .line 3862
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/ListView;->mInBouncing:Z

    .line 3888
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/ListView;->isIgnoreFooterViewInBouncing:Z

    .line 4097
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/ListView;->mPressedView:Landroid/view/View;

    .line 4098
    const/16 v7, 0x3c

    iput v7, p0, Landroid/widget/ListView;->mReleaseAnimationDuration:I

    .line 4099
    const-wide/16 v7, 0x64

    iput-wide v7, p0, Landroid/widget/ListView;->mCheckForPressAnimationDelay:J

    .line 4268
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/ListView;->shouldHideIntroAnimatedViews:Z

    .line 4287
    new-instance v7, Landroid/widget/ListView$2;

    invoke-direct {v7, p0}, Landroid/widget/ListView$2;-><init>(Landroid/widget/ListView;)V

    iput-object v7, p0, Landroid/widget/ListView;->mIntroAnimationRunnable:Ljava/lang/Runnable;

    .line 4310
    new-instance v7, Landroid/widget/ListView$3;

    invoke-direct {v7, p0}, Landroid/widget/ListView$3;-><init>(Landroid/widget/ListView;)V

    iput-object v7, p0, Landroid/widget/ListView;->mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

    .line 295
    sget-object v7, Lcom/android/internal/R$styleable;->ListView:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 298
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 300
    .local v3, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_c3

    .line 301
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    invoke-direct {v7, p1, v8, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 305
    :cond_c3
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 306
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_cd

    .line 308
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :cond_cd
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 313
    .local v5, osHeader:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_d7

    .line 314
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :cond_d7
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 319
    .local v4, osFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_e1

    .line 320
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 324
    :cond_e1
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 326
    .local v2, dividerHeight:I
    if-eqz v2, :cond_ec

    .line 327
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 330
    :cond_ec
    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 331
    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 333
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/widget/ListView;->mIntroAnimatedViews:Ljava/util/ArrayList;

    .line 341
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ListView;->mShouldTriggerAnimation:Z

    .line 345
    new-instance v7, Landroid/view/GestureDetector;

    invoke-direct {v7, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Landroid/widget/ListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "common_rearrange_frame_bottom"

    const-string v9, "drawable"

    const-string v10, "com.htc"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 348
    .local v6, resID:I
    if-eqz v6, :cond_12a

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ListView;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    .line 352
    :cond_12a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "common_list_shadow"

    const-string v9, "drawable"

    const-string v10, "com.htc"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 353
    if-eqz v6, :cond_14c

    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    .line 355
    iget-object v7, p0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iput v7, p0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    .line 359
    :cond_14c
    const/4 v7, 0x1

    const/16 v8, 0x5dd

    const-string v9, " LISTVIEW_PRESS "

    invoke-static {v7, p0, v8, v9}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ListView;->mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 361
    const/4 v7, 0x1

    const/16 v8, 0x5dd

    const-string v9, " LISTVIEW_RELEASE "

    invoke-static {v7, p0, v8, v9}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 364
    const/4 v7, 0x1

    const/16 v8, 0x5dd

    const-string v9, " LISTVIEW_BOUNCING "

    invoke-static {v7, p0, v8, v9}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ListView;->mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 366
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/ListView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/widget/ListView;->mIntroAnimatedViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1101(Landroid/widget/ListView;Landroid/view/View;IJ)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/widget/ListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/widget/ListView;->doAnimFinalize()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/ListView;Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/ListView;->get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/ListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/widget/ListView;->mIntroAnimationType:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/ListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/widget/ListView;->playDefaultIntroAnimation()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/ListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/widget/ListView;->playDownIntroAnimation()V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/ListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/widget/ListView;->playUpIntroAnimation()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/ListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/widget/ListView;->playRightIntroAnimation()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/ListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/widget/ListView;->playLeftIntroAnimation()V

    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 3193
    add-int/lit8 v2, p2, -0x1

    .line 3194
    .local v2, abovePosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3195
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3196
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3198
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 3202
    add-int/lit8 v2, p2, 0x1

    .line 3203
    .local v2, belowPosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3204
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3205
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3207
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .registers 7

    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 384
    .local v1, childCount:I
    if-lez v1, :cond_29

    .line 387
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_2a

    .line 390
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 392
    .local v2, delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eqz v3, :cond_20

    .line 395
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 397
    :cond_20
    if-gez v2, :cond_23

    .line 399
    const/4 v2, 0x0

    .line 417
    :cond_23
    :goto_23
    if-eqz v2, :cond_29

    .line 418
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 421
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_29
    return-void

    .line 403
    :cond_2a
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 404
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 406
    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v4, :cond_49

    .line 409
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 412
    :cond_49
    if-lez v2, :cond_23

    .line 413
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private amountToScroll(II)I
    .registers 15
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2808
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2809
    .local v4, listBottom:I
    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2811
    .local v5, listTop:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2813
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_72

    .line 2814
    add-int/lit8 v3, v7, -0x1

    .line 2815
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_1f

    .line 2816
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2819
    :cond_1f
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2820
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2822
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2823
    .local v1, goalBottom:I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_33

    .line 2824
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2827
    :cond_33
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_3b

    .line 2829
    const/4 v10, 0x0

    .line 2875
    .end local v1           #goalBottom:I
    :goto_3a
    return v10

    .line 2832
    .restart local v1       #goalBottom:I
    :cond_3b
    const/4 v10, -0x1

    if-eq p2, v10, :cond_4c

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_4c

    .line 2835
    const/4 v10, 0x0

    goto :goto_3a

    .line 2838
    :cond_4c
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2840
    .local v0, amountToScroll:I
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v10, v11, :cond_69

    .line 2842
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2843
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2846
    .end local v6           #max:I
    :cond_69
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_3a

    .line 2848
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_72
    const/4 v3, 0x0

    .line 2849
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_7a

    .line 2850
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2852
    :cond_7a
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2853
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2854
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2855
    .local v2, goalTop:I
    if-lez v8, :cond_8a

    .line 2856
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2858
    :cond_8a
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_92

    .line 2860
    const/4 v10, 0x0

    goto :goto_3a

    .line 2863
    :cond_92
    const/4 v10, -0x1

    if-eq p2, v10, :cond_a2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_a2

    .line 2866
    const/4 v10, 0x0

    goto :goto_3a

    .line 2869
    :cond_a2
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2870
    .restart local v0       #amountToScroll:I
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v10, :cond_bb

    .line 2872
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2873
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2875
    .end local v6           #max:I
    :cond_bb
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_3a
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .registers 8
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 3067
    const/4 v0, 0x0

    .line 3068
    .local v0, amountToScroll:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3069
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3070
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2b

    .line 3071
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2a

    .line 3072
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 3073
    if-lez p3, :cond_2a

    .line 3074
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3086
    :cond_2a
    :goto_2a
    return v0

    .line 3078
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3079
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_2a

    .line 3080
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3081
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_2a

    .line 3082
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2a
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .registers 19
    .parameter "direction"

    .prologue
    .line 2965
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 2967
    .local v11, selectedView:Landroid/view/View;
    if-eqz v11, :cond_4a

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_4a

    .line 2968
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 2969
    .local v8, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2994
    .end local v8           #oldFocus:Landroid/view/View;
    .local v7, newFocus:Landroid/view/View;
    :goto_1c
    if-eqz v7, :cond_113

    .line 2995
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 2999
    .local v9, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_d9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v9, v14, :cond_d9

    .line 3000
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 3001
    .local v10, selectablePosition:I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_d9

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_40

    if-lt v10, v9, :cond_48

    :cond_40
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_d9

    if-le v10, v9, :cond_d9

    .line 3004
    :cond_48
    const/4 v14, 0x0

    .line 3026
    .end local v9           #positionOfNewFocus:I
    .end local v10           #selectablePosition:I
    :goto_49
    return-object v14

    .line 2971
    .end local v7           #newFocus:Landroid/view/View;
    :cond_4a
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_94

    .line 2972
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v14, :cond_8e

    const/4 v12, 0x1

    .line 2973
    .local v12, topFadingEdgeShowing:Z
    :goto_57
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_90

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_63
    add-int v5, v15, v14

    .line 2975
    .local v5, listTop:I
    if-eqz v11, :cond_92

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_92

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 2979
    .local v13, ySearchPoint:I
    :goto_71
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2991
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :goto_7d
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7       #newFocus:Landroid/view/View;
    goto :goto_1c

    .line 2972
    .end local v7           #newFocus:Landroid/view/View;
    .end local v13           #ySearchPoint:I
    :cond_8e
    const/4 v12, 0x0

    goto :goto_57

    .line 2973
    .restart local v12       #topFadingEdgeShowing:Z
    :cond_90
    const/4 v14, 0x0

    goto :goto_63

    .restart local v5       #listTop:I
    :cond_92
    move v13, v5

    .line 2975
    goto :goto_71

    .line 2981
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :cond_94
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v14, v15, :cond_d3

    const/4 v2, 0x1

    .line 2983
    .local v2, bottomFadingEdgeShowing:Z
    :goto_a6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_d5

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_b8
    sub-int v4, v15, v14

    .line 2985
    .local v4, listBottom:I
    if-eqz v11, :cond_d7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_d7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 2989
    .restart local v13       #ySearchPoint:I
    :goto_c6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7d

    .line 2981
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .end local v13           #ySearchPoint:I
    :cond_d3
    const/4 v2, 0x0

    goto :goto_a6

    .line 2983
    .restart local v2       #bottomFadingEdgeShowing:Z
    :cond_d5
    const/4 v14, 0x0

    goto :goto_b8

    .restart local v4       #listBottom:I
    :cond_d7
    move v13, v4

    .line 2985
    goto :goto_c6

    .line 3008
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .restart local v7       #newFocus:Landroid/view/View;
    .restart local v9       #positionOfNewFocus:I
    :cond_d9
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 3010
    .local v3, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v6

    .line 3011
    .local v6, maxScrollAmount:I
    if-ge v3, v6, :cond_f9

    .line 3013
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3014
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3015
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_49

    .line 3016
    :cond_f9
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_113

    .line 3021
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3022
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3023
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_49

    .line 3026
    .end local v3           #focusScroll:I
    .end local v6           #maxScrollAmount:I
    .end local v9           #positionOfNewFocus:I
    :cond_113
    const/4 v14, 0x0

    goto/16 :goto_49
.end method

.method private arrowScrollImpl(I)Z
    .registers 13
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2592
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_a

    .line 2666
    :cond_9
    :goto_9
    return v9

    .line 2596
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2597
    .local v6, selectedView:Landroid/view/View;
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2599
    .local v5, selectedPos:I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2600
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2603
    .local v0, amountToScroll:I
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_aa

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2604
    .local v1, focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_20
    if-eqz v1, :cond_2a

    .line 2605
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2606
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2609
    :cond_2a
    if-eqz v1, :cond_ad

    move v3, v8

    .line 2610
    .local v3, needToRedraw:Z
    :goto_2d
    if-eq v4, v10, :cond_53

    .line 2611
    if-eqz v1, :cond_b0

    move v7, v8

    :goto_32
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2612
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2613
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2614
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2615
    move v5, v4

    .line 2616
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_4f

    if-nez v1, :cond_4f

    .line 2619
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2620
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_4f

    .line 2621
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2624
    .end local v2           #focused:Landroid/view/View;
    :cond_4f
    const/4 v3, 0x1

    .line 2625
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2628
    :cond_53
    if-lez v0, :cond_5d

    .line 2629
    const/16 v7, 0x21

    if-ne p1, v7, :cond_b2

    .end local v0           #amountToScroll:I
    :goto_59
    invoke-direct {p0, v0}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2630
    const/4 v3, 0x1

    .line 2635
    :cond_5d
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7e

    if-nez v1, :cond_7e

    if-eqz v6, :cond_7e

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 2637
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2638
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7e

    .line 2639
    :cond_7b
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2644
    .end local v2           #focused:Landroid/view/View;
    :cond_7e
    if-ne v4, v10, :cond_8e

    if-eqz v6, :cond_8e

    invoke-direct {p0, v6, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8e

    .line 2646
    const/4 v6, 0x0

    .line 2647
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2651
    iput v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2654
    :cond_8e
    if-eqz v3, :cond_9

    .line 2655
    if-eqz v6, :cond_9b

    .line 2656
    invoke-virtual {p0, v5, v6}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 2657
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2659
    :cond_9b
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a4

    .line 2660
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2662
    :cond_a4
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2663
    goto/16 :goto_9

    .line 2603
    .end local v1           #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    .restart local v0       #amountToScroll:I
    :cond_aa
    const/4 v1, 0x0

    goto/16 :goto_20

    .restart local v1       #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_ad
    move v3, v9

    .line 2609
    goto/16 :goto_2d

    .restart local v3       #needToRedraw:Z
    :cond_b0
    move v7, v9

    .line 2611
    goto :goto_32

    .line 2629
    :cond_b2
    neg-int v0, v0

    goto :goto_59
.end method

.method private cancelPressAnimation()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f80

    .line 4644
    iget-object v3, p0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    if-eqz v3, :cond_b

    .line 4645
    iget-object v3, p0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4647
    :cond_b
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget-object v3, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 4648
    iget-object v3, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4649
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 4650
    .local v0, anim:Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_2e

    .line 4651
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 4652
    iget-object v3, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4654
    :cond_2e
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 4655
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 4647
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4657
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    .end local v2           #v:Landroid/view/View;
    :cond_37
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/ListView;->mPressedView:Landroid/view/View;

    .line 4658
    iget-object v3, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4659
    iget-object v3, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 4660
    return-void
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1f

    .line 693
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 695
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v1, :cond_1f

    .line 696
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 697
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 698
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_1c

    .line 699
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 695
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 703
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1f
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2284
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsAttached:Z

    if-nez v5, :cond_11

    :cond_f
    move v4, v3

    .line 2431
    :cond_10
    :goto_10
    return v4

    .line 2288
    :cond_11
    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v5, :cond_18

    .line 2289
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2292
    :cond_18
    const/4 v2, 0x0

    .line 2293
    .local v2, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2295
    .local v0, action:I
    if-eq v0, v4, :cond_22

    .line 2296
    sparse-switch p1, :sswitch_data_19e

    .line 2412
    :cond_22
    :goto_22
    if-nez v2, :cond_10

    .line 2416
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 2420
    packed-switch v0, :pswitch_data_1cc

    move v4, v3

    .line 2431
    goto :goto_10

    .line 2298
    :sswitch_2f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 2299
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2300
    if-nez v2, :cond_22

    move v1, p2

    .line 2301
    .end local p2
    .local v1, count:I
    :goto_3c
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_22

    .line 2302
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2303
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_3c

    .line 2309
    .end local v1           #count:I
    .restart local p2
    :cond_49
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2310
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_5b

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_5d

    :cond_5b
    move v2, v4

    :goto_5c
    goto :goto_22

    :cond_5d
    move v2, v3

    goto :goto_5c

    .line 2315
    :sswitch_5f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 2316
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2317
    if-nez v2, :cond_22

    move v1, p2

    .line 2318
    .end local p2
    .restart local v1       #count:I
    :goto_6c
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_22

    .line 2319
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2320
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_6c

    .line 2326
    .end local v1           #count:I
    .restart local p2
    :cond_79
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2327
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_8b

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_8d

    :cond_8b
    move v2, v4

    :goto_8c
    goto :goto_22

    :cond_8d
    move v2, v3

    goto :goto_8c

    .line 2332
    :sswitch_8f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2333
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto :goto_22

    .line 2338
    :sswitch_9c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2339
    const/16 v5, 0x42

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_22

    .line 2345
    :sswitch_aa
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2346
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2347
    if-nez v2, :cond_22

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_22

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_22

    .line 2349
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2350
    const/4 v2, 0x1

    goto/16 :goto_22

    .line 2356
    :sswitch_c8
    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_d4

    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_22

    .line 2357
    :cond_d4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 2358
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_e6

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_ea

    :cond_e6
    move v2, v4

    .line 2362
    :cond_e7
    :goto_e7
    const/4 v2, 0x1

    goto/16 :goto_22

    :cond_ea
    move v2, v3

    .line 2358
    goto :goto_e7

    .line 2359
    :cond_ec
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 2360
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_fe

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_100

    :cond_fe
    move v2, v4

    :goto_ff
    goto :goto_e7

    :cond_100
    move v2, v3

    goto :goto_ff

    .line 2367
    :sswitch_102
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_119

    .line 2368
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_114

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_117

    :cond_114
    move v2, v4

    :goto_115
    goto/16 :goto_22

    :cond_117
    move v2, v3

    goto :goto_115

    .line 2369
    :cond_119
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2370
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12b

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_12e

    :cond_12b
    move v2, v4

    :goto_12c
    goto/16 :goto_22

    :cond_12e
    move v2, v3

    goto :goto_12c

    .line 2375
    :sswitch_130
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_147

    .line 2376
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_142

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_145

    :cond_142
    move v2, v4

    :goto_143
    goto/16 :goto_22

    :cond_145
    move v2, v3

    goto :goto_143

    .line 2377
    :cond_147
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2378
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_159

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_15c

    :cond_159
    move v2, v4

    :goto_15a
    goto/16 :goto_22

    :cond_15c
    move v2, v3

    goto :goto_15a

    .line 2383
    :sswitch_15e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2384
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_170

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_173

    :cond_170
    move v2, v4

    :goto_171
    goto/16 :goto_22

    :cond_173
    move v2, v3

    goto :goto_171

    .line 2389
    :sswitch_175
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2390
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_187

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_18a

    :cond_187
    move v2, v4

    :goto_188
    goto/16 :goto_22

    :cond_18a
    move v2, v3

    goto :goto_188

    .line 2422
    :pswitch_18c
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_10

    .line 2425
    :pswitch_192
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_10

    .line 2428
    :pswitch_198
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_10

    .line 2296
    :sswitch_data_19e
    .sparse-switch
        0x13 -> :sswitch_2f
        0x14 -> :sswitch_5f
        0x15 -> :sswitch_8f
        0x16 -> :sswitch_9c
        0x17 -> :sswitch_aa
        0x3e -> :sswitch_c8
        0x42 -> :sswitch_aa
        0x5c -> :sswitch_102
        0x5d -> :sswitch_130
        0x7a -> :sswitch_15e
        0x7b -> :sswitch_175
    .end sparse-switch

    .line 2420
    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_18c
        :pswitch_192
        :pswitch_198
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .registers 12
    .parameter "childCount"

    .prologue
    .line 1597
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1598
    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_5e

    if-lez p1, :cond_5e

    .line 1601
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1604
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1607
    .local v4, lastBottom:I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1611
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1612
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1613
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1617
    .local v3, firstTop:I
    if-lez v0, :cond_5e

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v7, :cond_39

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_5e

    .line 1618
    :cond_39
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_46

    .line 1620
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1623
    :cond_46
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1624
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_5e

    .line 1627
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1629
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1634
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_5e
    return-void
.end method

.method private correctTooLow(I)V
    .registers 13
    .parameter "childCount"

    .prologue
    .line 1646
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_5e

    if-lez p1, :cond_5e

    .line 1649
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1652
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1655
    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1658
    .local v6, start:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1662
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1663
    .local v7, topOffset:I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1664
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1665
    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1669
    .local v5, lastPosition:I
    if-lez v7, :cond_5e

    .line 1670
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_39

    if-le v3, v0, :cond_5f

    .line 1671
    :cond_39
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_45

    .line 1673
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1676
    :cond_45
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1677
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_5e

    .line 1680
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1682
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1689
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_5e
    :goto_5e
    return-void

    .line 1684
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_5f
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_5e

    .line 1685
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_5e
.end method

.method private distanceToView(Landroid/view/View;)I
    .registers 6
    .parameter "descendant"

    .prologue
    .line 3097
    const/4 v0, 0x0

    .line 3098
    .local v0, distance:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3099
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3100
    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3101
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2b

    .line 3102
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 3106
    :cond_2a
    :goto_2a
    return v0

    .line 3103
    :cond_2b
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_2a

    .line 3104
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_2a
.end method

.method private doAnimFinalize()V
    .registers 5

    .prologue
    .line 4131
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 4132
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 4133
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_10

    .line 4132
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4135
    :cond_10
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_d

    .line 4138
    :cond_19
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ListView;->mInBouncing:Z

    .line 4139
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 4140
    return-void
.end method

.method private drawPressShadow(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const-wide v8, 0x3fef0a3d70a3d70aL

    .line 4813
    iget-object v6, p0, Landroid/widget/ListView;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_a

    .line 4835
    :cond_9
    return-void

    .line 4815
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 4816
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v1, :cond_9

    iget-boolean v6, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v6, :cond_9

    .line 4817
    iget-boolean v6, p0, Landroid/widget/ListView;->isIgnoreFooterViewInBouncing:Z

    if-eqz v6, :cond_1d

    add-int/lit8 v6, v1, -0x1

    if-eq v2, v6, :cond_9

    .line 4820
    :cond_1d
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4821
    .local v0, animatedView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 4822
    .local v3, scaleX:F
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v4

    .line 4824
    .local v4, scaleY:F
    float-to-double v6, v3

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_33

    float-to-double v6, v4

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5a

    .line 4825
    :cond_33
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 4826
    .local v5, shadowBounds:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 4827
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 4828
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 4829
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 4831
    iget-object v6, p0, Landroid/widget/ListView;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4832
    iget-object v6, p0, Landroid/widget/ListView;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4816
    .end local v5           #shadowBounds:Landroid/graphics/Rect;
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .registers 6
    .parameter "sel"
    .parameter "position"

    .prologue
    .line 963
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 964
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_1e

    .line 965
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 966
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 967
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 973
    :goto_1d
    return-void

    .line 969
    :cond_1e
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 970
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 971
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_1d
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 12
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 846
    const/4 v8, 0x0

    .line 848
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int v7, v0, v1

    .line 849
    .local v7, end:I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_15

    .line 850
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 853
    :cond_15
    :goto_15
    if-ge p2, v7, :cond_3b

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v0, :cond_3b

    .line 855
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_39

    move v5, v3

    .line 856
    .local v5, selected:Z
    :goto_20
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 858
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 859
    if-eqz v5, :cond_36

    .line 860
    move-object v8, v6

    .line 862
    :cond_36
    add-int/lit8 p1, p1, 0x1

    .line 863
    goto :goto_15

    .line 855
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_39
    const/4 v5, 0x0

    goto :goto_20

    .line 865
    :cond_3b
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .registers 12
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 931
    sub-int v6, p2, p1

    .line 933
    .local v6, height:I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 935
    .local v1, position:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 937
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 939
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 940
    .local v8, selHeight:I
    if-gt v8, v6, :cond_21

    .line 941
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 944
    :cond_21
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 946
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_30

    .line 947
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 952
    :goto_2f
    return-object v7

    .line 949
    :cond_30
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_2f
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 18
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 987
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 988
    .local v8, fadingEdgeLength:I
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 992
    .local v2, selectedPosition:I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 994
    .local v13, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 997
    .local v7, bottomSelectionPixel:I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1001
    .local v10, sel:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_47

    .line 1004
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 1008
    .local v11, spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 1009
    .local v12, spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1012
    .local v9, offset:I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1028
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_38
    :goto_38
    invoke-direct {p0, v10, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1030
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_61

    .line 1031
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1036
    :goto_46
    return-object v10

    .line 1013
    :cond_47
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_38

    .line 1016
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 1020
    .restart local v11       #spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 1021
    .restart local v12       #spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1024
    .restart local v9       #offset:I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_38

    .line 1033
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_61
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_46
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 4
    .parameter "nextTop"

    .prologue
    .line 911
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 912
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 913
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 914
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 916
    :cond_1d
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1549
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_3e

    move v5, v3

    .line 1550
    .local v5, tempIsSelected:Z
    :goto_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1552
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1557
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1558
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_40

    .line 1559
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1561
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1562
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1563
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1564
    .local v8, childCount:I
    if-lez v8, :cond_3b

    .line 1565
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1578
    :cond_3b
    :goto_3b
    if-eqz v5, :cond_63

    .line 1583
    .end local v10           #temp:Landroid/view/View;
    :goto_3d
    return-object v10

    .line 1549
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v9           #dividerHeight:I
    :cond_3e
    const/4 v5, 0x0

    goto :goto_6

    .line 1568
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_40
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1570
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1571
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1572
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1573
    .restart local v8       #childCount:I
    if-lez v8, :cond_3b

    .line 1574
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_3b

    .line 1580
    :cond_63
    if-eqz v6, :cond_67

    move-object v10, v6

    .line 1581
    goto :goto_3d

    :cond_67
    move-object v10, v7

    .line 1583
    goto :goto_3d
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 12
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 879
    const/4 v8, 0x0

    .line 881
    .local v8, selectedView:Landroid/view/View;
    const/4 v7, 0x0

    .line 882
    .local v7, end:I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_f

    .line 883
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 886
    :cond_f
    :goto_f
    if-le p2, v7, :cond_33

    if-ltz p1, :cond_33

    .line 888
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_31

    const/4 v5, 0x1

    .line 889
    .local v5, selected:Z
    :goto_18
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 890
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 891
    if-eqz v5, :cond_2e

    .line 892
    move-object v8, v6

    .line 894
    :cond_2e
    add-int/lit8 p1, p1, -0x1

    .line 895
    goto :goto_f

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_31
    move v5, v3

    .line 888
    goto :goto_18

    .line 897
    :cond_33
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 899
    return-object v8
.end method

.method private get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .registers 15
    .parameter "animatedView"

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4573
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    .line 4574
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    .line 4580
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .line 4581
    .local v6, width:F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 4583
    .local v0, height:F
    iget v7, p0, Landroid/widget/ListView;->mScaleYDifference:F

    sub-float v7, v0, v7

    div-float v5, v7, v0

    .line 4584
    .local v5, scaleY:F
    iget v7, p0, Landroid/widget/ListView;->mScaleXDifference:F

    sub-float v7, v6, v7

    div-float v4, v7, v6

    .line 4592
    .local v4, scaleX:F
    const-string/jumbo v7, "scaleX"

    new-array v8, v11, [F

    aput v12, v8, v9

    aput v4, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 4593
    .local v2, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v7, "scaleY"

    new-array v8, v11, [F

    aput v12, v8, v9

    aput v5, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 4594
    .local v3, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    new-array v7, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v9

    aput-object v3, v7, v10

    invoke-static {p1, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4595
    .local v1, pressAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x64

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4596
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4597
    return-object v1
.end method

.method private get2DReleaseAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .registers 15
    .parameter "animatedView"
    .parameter "onlyRelease"

    .prologue
    .line 4609
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .line 4610
    .local v7, width:F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v1, v8

    .line 4612
    .local v1, height:F
    iget v8, p0, Landroid/widget/ListView;->mScaleYDifference:F

    sub-float v8, v1, v8

    div-float v6, v8, v1

    .line 4613
    .local v6, scaleY:F
    iget v8, p0, Landroid/widget/ListView;->mScaleXDifference:F

    sub-float v8, v7, v8

    div-float v5, v8, v7

    .line 4623
    .local v5, scaleX:F
    const/4 v2, 0x0

    .line 4624
    .local v2, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x0

    .line 4625
    .local v3, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    iget v8, p0, Landroid/widget/ListView;->mReleaseAnimationDuration:I

    add-int/lit8 v0, v8, 0x64

    .line 4626
    .local v0, duration:I
    if-eqz p2, :cond_5e

    .line 4627
    const-string/jumbo v8, "scaleX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 4628
    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 4629
    iget v0, p0, Landroid/widget/ListView;->mReleaseAnimationDuration:I

    .line 4634
    :goto_44
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {p1, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 4635
    .local v4, releaseAnimation:Landroid/animation/ObjectAnimator;
    int-to-long v8, v0

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4636
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4637
    return-object v4

    .line 4631
    .end local v4           #releaseAnimation:Landroid/animation/ObjectAnimator;
    :cond_5e
    const-string/jumbo v8, "scaleX"

    const/4 v9, 0x3

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    const/4 v10, 0x1

    aput v5, v9, v10

    const/4 v10, 0x2

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 4632
    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x3

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    const/4 v10, 0x1

    aput v6, v9, v10

    const/4 v10, 0x2

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    goto :goto_44
.end method

.method private getArrowScrollPreviewLength()I
    .registers 3

    .prologue
    .line 2792
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .registers 6
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1049
    move v0, p1

    .line 1050
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_8

    .line 1051
    sub-int/2addr v0, p2

    .line 1053
    :cond_8
    return v0
.end method

.method private getIntroAnimatorListener(I)Landroid/animation/AnimatorListenerAdapter;
    .registers 4
    .parameter "index"

    .prologue
    .line 4359
    const/4 v0, 0x0

    .line 4360
    .local v0, listener:Landroid/animation/AnimatorListenerAdapter;
    iget-object v1, p0, Landroid/widget/ListView;->mIntroAnimatorListenerPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_11

    .line 4361
    iget-object v1, p0, Landroid/widget/ListView;->mIntroAnimatorListenerPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #listener:Landroid/animation/AnimatorListenerAdapter;
    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    .line 4362
    .restart local v0       #listener:Landroid/animation/AnimatorListenerAdapter;
    :cond_11
    return-object v0
.end method

.method private getTopSelectionPixel(III)I
    .registers 5
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1066
    move v0, p1

    .line 1067
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_4

    .line 1068
    add-int/2addr v0, p2

    .line 1070
    :cond_4
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .registers 9
    .parameter "direction"

    .prologue
    .line 2527
    const/16 v5, 0x11

    if-eq p1, v5, :cond_10

    const/16 v5, 0x42

    if-eq p1, v5, :cond_10

    .line 2528
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2532
    :cond_10
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2533
    .local v3, numChildren:I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_6d

    if-lez v3, :cond_6d

    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6d

    .line 2534
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2535
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_6d

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_6d

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_6d

    .line 2538
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2539
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2541
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_58

    .line 2543
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2544
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2545
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2546
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 2547
    const/4 v5, 0x1

    .line 2561
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_57
    return v5

    .line 2554
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_58
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2556
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_6d

    .line 2557
    invoke-direct {p0, v1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_57

    .line 2561
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_6d
    const/4 v5, 0x0

    goto :goto_57
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .registers 15
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2684
    const/4 v8, -0x1

    if-ne p3, v8, :cond_c

    .line 2685
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2695
    :cond_c
    const/4 v5, 0x0

    .line 2696
    .local v5, topSelected:Z
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2697
    .local v4, selectedIndex:I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2698
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_42

    .line 2699
    move v7, v2

    .line 2700
    .local v7, topViewIndex:I
    move v1, v4

    .line 2701
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2702
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2703
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2711
    :goto_23
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2714
    .local v3, numChildren:I
    if-eqz v6, :cond_34

    .line 2715
    if-nez p4, :cond_4a

    if-eqz v5, :cond_4a

    const/4 v8, 0x1

    :goto_2e
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2716
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2720
    :cond_34
    if-eqz v0, :cond_41

    .line 2721
    if-nez p4, :cond_4c

    if-nez v5, :cond_4c

    const/4 v8, 0x1

    :goto_3b
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2722
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2724
    :cond_41
    return-void

    .line 2705
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_42
    move v7, v4

    .line 2706
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2707
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2708
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_23

    .line 2715
    .restart local v3       #numChildren:I
    :cond_4a
    const/4 v8, 0x0

    goto :goto_2e

    .line 2721
    :cond_4c
    const/4 v8, 0x0

    goto :goto_3b
.end method

.method private hideIntroAnimatedViews(Z)V
    .registers 5
    .parameter "isCacheView"

    .prologue
    .line 4270
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 4271
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4272
    .local v0, animatedView:Landroid/view/View;
    if-eqz p1, :cond_12

    iget-object v2, p0, Landroid/widget/ListView;->mIntroAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4273
    :cond_12
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 4270
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4275
    .end local v0           #animatedView:Landroid/view/View;
    :cond_19
    return-void
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .registers 9
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1951
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1952
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1953
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v4, :cond_19

    .line 1954
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_16

    move v5, v6

    .line 1965
    :goto_15
    return v5

    .line 1953
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1958
    :cond_19
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1959
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1960
    .local v3, numFooters:I
    const/4 v2, 0x0

    :goto_20
    if-ge v2, v3, :cond_31

    .line 1961
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2e

    move v5, v6

    .line 1962
    goto :goto_15

    .line 1960
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1965
    :cond_31
    const/4 v5, 0x0

    goto :goto_15
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 3049
    if-ne p1, p2, :cond_4

    .line 3054
    :cond_3
    :goto_3
    return v1

    .line 3053
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3054
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .registers 10
    .parameter "direction"

    .prologue
    const/4 v6, -0x1

    .line 2912
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2913
    .local v1, firstPosition:I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_3e

    .line 2914
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_19

    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2917
    .local v5, startPos:I
    :goto_f
    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_1b

    move v4, v6

    .line 2952
    :cond_18
    :goto_18
    return v4

    .end local v5           #startPos:I
    :cond_19
    move v5, v1

    .line 2914
    goto :goto_f

    .line 2920
    .restart local v5       #startPos:I
    :cond_1b
    if-ge v5, v1, :cond_1e

    .line 2921
    move v5, v1

    .line 2924
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 2925
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2926
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_27
    if-gt v4, v3, :cond_80

    .line 2927
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3b

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_18

    .line 2926
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 2933
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_3e
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2934
    .local v2, last:I
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_59

    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2937
    .restart local v5       #startPos:I
    :goto_4d
    if-ltz v5, :cond_57

    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_61

    :cond_57
    move v4, v6

    .line 2938
    goto :goto_18

    .line 2934
    .end local v5           #startPos:I
    :cond_59
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_4d

    .line 2940
    .restart local v5       #startPos:I
    :cond_61
    if-le v5, v2, :cond_64

    .line 2941
    move v5, v2

    .line 2944
    :cond_64
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2945
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_69
    if-lt v4, v1, :cond_80

    .line 2946
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_7d

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_18

    .line 2945
    :cond_7d
    add-int/lit8 v4, v4, -0x1

    goto :goto_69

    .end local v2           #last:I
    :cond_80
    move v4, v6

    .line 2952
    goto :goto_18
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 1986
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_18

    .line 1988
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1989
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_18

    .line 1997
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 2009
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_17
    return-object v8

    .line 2004
    .end local v8           #child:Landroid/view/View;
    :cond_18
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2007
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

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 2009
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_17
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .registers 8
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2734
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2735
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2736
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_24

    .line 2738
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2741
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2742
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_18
    if-ge v1, p3, :cond_24

    .line 2743
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2742
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2746
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_24
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .registers 10
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2754
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2755
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_e

    .line 2756
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2761
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    iget v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2763
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2765
    .local v2, lpHeight:I
    if-lez v2, :cond_2d

    .line 2766
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2770
    .local v0, childHeightSpec:I
    :goto_29
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2771
    return-void

    .line 2768
    .end local v0           #childHeightSpec:I
    :cond_2d
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_29
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .registers 11
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1347
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1348
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_13

    .line 1349
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1351
    .restart local v3       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1353
    :cond_13
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1354
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1356
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1358
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1360
    .local v2, lpHeight:I
    if-lez v2, :cond_3b

    .line 1361
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1365
    .local v0, childHeightSpec:I
    :goto_37
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1366
    return-void

    .line 1363
    .end local v0           #childHeightSpec:I
    :cond_3b
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_37
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .registers 25
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 1112
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 1113
    .local v10, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1117
    .local v15, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 1119
    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 1122
    .local v8, bottomSelectionPixel:I
    if-lez p3, :cond_bd

    .line 1144
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1147
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1150
    .local v9, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1154
    .local v14, sel:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_6f

    .line 1157
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1160
    .local v16, spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1163
    .local v17, spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1164
    .local v11, halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1165
    .local v13, offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1168
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1170
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1174
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_6f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_99

    .line 1175
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1176
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1177
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1258
    .end local v9           #dividerHeight:I
    :goto_98
    return-object v14

    .line 1179
    .restart local v9       #dividerHeight:I
    :cond_99
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1180
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1181
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_98

    .line 1183
    .end local v9           #dividerHeight:I
    .end local v14           #sel:Landroid/view/View;
    :cond_bd
    if-gez p3, :cond_111

    .line 1204
    if-eqz p2, :cond_fd

    .line 1206
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1216
    .restart local v14       #sel:Landroid/view/View;
    :goto_d4
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_f7

    .line 1218
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1221
    .restart local v16       #spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1224
    .restart local v17       #spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1225
    .restart local v11       #halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1226
    .restart local v13       #offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1229
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1233
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_f7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_98

    .line 1211
    .end local v14           #sel:Landroid/view/View;
    :cond_fd
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14       #sel:Landroid/view/View;
    goto :goto_d4

    .line 1236
    .end local v14           #sel:Landroid/view/View;
    :cond_111
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1241
    .local v4, oldTop:I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1244
    .restart local v14       #sel:Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_139

    .line 1247
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1248
    .local v12, newBottom:I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_139

    .line 1250
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1255
    .end local v12           #newBottom:I
    :cond_139
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_98
.end method

.method private playDefaultIntroAnimation()V
    .registers 21

    .prologue
    .line 4366
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 4368
    .local v3, childCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isIntroAnimationEnabled()Z

    move-result v16

    if-eqz v16, :cond_167

    .line 4370
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4371
    const-string/jumbo v16, "scaleX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_168

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 4372
    .local v11, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v16, "scaleY"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_170

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 4373
    .local v12, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    sget-object v16, Landroid/widget/ListView;->INTRO_ANIMATION_DURATIONS:[I

    const/16 v17, 0x0

    aget v7, v16, v17

    .line 4374
    .local v7, initialDuration:I
    const/4 v4, 0x0

    .line 4375
    .local v4, delay:I
    const/16 v5, 0x32

    .line 4376
    .local v5, delayDelta:I
    const/4 v10, 0x0

    .line 4377
    .local v10, originY:F
    const/high16 v14, -0x3d4c

    .line 4378
    .local v14, x:F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_46
    if-ge v6, v3, :cond_147

    .line 4379
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4380
    .local v2, child:Landroid/view/View;
    const/16 v16, 0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4381
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotY(F)V

    .line 4382
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_13c

    .line 4383
    const/high16 v16, -0x3d4c

    cmpl-float v16, v14, v16

    if-ltz v16, :cond_78

    const/high16 v14, -0x3d10

    .line 4384
    :cond_78
    const/high16 v16, 0x4170

    add-float v14, v14, v16

    .line 4385
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0xa

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v10, v0

    .line 4388
    :goto_8b
    const-string/jumbo v16, "rotationX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v14, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 4389
    .local v13, rotateX:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v16, "y"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 4390
    .local v15, y:Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    const/16 v17, 0x1

    aput-object v12, v16, v17

    const/16 v17, 0x2

    aput-object v15, v16, v17

    const/16 v17, 0x3

    aput-object v13, v16, v17

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 4391
    .local v8, introAnimation:Landroid/animation/ObjectAnimator;
    int-to-long v0, v7

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4392
    int-to-long v0, v4

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 4393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDefaultIntroAnimationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4394
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/ListView;->getIntroAnimatorListener(I)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView$IntroAnimatorListener;

    .line 4395
    .local v9, listener:Landroid/widget/ListView$IntroAnimatorListener;
    if-nez v9, :cond_119

    .line 4396
    new-instance v9, Landroid/widget/ListView$IntroAnimatorListener;

    .end local v9           #listener:Landroid/widget/ListView$IntroAnimatorListener;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/ListView$IntroAnimatorListener;-><init>(Landroid/widget/ListView;)V

    .line 4397
    .restart local v9       #listener:Landroid/widget/ListView$IntroAnimatorListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mIntroAnimatorListenerPool:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4399
    :cond_119
    invoke-virtual {v9, v6}, Landroid/widget/ListView$IntroAnimatorListener;->setChildIndex(I)V

    .line 4400
    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4401
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4402
    add-int/lit8 v16, v6, 0x1

    mul-int v4, v5, v16

    .line 4378
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_46

    .line 4386
    .end local v8           #introAnimation:Landroid/animation/ObjectAnimator;
    .end local v9           #listener:Landroid/widget/ListView$IntroAnimatorListener;
    .end local v13           #rotateX:Landroid/animation/PropertyValuesHolder;
    .end local v15           #y:Landroid/animation/PropertyValuesHolder;
    :cond_13c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v10, v0

    goto/16 :goto_8b

    .line 4404
    .end local v2           #child:Landroid/view/View;
    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4405
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    if-eqz v16, :cond_167

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    .line 4407
    .end local v4           #delay:I
    .end local v5           #delayDelta:I
    .end local v6           #i:I
    .end local v7           #initialDuration:I
    .end local v10           #originY:F
    .end local v11           #pvhScaleX:Landroid/animation/PropertyValuesHolder;
    .end local v12           #pvhScaleY:Landroid/animation/PropertyValuesHolder;
    .end local v14           #x:F
    :cond_167
    return-void

    .line 4371
    :array_168
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 4372
    :array_170
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private playDownIntroAnimation()V
    .registers 16

    .prologue
    .line 4410
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 4411
    .local v1, childCount:I
    if-gtz v1, :cond_7

    .line 4436
    :cond_6
    :goto_6
    return-void

    .line 4412
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->isIntroAnimationEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 4414
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4415
    sget-object v11, Landroid/widget/ListView;->INTRO_ANIMATION_DURATIONS:[I

    const/4 v12, 0x1

    aget v5, v11, v12

    .line 4416
    .local v5, initialDuration:I
    const/4 v3, 0x0

    .line 4417
    .local v3, deltaTop:I
    move v9, v5

    .line 4419
    .local v9, time:I
    const-string/jumbo v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_9a

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 4420
    .local v8, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v7, 0x0

    .local v7, pos:F
    add-int/lit8 v11, v1, -0x1

    int-to-float v2, v11

    .line 4421
    .local v2, count:F
    add-int/lit8 v4, v1, -0x1

    .local v4, i:I
    :goto_2e
    if-ltz v4, :cond_87

    .line 4422
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4423
    .local v0, child:Landroid/view/View;
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4424
    const-string/jumbo v11, "y"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    int-to-float v14, v3

    aput v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 4425
    .local v10, y:Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-static {v0, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 4426
    .local v6, introAnimation:Landroid/animation/ObjectAnimator;
    iget-object v11, p0, Landroid/widget/ListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v6, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4427
    int-to-long v11, v9

    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4428
    int-to-float v7, v4

    .line 4429
    int-to-float v11, v9

    iget-object v12, p0, Landroid/widget/ListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v13, v2, v7

    div-float/2addr v13, v2

    invoke-virtual {v12, v13}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    add-int v9, v5, v11

    .line 4430
    iget-object v11, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v12, 0x1

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4431
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v3, v11

    .line 4421
    add-int/lit8 v4, v4, -0x1

    goto :goto_2e

    .line 4433
    .end local v0           #child:Landroid/view/View;
    .end local v6           #introAnimation:Landroid/animation/ObjectAnimator;
    .end local v10           #y:Landroid/animation/PropertyValuesHolder;
    :cond_87
    iget-object v11, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v12, p0, Landroid/widget/ListView;->mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4434
    iget-object v11, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_6

    iget-object v11, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_6

    .line 4419
    nop

    :array_9a
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private playLeftIntroAnimation()V
    .registers 16

    .prologue
    .line 4494
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 4495
    .local v1, childCount:I
    if-gtz v1, :cond_7

    .line 4517
    :cond_6
    :goto_6
    return-void

    .line 4496
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->isIntroAnimationEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4498
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4499
    sget-object v10, Landroid/widget/ListView;->INTRO_ANIMATION_DURATIONS:[I

    const/4 v11, 0x4

    aget v4, v10, v11

    .line 4500
    .local v4, initialDuration:I
    move v8, v4

    .line 4501
    .local v8, time:I
    const-string/jumbo v10, "scaleY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_9a

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 4502
    .local v7, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v6, 0x0

    .local v6, pos:F
    add-int/lit8 v10, v1, -0x1

    int-to-float v2, v10

    .line 4503
    .local v2, count:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2c
    if-ge v3, v1, :cond_88

    .line 4504
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4505
    .local v0, child:Landroid/view/View;
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4506
    const-string/jumbo v10, "x"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    aput v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v13

    int-to-float v13, v13

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 4507
    .local v9, x:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    invoke-static {v0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 4508
    .local v5, introAnimation:Landroid/animation/ObjectAnimator;
    iget-object v10, p0, Landroid/widget/ListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v5, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4509
    int-to-long v10, v8

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4510
    int-to-float v6, v3

    .line 4511
    int-to-float v10, v8

    iget-object v11, p0, Landroid/widget/ListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float v12, v6, v2

    invoke-virtual {v11, v12}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int v8, v4, v10

    .line 4512
    iget-object v10, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4503
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 4514
    .end local v0           #child:Landroid/view/View;
    .end local v5           #introAnimation:Landroid/animation/ObjectAnimator;
    .end local v9           #x:Landroid/animation/PropertyValuesHolder;
    :cond_88
    iget-object v10, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v11, p0, Landroid/widget/ListView;->mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4515
    iget-object v10, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_6

    iget-object v10, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_6

    .line 4501
    :array_9a
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private playRightIntroAnimation()V
    .registers 16

    .prologue
    .line 4468
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 4469
    .local v1, childCount:I
    if-gtz v1, :cond_7

    .line 4491
    :cond_6
    :goto_6
    return-void

    .line 4470
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->isIntroAnimationEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4472
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4473
    sget-object v10, Landroid/widget/ListView;->INTRO_ANIMATION_DURATIONS:[I

    const/4 v11, 0x3

    aget v4, v10, v11

    .line 4474
    .local v4, initialDuration:I
    move v8, v4

    .line 4475
    .local v8, time:I
    const-string/jumbo v10, "scaleY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_9a

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 4476
    .local v7, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v6, 0x0

    .local v6, pos:F
    add-int/lit8 v10, v1, -0x1

    int-to-float v2, v10

    .line 4477
    .local v2, count:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2c
    if-ge v3, v1, :cond_88

    .line 4478
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4479
    .local v0, child:Landroid/view/View;
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4480
    const-string/jumbo v10, "x"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    aput v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v13

    int-to-float v13, v13

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 4481
    .local v9, x:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    invoke-static {v0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 4482
    .local v5, introAnimation:Landroid/animation/ObjectAnimator;
    iget-object v10, p0, Landroid/widget/ListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v5, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4483
    int-to-long v10, v8

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4484
    int-to-float v6, v3

    .line 4485
    int-to-float v10, v8

    iget-object v11, p0, Landroid/widget/ListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float v12, v6, v2

    invoke-virtual {v11, v12}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int v8, v4, v10

    .line 4486
    iget-object v10, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4477
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 4488
    .end local v0           #child:Landroid/view/View;
    .end local v5           #introAnimation:Landroid/animation/ObjectAnimator;
    .end local v9           #x:Landroid/animation/PropertyValuesHolder;
    :cond_88
    iget-object v10, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v11, p0, Landroid/widget/ListView;->mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4489
    iget-object v10, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_6

    iget-object v10, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_6

    .line 4475
    :array_9a
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private playUpIntroAnimation()V
    .registers 18

    .prologue
    .line 4439
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 4440
    .local v3, childCount:I
    if-gtz v3, :cond_7

    .line 4465
    :cond_6
    :goto_6
    return-void

    .line 4441
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isIntroAnimationEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 4443
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4444
    sget-object v13, Landroid/widget/ListView;->INTRO_ANIMATION_DURATIONS:[I

    const/4 v14, 0x2

    aget v7, v13, v14

    .line 4445
    .local v7, initialDuration:I
    const/4 v5, 0x0

    .line 4446
    .local v5, deltaTop:I
    move v11, v7

    .line 4447
    .local v11, time:I
    const-string/jumbo v13, "scaleY"

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_c0

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 4448
    .local v10, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x0

    .local v9, pos:F
    add-int/lit8 v13, v3, -0x1

    int-to-float v4, v13

    .line 4449
    .local v4, count:F
    add-int/lit8 v13, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 4450
    .local v1, bottom:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3b
    if-ge v6, v3, :cond_a5

    .line 4451
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4452
    .local v2, child:Landroid/view/View;
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4453
    const-string/jumbo v13, "y"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    add-int v16, v5, v1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 4454
    .local v12, y:Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v12, v13, v14

    invoke-static {v2, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 4455
    .local v8, introAnimation:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v8, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4456
    int-to-long v13, v11

    invoke-virtual {v8, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4457
    int-to-float v9, v6

    .line 4458
    int-to-float v13, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mDirectionIntroInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float v15, v9, v4

    invoke-virtual {v14, v15}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int v11, v7, v13

    .line 4459
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4460
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v5, v13

    .line 4450
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 4462
    .end local v2           #child:Landroid/view/View;
    .end local v8           #introAnimation:Landroid/animation/ObjectAnimator;
    .end local v12           #y:Landroid/animation/PropertyValuesHolder;
    :cond_a5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mIgnoreTouchEventListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4463
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_6

    .line 4447
    nop

    :array_c0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .registers 7
    .parameter "newFocus"

    .prologue
    .line 3034
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 3035
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_18

    .line 3036
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3037
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3038
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3035
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3041
    .end local v0           #child:Landroid/view/View;
    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .registers 9
    .parameter "child"

    .prologue
    .line 2779
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2780
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2781
    .local v4, h:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2782
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2783
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2784
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2785
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2786
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 500
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v2, :cond_14

    .line 501
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 502
    .local v1, info:Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_15

    .line 503
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 507
    .end local v1           #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_14
    return-void

    .line 500
    .restart local v1       #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private scrollListItemsBy(I)V
    .registers 14
    .parameter "amount"

    .prologue
    const/4 v11, 0x0

    .line 3117
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3119
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 3120
    .local v5, listBottom:I
    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 3121
    .local v6, listTop:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3123
    .local v8, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_76

    .line 3127
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 3128
    .local v7, numChildren:I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3129
    .local v1, last:Landroid/view/View;
    :goto_20
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_38

    .line 3130
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3131
    .local v3, lastVisiblePosition:I
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_38

    .line 3132
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3133
    add-int/lit8 v7, v7, 0x1

    .line 3137
    goto :goto_20

    .line 3142
    .end local v3           #lastVisiblePosition:I
    :cond_38
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_47

    .line 3143
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3147
    :cond_47
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3148
    .local v0, first:Landroid/view/View;
    :goto_4b
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_d2

    .line 3149
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3150
    .local v4, layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 3151
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3152
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3156
    :goto_67
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3157
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_4b

    .line 3154
    :cond_72
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_67

    .line 3161
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_76
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3164
    .restart local v0       #first:Landroid/view/View;
    :goto_7a
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_91

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v9, :cond_91

    .line 3165
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3166
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_7a

    .line 3171
    :cond_91
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_a0

    .line 3172
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3175
    :cond_a0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3176
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3179
    .restart local v1       #last:Landroid/view/View;
    :goto_aa
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_d2

    .line 3180
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3181
    .restart local v4       #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_ce

    .line 3182
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3183
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3187
    :goto_c7
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3188
    goto :goto_aa

    .line 3185
    :cond_ce
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_c7

    .line 3190
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    :cond_d2
    return-void
.end method

.method private setIntroAnimationEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 4236
    if-eqz p1, :cond_9

    iget v0, p0, Landroid/widget/AbsListView;->mEnabledAnimationType:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/AbsListView;->mEnabledAnimationType:I

    .line 4238
    :goto_8
    return-void

    .line 4237
    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/widget/AbsListView;->mEnabledAnimationType:I

    goto :goto_8
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .registers 30
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 2028
    if-eqz p6, :cond_151

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_151

    const/4 v11, 0x1

    .line 2029
    .local v11, isSelected:Z
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_154

    const/16 v17, 0x1

    .line 2030
    .local v17, updateChildSelected:Z
    :goto_13
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2031
    .local v13, mode:I
    if-lez v13, :cond_158

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_158

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_158

    const/4 v10, 0x1

    .line 2033
    .local v10, isPressed:Z
    :goto_2c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_15b

    const/16 v16, 0x1

    .line 2034
    .local v16, updateChildPressed:Z
    :goto_36
    if-eqz p7, :cond_40

    if-nez v17, :cond_40

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_15f

    :cond_40
    const/4 v14, 0x1

    .line 2038
    .local v14, needToMeasure:Z
    :goto_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 2039
    .local v15, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_5a

    .line 2040
    new-instance v15, Landroid/widget/AbsListView$LayoutParams;

    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 2043
    .restart local v15       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2045
    if-eqz p7, :cond_74

    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_86

    :cond_74
    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_166

    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_166

    .line 2047
    :cond_86
    if-eqz p4, :cond_162

    const/16 v19, -0x1

    :goto_8a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2056
    :goto_93
    if-eqz v17, :cond_9a

    .line 2057
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 2060
    :cond_9a
    if-eqz v16, :cond_a1

    .line 2061
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 2064
    :cond_a1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_ce

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_ce

    .line 2065
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_194

    move-object/from16 v19, p1

    .line 2066
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2073
    :cond_ce
    :goto_ce
    if-eqz v14, :cond_1cb

    .line 2074
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    move/from16 v19, v0

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

    add-int v20, v20, v21

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 2076
    .local v8, childWidthSpec:I
    iget v12, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2078
    .local v12, lpHeight:I
    if-lez v12, :cond_1c1

    .line 2079
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2083
    .local v5, childHeightSpec:I
    :goto_104
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 2088
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpHeight:I
    :goto_109
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 2089
    .local v18, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2090
    .local v9, h:I
    if-eqz p4, :cond_1d0

    move/from16 v7, p3

    .line 2092
    .local v7, childTop:I
    :goto_115
    if-eqz v14, :cond_1d4

    .line 2093
    add-int v6, p5, v18

    .line 2094
    .local v6, childRight:I
    add-int v4, v7, v9

    .line 2095
    .local v4, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 2101
    .end local v4           #childBottom:I
    .end local v6           #childRight:I
    :goto_122
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_139

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_139

    .line 2102
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2105
    :cond_139
    if-eqz p7, :cond_150

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_150

    .line 2107
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2109
    :cond_150
    return-void

    .line 2028
    .end local v7           #childTop:I
    .end local v9           #h:I
    .end local v10           #isPressed:Z
    .end local v11           #isSelected:Z
    .end local v13           #mode:I
    .end local v14           #needToMeasure:Z
    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v16           #updateChildPressed:Z
    .end local v17           #updateChildSelected:Z
    .end local v18           #w:I
    :cond_151
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 2029
    .restart local v11       #isSelected:Z
    :cond_154
    const/16 v17, 0x0

    goto/16 :goto_13

    .line 2031
    .restart local v13       #mode:I
    .restart local v17       #updateChildSelected:Z
    :cond_158
    const/4 v10, 0x0

    goto/16 :goto_2c

    .line 2033
    .restart local v10       #isPressed:Z
    :cond_15b
    const/16 v16, 0x0

    goto/16 :goto_36

    .line 2034
    .restart local v16       #updateChildPressed:Z
    :cond_15f
    const/4 v14, 0x0

    goto/16 :goto_41

    .line 2047
    .restart local v14       #needToMeasure:Z
    .restart local v15       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_162
    const/16 v19, 0x0

    goto/16 :goto_8a

    .line 2049
    :cond_166
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 2050
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17e

    .line 2051
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2053
    :cond_17e
    if-eqz p4, :cond_191

    const/16 v19, -0x1

    :goto_182
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_93

    :cond_191
    const/16 v19, 0x0

    goto :goto_182

    .line 2067
    :cond_194
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_ce

    .line 2069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_ce

    .line 2081
    .restart local v8       #childWidthSpec:I
    .restart local v12       #lpHeight:I
    :cond_1c1
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5       #childHeightSpec:I
    goto/16 :goto_104

    .line 2085
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpHeight:I
    :cond_1cb
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_109

    .line 2090
    .restart local v9       #h:I
    .restart local v18       #w:I
    :cond_1d0
    sub-int v7, p3, v9

    goto/16 :goto_115

    .line 2097
    .restart local v7       #childTop:I
    :cond_1d4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2098
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_122
.end method

.method private setupDividerChangedList()V
    .registers 4

    .prologue
    .line 4281
    iget-object v1, p0, Landroid/widget/ListView;->mDividerChangedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4282
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 4283
    iget-object v1, p0, Landroid/widget/ListView;->mDividerChangedList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4282
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4285
    :cond_19
    return-void
.end method

.method private showingBottomFadingEdge()Z
    .registers 7

    .prologue
    .line 717
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 718
    .local v1, childCount:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 719
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 721
    .local v2, lastVisiblePosition:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 723
    .local v3, listBottom:I
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_28

    if-ge v0, v3, :cond_2a

    :cond_28
    const/4 v4, 0x1

    :goto_29
    return v4

    :cond_2a
    const/4 v4, 0x0

    goto :goto_29
.end method

.method private showingTopFadingEdge()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 709
    iget v2, p0, Landroid/view/View;->mScrollY:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 710
    .local v0, listTop:I
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v2, :cond_17

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method private triggerIntroAniamtion()V
    .registers 2

    .prologue
    .line 4241
    iget-object v0, p0, Landroid/widget/AbsListView;->mIntroAnimationListener:Landroid/widget/AbsListView$IntroAnimationListener;

    if-eqz v0, :cond_e

    .line 4242
    iget-object v0, p0, Landroid/widget/AbsListView;->mIntroAnimationListener:Landroid/widget/AbsListView$IntroAnimationListener;

    invoke-interface {v0}, Landroid/widget/AbsListView$IntroAnimationListener;->onAnimationStart()V

    .line 4243
    iget-object v0, p0, Landroid/widget/AbsListView;->mIntroAnimationListener:Landroid/widget/AbsListView$IntroAnimationListener;

    invoke-interface {v0}, Landroid/widget/AbsListView$IntroAnimationListener;->onAnimationEnd()V

    .line 4263
    :cond_e
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 553
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 554
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 529
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 530
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 531
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 532
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 533
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1d

    .line 538
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 540
    :cond_1d
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 468
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 469
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 7
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 438
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_12

    .line 439
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_12
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 444
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 445
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 446
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 447
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_2f

    .line 452
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 454
    :cond_2f
    return-void
.end method

.method arrowScroll(I)Z
    .registers 5
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2573
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2574
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2575
    .local v0, handled:Z
    if-eqz v0, :cond_11

    .line 2576
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_14

    .line 2580
    :cond_11
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2578
    return v0

    .line 2580
    .end local v0           #handled:Z
    :catchall_14
    move-exception v1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 2113
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 42
    .parameter "canvas"

    .prologue
    .line 3301
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOverScrollAnimationEnabled()Z

    move-result v36

    if-eqz v36, :cond_b0

    .line 3302
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 3303
    .local v10, childCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    if-eqz v36, :cond_b0

    .line 3304
    const/16 v33, 0x0

    .line 3305
    .local v33, shadowHeight:I
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    if-eqz v36, :cond_96

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    if-eqz v36, :cond_96

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getTranslationY()F

    move-result v36

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_96

    .line 3306
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 3307
    .local v7, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    move/from16 v33, v0

    .line 3308
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    move/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v36

    if-le v0, v1, :cond_66

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    move/from16 v33, v0

    .line 3309
    :cond_66
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mInBouncing:Z

    move/from16 v36, v0

    if-eqz v36, :cond_96

    if-lez v33, :cond_96

    .line 3310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getWidth()I

    move-result v38

    add-int v39, v7, v33

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3314
    .end local v7           #bottom:I
    :cond_96
    const/16 v24, 0x1

    .local v24, i:I
    :goto_98
    move/from16 v0, v24

    if-ge v0, v10, :cond_b0

    .line 3315
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3316
    .local v9, child:Landroid/view/View;
    add-int/lit8 v36, v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 3317
    .local v27, nextChild:Landroid/view/View;
    if-nez v9, :cond_249

    .line 3333
    .end local v9           #child:Landroid/view/View;
    .end local v10           #childCount:I
    .end local v24           #i:I
    .end local v27           #nextChild:Landroid/view/View;
    .end local v33           #shadowHeight:I
    :cond_b0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    move/from16 v36, v0

    if-eqz v36, :cond_c0

    .line 3334
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mCachingActive:Z

    .line 3338
    :cond_c0
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3339
    .local v12, dividerHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    .line 3340
    .local v30, overscrollHeader:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    .line 3341
    .local v29, overscrollFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v30, :cond_2b8

    const/4 v15, 0x1

    .line 3342
    .local v15, drawOverscrollHeader:Z
    :goto_d3
    if-eqz v29, :cond_2bb

    const/4 v14, 0x1

    .line 3343
    .local v14, drawOverscrollFooter:Z
    :goto_d6
    if-lez v12, :cond_2be

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    if-eqz v36, :cond_2be

    const/4 v13, 0x1

    .line 3345
    .local v13, drawDividers:Z
    :goto_e1
    if-nez v13, :cond_e7

    if-nez v15, :cond_e7

    if-eqz v14, :cond_352

    .line 3347
    :cond_e7
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3348
    .local v8, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v36, v0

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 3349
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 3351
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    .line 3352
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 3353
    .local v22, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v25, v0

    .line 3354
    .local v25, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    sub-int v36, v25, v36

    add-int/lit8 v21, v36, -0x1

    .line 3355
    .local v21, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v23, v0

    .line 3356
    .local v23, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v20, v0

    .line 3357
    .local v20, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v19, v0

    .line 3358
    .local v19, first:I
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3359
    .local v6, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3364
    .local v5, adapter:Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v36

    if-eqz v36, :cond_2c1

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v36

    if-nez v36, :cond_2c1

    const/16 v18, 0x1

    .line 3366
    .local v18, fillForMissingDividers:Z
    :goto_159
    if-eqz v18, :cond_183

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    if-nez v36, :cond_183

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v36, v0

    if-eqz v36, :cond_183

    .line 3367
    new-instance v36, Landroid/graphics/Paint;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Landroid/graphics/Paint;->setColor(I)V

    .line 3370
    :cond_183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    .line 3372
    .local v31, paint:Landroid/graphics/Paint;
    const/16 v17, 0x0

    .line 3373
    .local v17, effectivePaddingTop:I
    const/16 v16, 0x0

    .line 3374
    .local v16, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x22

    const/16 v37, 0x22

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1b5

    .line 3375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 3376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 3379
    :cond_1b5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    sub-int v36, v36, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v37, v0

    add-int v26, v36, v37

    .line 3380
    .local v26, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v36, v0

    if-nez v36, :cond_369

    .line 3381
    const/4 v7, 0x0

    .line 3384
    .restart local v7       #bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v32, v0

    .line 3385
    .local v32, scrollY:I
    if-lez v11, :cond_1f5

    if-gez v32, :cond_1f5

    .line 3386
    if-eqz v15, :cond_2c5

    .line 3387
    const/16 v36, 0x0

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3388
    move/from16 v0, v32

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 3389
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2, v8}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3397
    :cond_1f5
    :goto_1f5
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_1f7
    move/from16 v0, v24

    if-ge v0, v11, :cond_327

    .line 3398
    if-nez v23, :cond_205

    add-int v36, v19, v24

    move/from16 v0, v36

    move/from16 v1, v22

    if-lt v0, v1, :cond_246

    :cond_205
    if-nez v20, :cond_20f

    add-int v36, v19, v24

    move/from16 v0, v36

    move/from16 v1, v21

    if-ge v0, v1, :cond_246

    .line 3400
    :cond_20f
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3401
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 3403
    if-eqz v13, :cond_246

    move/from16 v0, v26

    if-ge v7, v0, :cond_246

    if-eqz v14, :cond_22b

    add-int/lit8 v36, v11, -0x1

    move/from16 v0, v24

    move/from16 v1, v36

    if-eq v0, v1, :cond_246

    .line 3407
    :cond_22b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    move/from16 v36, v0

    if-eqz v36, :cond_2e1

    if-eqz v13, :cond_2e1

    .line 3408
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3409
    add-int v36, v7, v12

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3410
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v8, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3397
    .end local v9           #child:Landroid/view/View;
    :cond_246
    :goto_246
    add-int/lit8 v24, v24, 0x1

    goto :goto_1f7

    .line 3319
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v7           #bottom:I
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v11           #count:I
    .end local v12           #dividerHeight:I
    .end local v13           #drawDividers:Z
    .end local v14           #drawOverscrollFooter:Z
    .end local v15           #drawOverscrollHeader:Z
    .end local v16           #effectivePaddingBottom:I
    .end local v17           #effectivePaddingTop:I
    .end local v18           #fillForMissingDividers:Z
    .end local v19           #first:I
    .end local v20           #footerDividers:Z
    .end local v21           #footerLimit:I
    .end local v22           #headerCount:I
    .end local v23           #headerDividers:Z
    .end local v25           #itemCount:I
    .end local v26           #listBottom:I
    .end local v29           #overscrollFooter:Landroid/graphics/drawable/Drawable;
    .end local v30           #overscrollHeader:Landroid/graphics/drawable/Drawable;
    .end local v31           #paint:Landroid/graphics/Paint;
    .end local v32           #scrollY:I
    .restart local v9       #child:Landroid/view/View;
    .restart local v10       #childCount:I
    .restart local v27       #nextChild:Landroid/view/View;
    .restart local v33       #shadowHeight:I
    :cond_249
    const/16 v33, 0x0

    .line 3320
    if-eqz v27, :cond_265

    .line 3321
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    move/from16 v33, v0

    .line 3322
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    move/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v36

    if-le v0, v1, :cond_265

    .line 3323
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    move/from16 v33, v0

    .line 3325
    :cond_265
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mInBouncing:Z

    move/from16 v36, v0

    if-eqz v36, :cond_2b4

    if-lez v33, :cond_2b4

    .line 3326
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getBottom()I

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getTranslationY()F

    move-result v37

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    add-int v7, v36, v37

    .line 3327
    .restart local v7       #bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getWidth()I

    move-result v38

    add-int v39, v7, v33

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3314
    .end local v7           #bottom:I
    :cond_2b4
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_98

    .line 3341
    .end local v9           #child:Landroid/view/View;
    .end local v10           #childCount:I
    .end local v24           #i:I
    .end local v27           #nextChild:Landroid/view/View;
    .end local v33           #shadowHeight:I
    .restart local v12       #dividerHeight:I
    .restart local v29       #overscrollFooter:Landroid/graphics/drawable/Drawable;
    .restart local v30       #overscrollHeader:Landroid/graphics/drawable/Drawable;
    :cond_2b8
    const/4 v15, 0x0

    goto/16 :goto_d3

    .line 3342
    .restart local v15       #drawOverscrollHeader:Z
    :cond_2bb
    const/4 v14, 0x0

    goto/16 :goto_d6

    .line 3343
    .restart local v14       #drawOverscrollFooter:Z
    :cond_2be
    const/4 v13, 0x0

    goto/16 :goto_e1

    .line 3364
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v6       #areAllItemsSelectable:Z
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v11       #count:I
    .restart local v13       #drawDividers:Z
    .restart local v19       #first:I
    .restart local v20       #footerDividers:Z
    .restart local v21       #footerLimit:I
    .restart local v22       #headerCount:I
    .restart local v23       #headerDividers:Z
    .restart local v25       #itemCount:I
    :cond_2c1
    const/16 v18, 0x0

    goto/16 :goto_159

    .line 3390
    .restart local v7       #bottom:I
    .restart local v16       #effectivePaddingBottom:I
    .restart local v17       #effectivePaddingTop:I
    .restart local v18       #fillForMissingDividers:Z
    .restart local v26       #listBottom:I
    .restart local v31       #paint:Landroid/graphics/Paint;
    .restart local v32       #scrollY:I
    :cond_2c5
    if-eqz v13, :cond_1f5

    .line 3391
    const/16 v36, 0x0

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3392
    neg-int v0, v12

    move/from16 v36, v0

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 3393
    const/16 v36, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-virtual {v0, v1, v8, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_1f5

    .line 3413
    .restart local v9       #child:Landroid/view/View;
    .restart local v24       #i:I
    :cond_2e1
    if-nez v6, :cond_301

    add-int v36, v19, v24

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v36

    if-eqz v36, :cond_314

    add-int/lit8 v36, v11, -0x1

    move/from16 v0, v24

    move/from16 v1, v36

    if-eq v0, v1, :cond_301

    add-int v36, v19, v24

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v36

    if-eqz v36, :cond_314

    .line 3416
    :cond_301
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3417
    add-int v36, v7, v12

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3418
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v8, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_246

    .line 3419
    :cond_314
    if-eqz v18, :cond_246

    .line 3420
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3421
    add-int v36, v7, v12

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3422
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_246

    .line 3428
    .end local v9           #child:Landroid/view/View;
    :cond_327
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v37, v0

    add-int v28, v36, v37

    .line 3429
    .local v28, overFooterBottom:I
    if-eqz v14, :cond_352

    add-int v36, v19, v11

    move/from16 v0, v36

    move/from16 v1, v25

    if-ne v0, v1, :cond_352

    move/from16 v0, v28

    if-le v0, v7, :cond_352

    .line 3431
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3432
    move/from16 v0, v28

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3433
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v8}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3489
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v7           #bottom:I
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v11           #count:I
    .end local v16           #effectivePaddingBottom:I
    .end local v17           #effectivePaddingTop:I
    .end local v18           #fillForMissingDividers:Z
    .end local v19           #first:I
    .end local v20           #footerDividers:Z
    .end local v21           #footerLimit:I
    .end local v22           #headerCount:I
    .end local v23           #headerDividers:Z
    .end local v24           #i:I
    .end local v25           #itemCount:I
    .end local v26           #listBottom:I
    .end local v28           #overFooterBottom:I
    .end local v31           #paint:Landroid/graphics/Paint;
    .end local v32           #scrollY:I
    :cond_352
    :goto_352
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3493
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mAnimationRunning:Z

    move/from16 v36, v0

    if-nez v36, :cond_368

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mShouldDrawPressShadow:Z

    move/from16 v36, v0

    if-eqz v36, :cond_368

    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->drawPressShadow(Landroid/graphics/Canvas;)V

    .line 3495
    :cond_368
    return-void

    .line 3438
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v6       #areAllItemsSelectable:Z
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v11       #count:I
    .restart local v16       #effectivePaddingBottom:I
    .restart local v17       #effectivePaddingTop:I
    .restart local v18       #fillForMissingDividers:Z
    .restart local v19       #first:I
    .restart local v20       #footerDividers:Z
    .restart local v21       #footerLimit:I
    .restart local v22       #headerCount:I
    .restart local v23       #headerDividers:Z
    .restart local v25       #itemCount:I
    .restart local v26       #listBottom:I
    .restart local v31       #paint:Landroid/graphics/Paint;
    :cond_369
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v32, v0

    .line 3440
    .restart local v32       #scrollY:I
    if-lez v11, :cond_392

    if-eqz v15, :cond_392

    .line 3441
    move/from16 v0, v32

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 3442
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getTop()I

    move-result v36

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3443
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2, v8}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3446
    :cond_392
    if-eqz v15, :cond_3fa

    const/16 v34, 0x1

    .line 3447
    .local v34, start:I
    :goto_396
    move/from16 v24, v34

    .restart local v24       #i:I
    :goto_398
    move/from16 v0, v24

    if-ge v0, v11, :cond_411

    .line 3448
    if-nez v23, :cond_3a6

    add-int v36, v19, v24

    move/from16 v0, v36

    move/from16 v1, v22

    if-lt v0, v1, :cond_3f7

    :cond_3a6
    if-nez v20, :cond_3b0

    add-int v36, v19, v24

    move/from16 v0, v36

    move/from16 v1, v21

    if-ge v0, v1, :cond_3f7

    .line 3450
    :cond_3b0
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3451
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v35

    .line 3453
    .local v35, top:I
    move/from16 v0, v35

    move/from16 v1, v17

    if-le v0, v1, :cond_3f7

    .line 3454
    if-nez v6, :cond_3e2

    add-int v36, v19, v24

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v36

    if-eqz v36, :cond_3fd

    add-int/lit8 v36, v11, -0x1

    move/from16 v0, v24

    move/from16 v1, v36

    if-eq v0, v1, :cond_3e2

    add-int v36, v19, v24

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v36

    if-eqz v36, :cond_3fd

    .line 3457
    :cond_3e2
    sub-int v36, v35, v12

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 3458
    move/from16 v0, v35

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3463
    add-int/lit8 v36, v24, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-virtual {v0, v1, v8, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3447
    .end local v9           #child:Landroid/view/View;
    .end local v35           #top:I
    :cond_3f7
    :goto_3f7
    add-int/lit8 v24, v24, 0x1

    goto :goto_398

    .line 3446
    .end local v24           #i:I
    .end local v34           #start:I
    :cond_3fa
    const/16 v34, 0x0

    goto :goto_396

    .line 3464
    .restart local v9       #child:Landroid/view/View;
    .restart local v24       #i:I
    .restart local v34       #start:I
    .restart local v35       #top:I
    :cond_3fd
    if-eqz v18, :cond_3f7

    .line 3465
    sub-int v36, v35, v12

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 3466
    move/from16 v0, v35

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3467
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3f7

    .line 3473
    .end local v9           #child:Landroid/view/View;
    .end local v35           #top:I
    :cond_411
    if-lez v11, :cond_352

    if-lez v32, :cond_352

    .line 3474
    if-eqz v14, :cond_42e

    .line 3475
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mBottom:I

    .line 3476
    .local v4, absListBottom:I
    iput v4, v8, Landroid/graphics/Rect;->top:I

    .line 3477
    add-int v36, v4, v32

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3478
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v8}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_352

    .line 3479
    .end local v4           #absListBottom:I
    :cond_42e
    if-eqz v13, :cond_352

    .line 3480
    move/from16 v0, v26

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 3481
    add-int v36, v26, v12

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3482
    const/16 v36, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-virtual {v0, v1, v8, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_352
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 2255
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2256
    .local v1, handled:Z
    if-nez v1, :cond_1a

    .line 2258
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2259
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    .line 2262
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2265
    .end local v0           #focused:Landroid/view/View;
    :cond_1a
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "ev"

    .prologue
    const/4 v2, 0x2

    .line 4799
    iget-boolean v0, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v0, :cond_1b

    .line 4800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    :cond_12
    invoke-virtual {p0}, Landroid/widget/ListView;->isInBouncing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4802
    invoke-direct {p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    .line 4809
    :cond_1b
    :goto_1b
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 4803
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2f

    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2f

    .line 4804
    invoke-direct {p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    goto :goto_1b

    .line 4805
    :cond_2f
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    .line 4806
    invoke-direct {p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    goto :goto_1b
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 4199
    invoke-direct {p0}, Landroid/widget/ListView;->triggerIntroAniamtion()V

    .line 4200
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->draw(Landroid/graphics/Canvas;)V

    .line 4201
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 7
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3499
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3500
    .local v0, more:Z
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_f

    .line 3501
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    .line 3503
    :cond_f
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 6
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3525
    iget-boolean v1, p0, Landroid/widget/ListView;->mInBouncing:Z

    if-eqz v1, :cond_5

    .line 3532
    :goto_4
    return-void

    .line 3528
    :cond_5
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3530
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3531
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 8
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3283
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3285
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3286
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3288
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3289
    .local v1, span:I
    if-ge v1, v0, :cond_17

    .line 3290
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3293
    :cond_17
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3294
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3297
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 8
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3266
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3268
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3269
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3271
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3272
    .local v1, span:I
    if-ge v1, v0, :cond_17

    .line 3273
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3276
    :cond_17
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3277
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3279
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3280
    return-void
.end method

.method public enableAnimation(IZ)V
    .registers 5
    .parameter "anim_id"
    .parameter "enable"

    .prologue
    .line 4879
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->enableAnimation(IZ)V

    .line 4880
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_13

    .line 4881
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    .line 4882
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 4884
    :cond_13
    return-void
.end method

.method fillGap(Z)V
    .registers 8
    .parameter "down"

    .prologue
    const/16 v5, 0x22

    .line 812
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 813
    .local v0, count:I
    if-eqz p1, :cond_33

    .line 814
    const/4 v2, 0x0

    .line 815
    .local v2, paddingTop:I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_13

    .line 816
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    .line 818
    :cond_13
    if-lez v0, :cond_31

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 820
    .local v3, startOffset:I
    :goto_23
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 821
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 832
    .end local v2           #paddingTop:I
    :goto_30
    return-void

    .end local v3           #startOffset:I
    .restart local v2       #paddingTop:I
    :cond_31
    move v3, v2

    .line 818
    goto :goto_23

    .line 823
    .end local v2           #paddingTop:I
    :cond_33
    const/4 v1, 0x0

    .line 824
    .local v1, paddingBottom:I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3e

    .line 825
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v1

    .line 827
    :cond_3e
    if-lez v0, :cond_5c

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 829
    .restart local v3       #startOffset:I
    :goto_4d
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 830
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_30

    .line 827
    .end local v3           #startOffset:I
    :cond_5c
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    goto :goto_4d
.end method

.method findMotionRow(I)I
    .registers 6
    .parameter "y"

    .prologue
    .line 1516
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1517
    .local v0, childCount:I
    if-lez v0, :cond_33

    .line 1518
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1e

    .line 1519
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_33

    .line 1520
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1521
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1b

    .line 1522
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1534
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1a
    return v3

    .line 1519
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1526
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1e
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_20
    if-ltz v1, :cond_33

    .line 1527
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1528
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_30

    .line 1529
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1a

    .line 1526
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 1534
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_33
    const/4 v3, -0x1

    goto :goto_1a
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3836
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_23

    .line 3837
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3840
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_23

    .line 3841
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3843
    .local v2, v:Landroid/view/View;
    if-eq v2, p3, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3844
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3846
    if-eqz v2, :cond_20

    .line 3852
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1f
    return-object v2

    .line 3840
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3852
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_23
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3814
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3815
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3816
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3817
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3826
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_f
    return-object v1

    .line 3821
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_10
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3822
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3823
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3826
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 7
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3741
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3742
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3745
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_21

    .line 3746
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3748
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3749
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3751
    if-eqz v2, :cond_1e

    .line 3757
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1d
    return-object v2

    .line 3745
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3757
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 5
    .parameter "id"

    .prologue
    .line 3722
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3723
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3724
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3725
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3733
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_f
    return-object v1

    .line 3728
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_10
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3729
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3730
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3733
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3787
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3788
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3791
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_21

    .line 3792
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3794
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3795
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3797
    if-eqz v2, :cond_1e

    .line 3803
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1d
    return-object v2

    .line 3791
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3803
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 5
    .parameter "tag"

    .prologue
    .line 3767
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3768
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3769
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3770
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3779
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_f
    return-object v1

    .line 3774
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_10
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3775
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3776
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3779
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f
.end method

.method fullScroll(I)Z
    .registers 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2488
    const/4 v0, 0x0

    .line 2489
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_29

    .line 2490
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1a

    .line 2491
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2492
    .local v1, position:I
    if-ltz v1, :cond_19

    .line 2493
    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2494
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2495
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2497
    :cond_19
    const/4 v0, 0x1

    .line 2511
    .end local v1           #position:I
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_28

    .line 2512
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2513
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2516
    :cond_28
    return v0

    .line 2499
    :cond_29
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1a

    .line 2500
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1a

    .line 2501
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2502
    .restart local v1       #position:I
    if-ltz v1, :cond_48

    .line 2503
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2504
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2505
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2507
    :cond_48
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 4158
    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_12

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 4159
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 4188
    :cond_11
    :goto_11
    return-object v5

    .line 4164
    :cond_12
    iget v8, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v8, :cond_4c

    iget-object v8, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_4c

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_4c

    .line 4165
    iget-object v7, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4166
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 4167
    .local v3, count:I
    new-array v5, v3, [J

    .line 4168
    .local v5, ids:[J
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4170
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 4171
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_2b
    if-ge v4, v3, :cond_43

    .line 4172
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 4173
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 4171
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_2b

    .line 4179
    :cond_43
    if-eq v2, v3, :cond_11

    .line 4182
    new-array v6, v2, [J

    .line 4183
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 4185
    goto :goto_11

    .line 4188
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_4c
    new-array v5, v10, [J

    goto :goto_11

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_4f
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_3f
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 4194
    sub-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3540
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .registers 2

    .prologue
    .line 3565
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .registers 2

    .prologue
    .line 558
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .registers 2

    .prologue
    .line 3228
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 373
    const v0, 0x3ea8f5c3

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3642
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3623
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method ignoreFooterViewInBouncing()V
    .registers 2

    .prologue
    .line 3890
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->isIgnoreFooterViewInBouncing:Z

    .line 3891
    return-void
.end method

.method isInBouncing()Z
    .registers 2

    .prologue
    .line 4143
    iget-boolean v0, p0, Landroid/widget/ListView;->mInBouncing:Z

    return v0
.end method

.method public isOpaque()Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 3233
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    if-eqz v5, :cond_13

    iget-boolean v5, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_13

    iget-boolean v5, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_13

    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_19

    :cond_13
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_32

    :cond_19
    const/4 v4, 0x1

    .line 3235
    .local v4, retValue:Z
    :goto_1a
    if-eqz v4, :cond_31

    .line 3237
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_34

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3238
    .local v3, listTop:I
    :goto_24
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3239
    .local v0, first:Landroid/view/View;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_37

    :cond_30
    move v4, v6

    .line 3249
    .end local v0           #first:Landroid/view/View;
    .end local v3           #listTop:I
    .end local v4           #retValue:Z
    :cond_31
    :goto_31
    return v4

    :cond_32
    move v4, v6

    .line 3233
    goto :goto_1a

    .line 3237
    .restart local v4       #retValue:Z
    :cond_34
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    goto :goto_24

    .line 3242
    .restart local v0       #first:Landroid/view/View;
    .restart local v3       #listTop:I
    :cond_37
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_59

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    :goto_43
    sub-int v2, v7, v5

    .line 3244
    .local v2, listBottom:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3245
    .local v1, last:Landroid/view/View;
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_31

    :cond_57
    move v4, v6

    .line 3246
    goto :goto_31

    .line 3242
    .end local v1           #last:Landroid/view/View;
    .end local v2           #listBottom:I
    :cond_59
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_43
.end method

.method protected layoutChildren()V
    .registers 27

    .prologue
    .line 1693
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1694
    .local v8, blockLayoutRequests:Z
    if-nez v8, :cond_24

    .line 1695
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1701
    :try_start_b
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1703
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1705
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_25

    .line 1706
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1707
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_120

    .line 1939
    if-nez v8, :cond_24

    .line 1940
    :goto_1f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1943
    :cond_24
    return-void

    .line 1711
    :cond_25
    :try_start_25
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 1712
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v7, v2, v24

    .line 1714
    .local v7, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 1715
    .local v10, childCount:I
    const/16 v19, 0x0

    .line 1716
    .local v19, index:I
    const/4 v5, 0x0

    .line 1719
    .local v5, delta:I
    const/4 v3, 0x0

    .line 1720
    .local v3, oldSel:Landroid/view/View;
    const/16 v20, 0x0

    .line 1721
    .local v20, oldFirst:Landroid/view/View;
    const/4 v4, 0x0

    .line 1723
    .local v4, newSel:Landroid/view/View;
    const/4 v14, 0x0

    .line 1726
    .local v14, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_364

    .line 1741
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1742
    if-ltz v19, :cond_72

    move/from16 v0, v19

    if-ge v0, v10, :cond_72

    .line 1743
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1747
    :cond_72
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1749
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v2, :cond_8b

    .line 1750
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    sub-int v5, v2, v24

    .line 1754
    :cond_8b
    add-int v2, v19, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1758
    :cond_93
    :goto_93
    :pswitch_93
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1759
    .local v11, dataChanged:Z
    if-eqz v11, :cond_9c

    .line 1760
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1765
    :cond_9c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v2, :cond_c7

    .line 1766
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1767
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1939
    if-nez v8, :cond_24

    goto/16 :goto_1f

    .line 1728
    .end local v11           #dataChanged:Z
    :pswitch_ac
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1729
    if-ltz v19, :cond_93

    move/from16 v0, v19

    if-ge v0, v10, :cond_93

    .line 1730
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_93

    .line 1769
    .restart local v11       #dataChanged:Z
    :cond_c7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Landroid/widget/ListAdapter;->getCount()I

    move-result v24

    move/from16 v0, v24

    if-eq v2, v0, :cond_12c

    .line 1770
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") with Adapter("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_120
    .catchall {:try_start_25 .. :try_end_120} :catchall_120

    .line 1939
    .end local v3           #oldSel:Landroid/view/View;
    .end local v4           #newSel:Landroid/view/View;
    .end local v5           #delta:I
    .end local v6           #childrenTop:I
    .end local v7           #childrenBottom:I
    .end local v10           #childCount:I
    .end local v11           #dataChanged:Z
    .end local v14           #focusLayoutRestoreView:Landroid/view/View;
    .end local v19           #index:I
    .end local v20           #oldFirst:Landroid/view/View;
    :catchall_120
    move-exception v2

    if-nez v8, :cond_12b

    .line 1940
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1939
    :cond_12b
    throw v2

    .line 1777
    .restart local v3       #oldSel:Landroid/view/View;
    .restart local v4       #newSel:Landroid/view/View;
    .restart local v5       #delta:I
    .restart local v6       #childrenTop:I
    .restart local v7       #childrenBottom:I
    .restart local v10       #childCount:I
    .restart local v11       #dataChanged:Z
    .restart local v14       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v19       #index:I
    .restart local v20       #oldFirst:Landroid/view/View;
    :cond_12c
    :try_start_12c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1781
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1782
    .local v12, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v22, v0

    .line 1785
    .local v22, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    const/4 v13, 0x0

    .line 1789
    .local v13, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v11, :cond_15c

    .line 1790
    const/16 v18, 0x0

    .local v18, i:I
    :goto_144
    move/from16 v0, v18

    if-ge v0, v10, :cond_161

    .line 1791
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v24, v12, v18

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1790
    add-int/lit8 v18, v18, 0x1

    goto :goto_144

    .line 1798
    .end local v18           #i:I
    :cond_15c
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v12}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1805
    :cond_161
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v17

    .line 1806
    .local v17, focusedChild:Landroid/view/View;
    if-eqz v17, :cond_181

    .line 1811
    if-eqz v11, :cond_173

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_17e

    .line 1812
    :cond_173
    move-object/from16 v13, v17

    .line 1814
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 1815
    if-eqz v14, :cond_17e

    .line 1817
    invoke-virtual {v14}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1820
    :cond_17e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1824
    :cond_181
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1826
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_372

    .line 1853
    if-nez v10, :cond_2b0

    .line 1854
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_28b

    .line 1855
    const/4 v2, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1856
    .local v21, position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1857
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1878
    .end local v6           #childrenTop:I
    .end local v21           #position:I
    .local v23, sel:Landroid/view/View;
    :goto_1ab
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1880
    if-eqz v23, :cond_31d

    .line 1883
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_313

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_313

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_313

    .line 1884
    move-object/from16 v0, v23

    if-ne v0, v13, :cond_1cc

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_1d2

    :cond_1cc
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_301

    :cond_1d2
    const/4 v15, 0x1

    .line 1886
    .local v15, focusWasTaken:Z
    :goto_1d3
    if-nez v15, :cond_304

    .line 1890
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    .line 1891
    .local v16, focused:Landroid/view/View;
    if-eqz v16, :cond_1de

    .line 1892
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->clearFocus()V

    .line 1894
    :cond_1de
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1902
    .end local v15           #focusWasTaken:Z
    .end local v16           #focused:Landroid/view/View;
    :goto_1e6
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1921
    :cond_1ee
    :goto_1ee
    if-eqz v14, :cond_1f9

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1f9

    .line 1923
    invoke-virtual {v14}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1926
    :cond_1f9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1927
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1928
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1929
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1931
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 1933
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v2, :cond_21d

    .line 1934
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 1937
    :cond_21d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1939
    if-nez v8, :cond_24

    goto/16 :goto_1f

    .line 1828
    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :pswitch_224
    if-eqz v4, :cond_232

    .line 1829
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1ab

    .line 1831
    .end local v23           #sel:Landroid/view/View;
    :cond_232
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v23

    .line 1833
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1ab

    .line 1835
    .end local v23           #sel:Landroid/view/View;
    :pswitch_23a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1836
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1ab

    .line 1838
    .end local v23           #sel:Landroid/view/View;
    :pswitch_24e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1839
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_1ab

    .line 1842
    .end local v23           #sel:Landroid/view/View;
    :pswitch_25f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1843
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1844
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_1ab

    .line 1847
    .end local v23           #sel:Landroid/view/View;
    :pswitch_26f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1848
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1ab

    .end local v23           #sel:Landroid/view/View;
    :pswitch_283
    move-object/from16 v2, p0

    .line 1850
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v23

    .line 1851
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1ab

    .line 1859
    .end local v23           #sel:Landroid/view/View;
    :cond_28b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1860
    .restart local v21       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1861
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1862
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1ab

    .line 1864
    .end local v21           #position:I
    .end local v23           #sel:Landroid/view/View;
    :cond_2b0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2d7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_2d7

    .line 1865
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-nez v3, :cond_2d2

    .end local v6           #childrenTop:I
    :goto_2ca
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1ab

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_2d2
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_2ca

    .line 1867
    :cond_2d7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_2f8

    .line 1868
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v20, :cond_2f3

    .end local v6           #childrenTop:I
    :goto_2eb
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1ab

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_2f3
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_2eb

    .line 1871
    :cond_2f8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1ab

    .line 1884
    .end local v6           #childrenTop:I
    :cond_301
    const/4 v15, 0x0

    goto/16 :goto_1d3

    .line 1896
    .restart local v15       #focusWasTaken:Z
    :cond_304
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_1e6

    .line 1900
    .end local v15           #focusWasTaken:Z
    :cond_313
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_1e6

    .line 1904
    :cond_31d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-lez v2, :cond_357

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ge v2, v0, :cond_357

    .line 1905
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1906
    .local v9, child:Landroid/view/View;
    if-eqz v9, :cond_34a

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1914
    .end local v9           #child:Landroid/view/View;
    :cond_34a
    :goto_34a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1ee

    if-eqz v14, :cond_1ee

    .line 1915
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1ee

    .line 1908
    :cond_357
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1909
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_363
    .catchall {:try_start_12c .. :try_end_363} :catchall_120

    goto :goto_34a

    .line 1726
    :pswitch_data_364
    .packed-switch 0x1
        :pswitch_93
        :pswitch_ac
        :pswitch_93
        :pswitch_93
        :pswitch_93
    .end packed-switch

    .line 1826
    :pswitch_data_372
    .packed-switch 0x1
        :pswitch_25f
        :pswitch_224
        :pswitch_24e
        :pswitch_26f
        :pswitch_23a
        :pswitch_283
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 7
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 2201
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2202
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2228
    :cond_b
    :goto_b
    return v2

    .line 2206
    :cond_c
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2207
    .local v1, count:I
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_3d

    .line 2208
    if-eqz p2, :cond_26

    .line 2209
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2210
    :goto_1b
    if-ge p1, v1, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2211
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 2214
    :cond_26
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2215
    :goto_2c
    if-ltz p1, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2216
    add-int/lit8 p1, p1, -0x1

    goto :goto_2c

    .line 2220
    :cond_37
    if-ltz p1, :cond_b

    if-ge p1, v1, :cond_b

    move v2, p1

    .line 2223
    goto :goto_b

    .line 2225
    :cond_3d
    if-ltz p1, :cond_b

    if-ge p1, v1, :cond_b

    move v2, p1

    .line 2228
    goto :goto_b
.end method

.method final measureHeightOfChildren(IIIII)I
    .registers 18
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1455
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1456
    .local v1, adapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_f

    .line 1457
    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1511
    :cond_e
    :goto_e
    return v6

    .line 1461
    :cond_f
    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1462
    .local v9, returnedHeight:I
    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v10, :cond_6e

    iget-object v10, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6e

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1465
    .local v3, dividerHeight:I
    :goto_23
    const/4 v6, 0x0

    .line 1470
    .local v6, prevHeightWithoutPartialChild:I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2d

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1471
    :cond_2d
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1472
    .local v7, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v8

    .line 1473
    .local v8, recyle:Z
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 1475
    .local v5, isScrap:[Z
    move v4, p2

    .local v4, i:I
    :goto_36
    if-gt v4, p3, :cond_7a

    .line 1476
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1478
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1480
    if-lez v4, :cond_42

    .line 1482
    add-int/2addr v9, v3

    .line 1486
    :cond_42
    if-eqz v8, :cond_56

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_56

    .line 1488
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1491
    :cond_56
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1493
    move/from16 v0, p4

    if-lt v9, v0, :cond_70

    .line 1496
    if-ltz p5, :cond_6b

    move/from16 v0, p5

    if-le v4, v0, :cond_6b

    if-lez v6, :cond_6b

    move/from16 v0, p4

    if-ne v9, v0, :cond_e

    :cond_6b
    move/from16 v6, p4

    goto :goto_e

    .line 1462
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #prevHeightWithoutPartialChild:I
    .end local v7           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v8           #recyle:Z
    :cond_6e
    const/4 v3, 0x0

    goto :goto_23

    .line 1504
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #prevHeightWithoutPartialChild:I
    .restart local v7       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .restart local v8       #recyle:Z
    :cond_70
    if-ltz p5, :cond_77

    move/from16 v0, p5

    if-lt v4, v0, :cond_77

    .line 1505
    move v6, v9

    .line 1475
    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .end local v2           #child:Landroid/view/View;
    :cond_7a
    move v6, v9

    .line 1511
    goto :goto_e
.end method

.method final measureTotalHeightOfChildrenWithBound(IIII)I
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "bound"

    .prologue
    .line 1382
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1384
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_f

    .line 1385
    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v8, v9, v10

    .line 1422
    :cond_e
    return v8

    .line 1389
    :cond_f
    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v8, v9, v10

    .line 1390
    .local v8, returnedHeight:I
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v9, :cond_62

    iget-object v9, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_62

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1395
    .local v3, dividerHeight:I
    :goto_23
    const/4 v9, -0x1

    if-ne p3, v9, :cond_2c

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 p3, v9, -0x1

    .line 1396
    :cond_2c
    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1397
    .local v6, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v7

    .line 1398
    .local v7, recyle:Z
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 1400
    .local v5, isScrap:[Z
    const/4 v1, 0x1

    .line 1402
    .local v1, bInBound:Z
    move v4, p2

    .local v4, i:I
    :goto_36
    if-gt v4, p3, :cond_e

    if-eqz v1, :cond_e

    .line 1404
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1406
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1408
    if-lez v4, :cond_44

    .line 1410
    add-int/2addr v8, v3

    .line 1414
    :cond_44
    if-eqz v7, :cond_57

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    iget v9, v9, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 1416
    invoke-virtual {v6, v2, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1418
    :cond_57
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1419
    if-gt v8, p4, :cond_64

    const/4 v1, 0x1

    .line 1402
    :goto_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 1390
    .end local v1           #bInBound:Z
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v7           #recyle:Z
    :cond_62
    const/4 v3, 0x0

    goto :goto_23

    .line 1419
    .restart local v1       #bInBound:Z
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .restart local v7       #recyle:Z
    :cond_64
    const/4 v1, 0x0

    goto :goto_5f
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 4205
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4206
    iget-object v0, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/ListView;->mIntroAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 4207
    :cond_14
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 4781
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 4783
    iget-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    if-eqz v0, :cond_c

    .line 4784
    iget-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4789
    :cond_c
    iget-object v0, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 4790
    iget-object v0, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4792
    :cond_15
    iget-object v0, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    if-eqz v0, :cond_1e

    .line 4793
    iget-object v0, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4795
    :cond_1e
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 4525
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 3704
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3706
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3707
    .local v0, count:I
    if-lez v0, :cond_19

    .line 3708
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 3709
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3708
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3711
    :cond_16
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3713
    .end local v1           #i:I
    :cond_19
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 4554
    const/4 v0, 0x0

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 19
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3647
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3649
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3650
    .local v2, adapter:Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3651
    .local v5, closetChildIndex:I
    const/4 v4, 0x0

    .line 3652
    .local v4, closestChildTop:I
    if-eqz v2, :cond_5d

    if-eqz p1, :cond_5d

    if-eqz p3, :cond_5d

    .line 3653
    iget v12, p0, Landroid/view/View;->mScrollX:I

    iget v13, p0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3657
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_29

    .line 3658
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3659
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3664
    :cond_29
    iget-object v11, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3665
    .local v11, otherRect:Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3666
    .local v9, minDistance:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 3667
    .local v3, childCount:I
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3669
    .local v7, firstPosition:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_35
    if-ge v8, v3, :cond_5d

    .line 3671
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_42

    .line 3669
    :cond_3f
    :goto_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 3675
    :cond_42
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3676
    .local v10, other:Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3677
    invoke-virtual {p0, v10, v11}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3678
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3680
    .local v6, distance:I
    if-ge v6, v9, :cond_3f

    .line 3681
    move v9, v6

    .line 3682
    move v5, v8

    .line 3683
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_3f

    .line 3688
    .end local v3           #childCount:I
    .end local v6           #distance:I
    .end local v7           #firstPosition:I
    .end local v8           #i:I
    .end local v9           #minDistance:I
    .end local v10           #other:Landroid/view/View;
    .end local v11           #otherRect:Landroid/graphics/Rect;
    :cond_5d
    if-ltz v5, :cond_66

    .line 3689
    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 3693
    :goto_65
    return-void

    .line 3691
    :cond_66
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_65
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 3867
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    .line 3868
    invoke-virtual {p0}, Landroid/widget/ListView;->isOverScrollAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mStart:F

    iput v0, p0, Landroid/widget/ListView;->mPre:F

    .line 3870
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mSame:Z

    .line 3873
    :cond_17
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2270
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2275
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2280
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 4550
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1297
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1299
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1300
    .local v11, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1301
    .local v10, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1302
    .local v12, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1304
    .local v4, heightSize:I
    const/4 v9, 0x0

    .line 1305
    .local v9, childWidth:I
    const/4 v7, 0x0

    .line 1306
    .local v7, childHeight:I
    const/4 v8, 0x0

    .line 1308
    .local v8, childState:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_92

    move v0, v2

    :goto_1d
    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1309
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_5b

    if-eqz v11, :cond_27

    if-nez v10, :cond_5b

    .line 1311
    :cond_27
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1313
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1315
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1316
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1317
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1319
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1321
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1325
    .end local v6           #child:Landroid/view/View;
    :cond_5b
    if-nez v11, :cond_99

    .line 1326
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1332
    :goto_6d
    if-nez v10, :cond_81

    .line 1333
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1337
    :cond_81
    const/high16 v0, -0x8000

    if-ne v10, v0, :cond_8c

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1339
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1342
    :cond_8c
    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1343
    iput p1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 1344
    return-void

    .line 1308
    :cond_92
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_1d

    .line 1329
    :cond_99
    const/high16 v0, -0x100

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_6d
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 4540
    iget-boolean v0, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v0, :cond_7

    .line 4541
    invoke-direct {p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    .line 4542
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 4530
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 4534
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1278
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3e

    .line 1279
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1280
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_3e

    .line 1281
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1282
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1283
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1284
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1285
    .local v4, top:I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_35

    .line 1286
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1288
    :cond_35
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1291
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_3e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1292
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .parameter "ev"

    .prologue
    .line 3895
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3896
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_19

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v13, :cond_19

    .line 3897
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    .line 3899
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1b8

    .line 3900
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v13, :cond_6c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isInBouncing()Z

    move-result v13

    if-nez v13, :cond_6c

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v14, 0x4

    if-eq v13, v14, :cond_6c

    .line 3901
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    if-eqz v13, :cond_50

    .line 3902
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3904
    :cond_50
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->findMotionRow(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v11, v13, v14

    .line 3905
    .local v11, pressedPos:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3906
    .local v2, animatedChild:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->releaseItem(Landroid/view/View;)V

    .line 3908
    .end local v2           #animatedChild:Landroid/view/View;
    .end local v11           #pressedPos:I
    :cond_6c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOverScrollAnimationEnabled()Z

    move-result v13

    if-eqz v13, :cond_13c

    .line 3909
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->mSame:Z

    if-eqz v13, :cond_89

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mStart:F

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_89

    .line 3910
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/ListView;->mSame:Z

    .line 3911
    :cond_89
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->mInBouncing:Z

    if-eqz v13, :cond_132

    .line 3913
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3914
    .local v1, animSet:Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mCurrent:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mStart:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_f1

    .line 3915
    const/4 v6, 0x1

    .local v6, i:I
    :goto_a1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    if-ge v6, v13, :cond_af

    .line 3916
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_c1

    .line 3937
    :cond_af
    new-instance v13, Landroid/widget/ListView$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/ListView$1;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3960
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 3961
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 4090
    .end local v1           #animSet:Landroid/animation/AnimatorSet;
    .end local v6           #i:I
    :goto_c0
    return v5

    .line 3918
    .restart local v1       #animSet:Landroid/animation/AnimatorSet;
    .restart local v6       #i:I
    :cond_c1
    const-string/jumbo v13, "translationY"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 3919
    .local v12, pvhTranslationY:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/animation/PropertyValuesHolder;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-static {v13, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 3921
    .local v3, childScaleTransAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v13, 0x82

    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3923
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3915
    add-int/lit8 v6, v6, 0x1

    goto :goto_a1

    .line 3926
    .end local v3           #childScaleTransAnim:Landroid/animation/ObjectAnimator;
    .end local v6           #i:I
    .end local v12           #pvhTranslationY:Landroid/animation/PropertyValuesHolder;
    :cond_f1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    add-int/lit8 v6, v13, -0x2

    .restart local v6       #i:I
    :goto_f7
    const/4 v13, -0x1

    if-le v6, v13, :cond_af

    .line 3927
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_af

    .line 3929
    const-string/jumbo v13, "translationY"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 3930
    .restart local v12       #pvhTranslationY:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/animation/PropertyValuesHolder;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-static {v13, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 3932
    .restart local v3       #childScaleTransAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v13, 0x82

    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3934
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3926
    add-int/lit8 v6, v6, -0x1

    goto :goto_f7

    .line 3963
    .end local v1           #animSet:Landroid/animation/AnimatorSet;
    .end local v3           #childScaleTransAnim:Landroid/animation/ObjectAnimator;
    .end local v6           #i:I
    .end local v12           #pvhTranslationY:Landroid/animation/PropertyValuesHolder;
    :cond_132
    const/high16 v13, -0x3cb8

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/ListView;->mStart:F

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/ListView;->mPre:F

    .line 4056
    :cond_13c
    :goto_13c
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v13, :cond_1b2

    .line 4057
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->findMotionRow(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v11, v13, v14

    .line 4058
    .restart local v11       #pressedPos:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4059
    .restart local v2       #animatedChild:Landroid/view/View;
    if-eqz v2, :cond_1b2

    .line 4060
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v13, :cond_3f3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v13, :cond_3f3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    if-nez v13, :cond_3f3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v14, v11

    invoke-interface {v13, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_3f3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isInBouncing()Z

    move-result v13

    if-nez v13, :cond_3f3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v14, 0x4

    if-eq v13, v14, :cond_3f3

    .line 4077
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ListView;->mPressedView:Landroid/view/View;

    .line 4078
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    if-nez v13, :cond_19e

    .line 4079
    new-instance v13, Landroid/widget/ListView$CheckForPressAnimation;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/ListView$CheckForPressAnimation;-><init>(Landroid/widget/ListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    .line 4081
    :cond_19e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    invoke-virtual {v13, v2}, Landroid/widget/ListView$CheckForPressAnimation;->setAnimatedView(Landroid/view/View;)V

    .line 4082
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/widget/ListView;->mCheckForPressAnimationDelay:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4089
    .end local v2           #animatedChild:Landroid/view/View;
    .end local v11           #pressedPos:I
    :cond_1b2
    :goto_1b2
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 4090
    .local v5, handled:Z
    goto/16 :goto_c0

    .line 3965
    .end local v5           #handled:Z
    :cond_1b8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3de

    .line 3966
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v13, :cond_1ce

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isInBouncing()Z

    move-result v13

    if-eqz v13, :cond_1ce

    .line 3967
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    .line 3969
    :cond_1ce
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOverScrollAnimationEnabled()Z

    move-result v13

    if-eqz v13, :cond_13c

    .line 3970
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/ListView;->mCurrent:F

    .line 3971
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->mSame:Z

    if-eqz v13, :cond_1f3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mCurrent:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mStart:F

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_1f3

    .line 3972
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/ListView;->mSame:Z

    .line 3974
    :cond_1f3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mCurrent:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mStart:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2c7

    .line 3975
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v13

    if-nez v13, :cond_239

    .line 3976
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_230

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v14

    if-ne v13, v14, :cond_230

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->findMotionRow(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v14

    if-ne v13, v14, :cond_242

    .line 3978
    :cond_230
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->doAnimFinalize()V

    .line 3979
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_c0

    .line 3982
    :cond_239
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->doAnimFinalize()V

    .line 3983
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_c0

    .line 3986
    :cond_242
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mCurrent:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mStart:F

    sub-float/2addr v13, v14

    const/high16 v14, 0x4170

    cmpl-float v13, v13, v14

    if-lez v13, :cond_28f

    .line 3987
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/ListView;->mInBouncing:Z

    .line 3992
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mCurrent:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mPre:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_295

    .line 3993
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mCurrent:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mStart:F

    sub-float/2addr v13, v14

    const/high16 v14, 0x4120

    div-float v4, v13, v14

    .line 3997
    .local v4, dist:F
    :goto_26f
    sget v13, Landroid/widget/ListView;->MAX_DIFF:I

    int-to-float v13, v13

    cmpl-float v13, v4, v13

    if-lez v13, :cond_279

    .line 3998
    sget v13, Landroid/widget/ListView;->MAX_DIFF:I

    int-to-float v4, v13

    .line 3999
    :cond_279
    const/4 v9, 0x0

    .line 4000
    .local v9, mPreSpace:I
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_27b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    if-ge v6, v13, :cond_289

    .line 4001
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_2a3

    .line 4006
    :cond_289
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_c0

    .line 3989
    .end local v4           #dist:F
    .end local v6           #i:I
    .end local v9           #mPreSpace:I
    :cond_28f
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_c0

    .line 3995
    :cond_295
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mPre:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mStart:F

    sub-float/2addr v13, v14

    const/high16 v14, 0x4120

    div-float v4, v13, v14

    .restart local v4       #dist:F
    goto :goto_26f

    .line 4002
    .restart local v6       #i:I
    .restart local v9       #mPreSpace:I
    :cond_2a3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    int-to-float v14, v9

    add-float/2addr v14, v4

    invoke-virtual {v13, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 4003
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mStart:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_2c4

    .line 4004
    int-to-float v13, v9

    add-float/2addr v13, v4

    float-to-int v9, v13

    .line 4000
    :cond_2c4
    add-int/lit8 v6, v6, 0x1

    goto :goto_27b

    .line 4007
    .end local v4           #dist:F
    .end local v6           #i:I
    .end local v9           #mPreSpace:I
    :cond_2c7
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mCurrent:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mStart:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3d4

    .line 4008
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v10

    .line 4009
    .local v10, p:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4010
    .local v8, m:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_334

    .line 4011
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_32b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-ne v13, v14, :cond_32b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->findMotionRow(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v14

    if-ne v13, v14, :cond_33d

    .line 4014
    :cond_32b
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->doAnimFinalize()V

    .line 4015
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_c0

    .line 4018
    :cond_334
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->doAnimFinalize()V

    .line 4019
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_c0

    .line 4021
    :cond_33d
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mStart:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mCurrent:F

    sub-float/2addr v13, v14

    const/high16 v14, 0x4170

    cmpl-float v13, v13, v14

    if-lez v13, :cond_395

    .line 4022
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/ListView;->mInBouncing:Z

    .line 4027
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mCurrent:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mPre:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_39b

    .line 4028
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mCurrent:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mStart:F

    sub-float/2addr v13, v14

    const/high16 v14, 0x4120

    div-float v4, v13, v14

    .line 4032
    .restart local v4       #dist:F
    :goto_36a
    sget v13, Landroid/widget/ListView;->MAX_DIFF:I

    neg-int v13, v13

    int-to-float v13, v13

    cmpg-float v13, v4, v13

    if-gez v13, :cond_376

    .line 4033
    sget v13, Landroid/widget/ListView;->MAX_DIFF:I

    neg-int v13, v13

    int-to-float v4, v13

    .line 4034
    :cond_376
    const/4 v9, 0x0

    .line 4036
    .restart local v9       #mPreSpace:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->isIgnoreFooterViewInBouncing:Z

    if-eqz v13, :cond_3a9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    add-int/lit8 v7, v13, -0x3

    .line 4037
    .local v7, index:I
    :goto_383
    move v6, v7

    .restart local v6       #i:I
    :goto_384
    const/4 v13, -0x1

    if-le v6, v13, :cond_38f

    .line 4038
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_3b0

    .line 4043
    :cond_38f
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_c0

    .line 4024
    .end local v4           #dist:F
    .end local v6           #i:I
    .end local v7           #index:I
    .end local v9           #mPreSpace:I
    :cond_395
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_c0

    .line 4030
    :cond_39b
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mPre:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mStart:F

    sub-float/2addr v13, v14

    const/high16 v14, 0x4120

    div-float v4, v13, v14

    .restart local v4       #dist:F
    goto :goto_36a

    .line 4036
    .restart local v9       #mPreSpace:I
    :cond_3a9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    add-int/lit8 v7, v13, -0x2

    goto :goto_383

    .line 4039
    .restart local v6       #i:I
    .restart local v7       #index:I
    :cond_3b0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    int-to-float v14, v9

    add-float/2addr v14, v4

    invoke-virtual {v13, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 4040
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mStart:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3d1

    .line 4041
    int-to-float v13, v9

    add-float/2addr v13, v4

    float-to-int v9, v13

    .line 4037
    :cond_3d1
    add-int/lit8 v6, v6, -0x1

    goto :goto_384

    .line 4045
    .end local v4           #dist:F
    .end local v6           #i:I
    .end local v7           #index:I
    .end local v8           #m:Landroid/view/View;
    .end local v9           #mPreSpace:I
    .end local v10           #p:I
    :cond_3d4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/ListView;->mPre:F

    goto/16 :goto_13c

    .line 4047
    :cond_3de
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    if-nez v13, :cond_13c

    .line 4049
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v13, :cond_13c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v13

    if-eqz v13, :cond_13c

    .line 4052
    const/4 v5, 0x0

    goto/16 :goto_c0

    .line 4083
    .restart local v2       #animatedChild:Landroid/view/View;
    .restart local v11       #pressedPos:I
    :cond_3f3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1b2

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1b2

    .line 4084
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    goto/16 :goto_1b2
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasWindowFocus"

    .prologue
    .line 4764
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onWindowFocusChanged(Z)V

    .line 4765
    if-nez p1, :cond_15

    .line 4766
    iget-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    if-eqz v0, :cond_e

    .line 4767
    iget-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4775
    :cond_e
    iget-boolean v0, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    .line 4777
    :cond_15
    return-void
.end method

.method pageScroll(I)Z
    .registers 10
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2442
    const/4 v1, -0x1

    .line 2443
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2445
    .local v0, down:Z
    const/16 v5, 0x21

    if-ne p1, v5, :cond_51

    .line 2446
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2452
    :cond_15
    :goto_15
    if-ltz v1, :cond_68

    .line 2453
    invoke-virtual {p0, v1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2454
    .local v2, position:I
    if-ltz v2, :cond_68

    .line 2455
    const/4 v4, 0x4

    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2456
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2458
    if-eqz v0, :cond_37

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_37

    .line 2459
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2462
    :cond_37
    if-nez v0, :cond_41

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_41

    .line 2463
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2466
    :cond_41
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2467
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2468
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_50

    .line 2469
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2476
    .end local v2           #position:I
    :cond_50
    :goto_50
    return v3

    .line 2447
    :cond_51
    const/16 v5, 0x82

    if-ne p1, v5, :cond_15

    .line 2448
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2449
    const/4 v0, 0x1

    goto :goto_15

    :cond_68
    move v3, v4

    .line 2476
    goto :goto_50
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/high16 v1, 0x3f80

    .line 4751
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_27

    .line 4752
    :cond_14
    iget-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    if-nez v0, :cond_20

    .line 4753
    new-instance v0, Landroid/widget/ListView$CheckForItemReleased;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ListView$CheckForItemReleased;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    .line 4755
    :cond_20
    iget-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/ListView$CheckForItemReleased;->start(Landroid/view/View;IJ)V

    .line 4756
    const/4 v0, 0x1

    .line 4758
    :goto_26
    return v0

    :cond_27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_26
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .registers 6
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 3881
    invoke-virtual {p0}, Landroid/widget/ListView;->isInBouncing()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 3882
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_7
.end method

.method protected recycleOnMeasure()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1375
    const/4 v0, 0x1

    return v0
.end method

.method protected releaseItem(Landroid/view/View;)V
    .registers 9
    .parameter "releasedView"

    .prologue
    const/high16 v6, 0x3f80

    .line 4667
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v4, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_35

    .line 4668
    iget-object v4, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4669
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_32

    .line 4683
    iget-object v4, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 4687
    .local v0, animator:Landroid/animation/Animator;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->get2DReleaseAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4688
    .local v2, releaseAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 4689
    new-instance v4, Landroid/widget/ListView$4;

    invoke-direct {v4, p0, v0}, Landroid/widget/ListView$4;-><init>(Landroid/widget/ListView;Landroid/animation/Animator;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4703
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 4667
    .end local v0           #animator:Landroid/animation/Animator;
    .end local v2           #releaseAnim:Landroid/animation/ObjectAnimator;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4706
    .end local v3           #v:Landroid/view/View;
    :cond_35
    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_6e

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_6e

    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6e

    iget-object v4, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_6e

    iget-object v4, p0, Landroid/widget/ListView;->mPressedView:Landroid/view/View;

    if-ne v4, p1, :cond_6e

    invoke-virtual {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 4709
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->get2DReleaseAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4710
    .restart local v2       #releaseAnim:Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/widget/ListView$5;

    invoke-direct {v4, p0}, Landroid/widget/ListView$5;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4721
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 4723
    .end local v2           #releaseAnim:Landroid/animation/ObjectAnimator;
    :cond_6e
    iget-object v4, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4724
    iget-object v4, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 4725
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 569
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 572
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 573
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 575
    :cond_20
    const/4 v0, 0x1

    .line 577
    :cond_21
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 580
    .end local v0           #result:Z
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 484
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 487
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 488
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 490
    :cond_20
    const/4 v0, 0x1

    .line 492
    :cond_21
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 495
    .end local v0           #result:Z
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 19
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 731
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 734
    .local v9, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 735
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 737
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    .line 738
    .local v6, height:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v8

    .line 739
    .local v8, listUnfadedTop:I
    add-int v7, v8, v6

    .line 740
    .local v7, listUnfadedBottom:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 742
    .local v5, fadingEdge:I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 744
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gtz v13, :cond_3a

    if-le v9, v5, :cond_3b

    .line 745
    :cond_3a
    add-int/2addr v8, v5

    .line 749
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 750
    .local v2, childCount:I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 752
    .local v1, bottomOfBottomChild:I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_60

    .line 754
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_5f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_60

    .line 756
    :cond_5f
    sub-int/2addr v7, v5

    .line 760
    :cond_60
    const/4 v11, 0x0

    .line 762
    .local v11, scrollYDelta:I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_9f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_9f

    .line 767
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_98

    .line 769
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 776
    :goto_79
    sub-int v4, v1, v7

    .line 777
    .local v4, distanceToBottom:I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 797
    .end local v4           #distanceToBottom:I
    :cond_7f
    :goto_7f
    if-eqz v11, :cond_d0

    const/4 v10, 0x1

    .line 798
    .local v10, scroll:Z
    :goto_82
    if-eqz v10, :cond_97

    .line 799
    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 800
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 801
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 802
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 804
    :cond_97
    return v10

    .line 772
    .end local v10           #scroll:Z
    :cond_98
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_79

    .line 778
    :cond_9f
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_7f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_7f

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_c8

    .line 785
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 792
    :goto_b8
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 793
    .local v12, top:I
    sub-int v3, v12, v8

    .line 794
    .local v3, deltaToTop:I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_7f

    .line 788
    .end local v3           #deltaToTop:I
    .end local v12           #top:I
    :cond_c8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_b8

    .line 797
    :cond_d0
    const/4 v10, 0x0

    goto :goto_82
.end method

.method resetList()V
    .registers 2

    .prologue
    .line 683
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 684
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 686
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 688
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 689
    return-void
.end method

.method public set2DPressAnimationEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 4561
    iput-boolean p1, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    .line 4562
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 4563
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->enableAnimation(IZ)V

    .line 4564
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 8
    .parameter "adapter"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 622
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_11

    .line 623
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 626
    :cond_11
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 627
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 629
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_29

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8f

    .line 630
    :cond_29
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 635
    :goto_34
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 636
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 639
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 641
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_97

    .line 642
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 643
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 644
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 645
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 647
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 648
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 650
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 653
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_92

    .line 654
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 658
    .local v0, position:I
    :goto_7e
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 659
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 661
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v1, :cond_8b

    .line 663
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 672
    .end local v0           #position:I
    :cond_8b
    :goto_8b
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 673
    return-void

    .line 632
    :cond_8f
    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_34

    .line 656
    :cond_92
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_7e

    .line 666
    .end local v0           #position:I
    :cond_97
    iput-boolean v5, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 667
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 669
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    goto :goto_8b
.end method

.method public setCacheColorHint(I)V
    .registers 5
    .parameter "color"

    .prologue
    .line 3254
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1f

    const/4 v0, 0x1

    .line 3255
    .local v0, opaque:Z
    :goto_7
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3256
    if-eqz v0, :cond_1b

    .line 3257
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_16

    .line 3258
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3260
    :cond_16
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3262
    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3263
    return-void

    .line 3254
    .end local v0           #opaque:Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setDarkModeEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 4875
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 3550
    if-eqz p1, :cond_1e

    .line 3551
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3555
    :goto_9
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3556
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3557
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3558
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3559
    return-void

    .line 3553
    :cond_1e
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_9
.end method

.method public setDividerHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 3575
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3576
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3577
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3578
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .registers 3
    .parameter "onTop"

    .prologue
    .line 4858
    iget-boolean v0, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v0, :cond_9

    .line 4859
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/AbsListView;->setDrawSelectorOnTop(Z)V

    .line 4863
    :goto_8
    return-void

    .line 4861
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setDrawSelectorOnTop(Z)V

    goto :goto_8
.end method

.method public setFooterDividersEnabled(Z)V
    .registers 2
    .parameter "footerDividersEnabled"

    .prologue
    .line 3602
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3603
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3604
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .registers 2
    .parameter "headerDividersEnabled"

    .prologue
    .line 3589
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3590
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3591
    return-void
.end method

.method public setIntroAnimationDelay(I)V
    .registers 2
    .parameter "delay"

    .prologue
    .line 4232
    iput p1, p0, Landroid/widget/ListView;->mIntroAnimationDelay:I

    .line 4233
    return-void
.end method

.method public setIntroAnimationType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 4214
    iput p1, p0, Landroid/widget/ListView;->mIntroAnimationType:I

    .line 4215
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .registers 3
    .parameter "itemsCanFocus"

    .prologue
    .line 3217
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3218
    if-nez p1, :cond_9

    .line 3219
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3221
    :cond_9
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "footer"

    .prologue
    .line 3634
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3635
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3636
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "header"

    .prologue
    .line 3613
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3614
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-gez v0, :cond_9

    .line 3615
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3617
    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 604
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 605
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 2125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2126
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .registers 3

    .prologue
    .line 2237
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2238
    .local v0, count:I
    if-lez v0, :cond_c

    .line 2239
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2250
    :goto_b
    return-void

    .line 2243
    :cond_c
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_14

    .line 2244
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_b

    .line 2246
    :cond_14
    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2247
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_b
.end method

.method public setSelectionFromTop(II)V
    .registers 5
    .parameter "position"
    .parameter "y"

    .prologue
    .line 2138
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    .line 2162
    :cond_4
    :goto_4
    return-void

    .line 2142
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_33

    .line 2143
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2144
    if-ltz p1, :cond_15

    .line 2145
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2151
    :cond_15
    :goto_15
    if-ltz p1, :cond_4

    .line 2152
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2153
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2155
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_2f

    .line 2156
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2157
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2160
    :cond_2f
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_4

    .line 2148
    :cond_33
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_15
.end method

.method setSelectionInt(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 2171
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2172
    const/4 v0, 0x0

    .line 2174
    .local v0, awakeScrollbars:Z
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2176
    .local v1, selectedPosition:I
    if-ltz v1, :cond_d

    .line 2177
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_16

    .line 2178
    const/4 v0, 0x1

    .line 2184
    :cond_d
    :goto_d
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2186
    if-eqz v0, :cond_15

    .line 2187
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2189
    :cond_15
    return-void

    .line 2179
    :cond_16
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_d

    .line 2180
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "sel"

    .prologue
    .line 4838
    iget-boolean v3, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v3, :cond_35

    .line 4840
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "list_selector_background_pressed"

    const v5, 0x10803c2

    invoke-static {v3, v4, v5}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 4842
    .local v0, highlightId:I
    const/4 v2, 0x0

    .line 4843
    .local v2, listSelectionHighlight:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1d

    .line 4844
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4846
    :cond_1d
    if-eqz v2, :cond_30

    .line 4847
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4848
    .local v1, keypadSeletor:Landroid/graphics/drawable/StateListDrawable;
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3a

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 4849
    invoke-super {p0, v1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 4851
    .end local v1           #keypadSeletor:Landroid/graphics/drawable/StateListDrawable;
    :cond_30
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 4855
    .end local v0           #highlightId:I
    .end local v2           #listSelectionHighlight:Landroid/graphics/drawable/Drawable;
    :goto_34
    return-void

    .line 4853
    :cond_35
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_34

    .line 4848
    nop

    :array_3a
    .array-data 0x4
        0x9ct 0x0t 0x1t 0x1t
        0x59t 0xfft 0xfet 0xfet
    .end array-data
.end method

.method skipScroll()Z
    .registers 2

    .prologue
    .line 4887
    iget-boolean v0, p0, Landroid/widget/ListView;->mInBouncing:Z

    return v0
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1090
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 1091
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1080
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 1081
    return-void
.end method

.method public startIntroAnimation()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 4222
    invoke-direct {p0, v0}, Landroid/widget/ListView;->setIntroAnimationEnabled(Z)V

    .line 4223
    iput-boolean v0, p0, Landroid/widget/ListView;->mShouldTriggerAnimation:Z

    .line 4224
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 4225
    return-void
.end method
