.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x13

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private enableHTCActionBar:Z

.field private mCallback:Landroid/app/ActionBar$OnNavigationListener;

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsable:Z

.field private mIsCollapsed:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleUpView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUserTitle:Z

.field mWindowCallback:Landroid/view/Window$Callback;

.field private onTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 19
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 166
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 137
    new-instance v2, Lcom/android/internal/widget/ActionBarView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 149
    new-instance v2, Lcom/android/internal/widget/ActionBarView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v2, Lcom/android/internal/widget/ActionBarView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$3;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 1495
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->enableHTCActionBar:Z

    .line 1517
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 169
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 171
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 174
    .local v9, a:Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 175
    .local v10, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 176
    .local v15, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 178
    const/4 v2, 0x5

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 179
    const/16 v2, 0x9

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 181
    const/4 v2, 0x6

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_a0

    .line 183
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_92

    .line 185
    :try_start_81
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_92
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_81 .. :try_end_92} :catch_1cf

    .line 190
    :cond_92
    :goto_92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_a0

    .line 191
    invoke-virtual {v10, v15}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 195
    :cond_a0
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_d4

    .line 197
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_c6

    .line 199
    :try_start_b5
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_c6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b5 .. :try_end_c6} :catch_1d9

    .line 204
    :cond_c6
    :goto_c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_d4

    .line 205
    invoke-virtual {v10, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 209
    :cond_d4
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 211
    .local v14, inflater:Landroid/view/LayoutInflater;
    const/16 v2, 0xf

    const v3, 0x1090018

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 215
    .local v13, homeResId:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 217
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10404b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 223
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 224
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 225
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 226
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 229
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 230
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 232
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 234
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 235
    .local v11, customNavId:I
    if-eqz v11, :cond_191

    .line 236
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v11, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 237
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 238
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 241
    :cond_191
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 243
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuItem;

    const/4 v4, 0x0

    const v5, 0x102002c

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 249
    return-void

    .line 186
    .end local v11           #customNavId:I
    .end local v13           #homeResId:I
    .end local v14           #inflater:Landroid/view/LayoutInflater;
    :catch_1cf
    move-exception v12

    .line 187
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_92

    .line 200
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1d9
    move-exception v12

    .line 201
    .restart local v12       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c6
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/ActionBarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/ActionBarView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/ActionBarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 6
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 434
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->enableHTCActionBar:Z

    if-ne v0, v2, :cond_2a

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_2a

    .line 436
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 437
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit(Landroid/content/Context;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v1, 0x10900cf

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setCustomItemRes(I)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableHtcPopup(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setListMenuOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 445
    :cond_2a
    if-eqz p1, :cond_37

    .line 446
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 447
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 454
    :goto_36
    return-void

    .line 449
    :cond_37
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 450
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 451
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_36
.end method

.method private initTitle()V
    .registers 10

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 742
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_9d

    .line 743
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 744
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090019

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 746
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x102022d

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 747
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x102022e

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 748
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x1020226

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 750
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v3, :cond_54

    .line 753
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 755
    :cond_54
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5f

    .line 756
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    :cond_5f
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_6c

    .line 760
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 762
    :cond_6c
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7c

    .line 763
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 767
    :cond_7c
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_bc

    move v0, v4

    .line 768
    .local v0, homeAsUp:Z
    :goto_83
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_be

    move v2, v4

    .line 769
    .local v2, showHome:Z
    :goto_8a
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v2, :cond_c2

    if-eqz v0, :cond_c0

    move v3, v5

    :goto_91
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c4

    if-nez v2, :cond_c4

    :goto_9a
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 773
    .end local v0           #homeAsUp:Z
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #showHome:Z
    :cond_9d
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 774
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_b6

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 777
    :cond_b6
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 779
    :cond_bb
    return-void

    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    :cond_bc
    move v0, v5

    .line 767
    goto :goto_83

    .restart local v0       #homeAsUp:Z
    :cond_be
    move v2, v5

    .line 768
    goto :goto_8a

    .line 769
    .restart local v2       #showHome:Z
    :cond_c0
    const/4 v3, 0x4

    goto :goto_91

    :cond_c2
    move v3, v6

    goto :goto_91

    :cond_c4
    move v4, v5

    .line 770
    goto :goto_9a
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 508
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 509
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_2e

    .line 510
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_38

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    :cond_26
    const/4 v0, 0x1

    .line 514
    .local v0, visible:Z
    :goto_27
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3a

    :goto_2b
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 516
    .end local v0           #visible:Z
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_37

    .line 517
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 519
    :cond_37
    return-void

    :cond_38
    move v0, v1

    .line 511
    goto :goto_27

    .line 514
    .restart local v0       #visible:Z
    :cond_3a
    const/16 v1, 0x8

    goto :goto_2b
.end method


# virtual methods
.method public collapseActionView()V
    .registers 3

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_b

    const/4 v0, 0x0

    .line 464
    .local v0, item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_5
    if-eqz v0, :cond_a

    .line 465
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 467
    :cond_a
    return-void

    .line 462
    .end local v0           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_b
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_5
.end method

.method public enableHTCActionBar()V
    .registers 3

    .prologue
    .line 1499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->enableHTCActionBar:Z

    .line 1501
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 1502
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 1504
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 1505
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 721
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 1157
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .parameter "lp"

    .prologue
    .line 1162
    if-nez p1, :cond_6

    .line 1163
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1165
    :cond_6
    return-object p1
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .registers 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    .prologue
    .line 714
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .registers 2

    .prologue
    .line 710
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .registers 2

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public initIndeterminateProgress()V
    .registers 6

    .prologue
    .line 307
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 309
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x10202e6

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 310
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 311
    return-void
.end method

.method public initProgress()V
    .registers 6

    .prologue
    .line 300
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x10202e7

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 302
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 303
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 304
    return-void
.end method

.method public isCollapsed()Z
    .registers 2

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public isSplitActionBar()Z
    .registers 2

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 255
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 256
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 257
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 258
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1b

    .line 259
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 261
    :cond_1b
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 262
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_26

    .line 263
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 266
    :cond_26
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_42

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_42

    .line 267
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 268
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_3c

    .line 269
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 270
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 272
    :cond_3c
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 274
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_42
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 286
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_16

    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 292
    :cond_16
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 726
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 728
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 730
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_2a

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2a

    .line 731
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 732
    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2a

    .line 733
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_25

    .line 734
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 736
    :cond_25
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 739
    :cond_2a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 38
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v23

    .line 1019
    .local v23, x:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v25

    .line 1020
    .local v25, y:I
    sub-int v27, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v28

    sub-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v28

    sub-int v7, v27, v28

    .line 1022
    .local v7, contentHeight:I
    if-gtz v7, :cond_19

    .line 1153
    :cond_18
    :goto_18
    return-void

    .line 1027
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1d8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 1028
    .local v13, homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_25
    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_45

    .line 1029
    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLeftOffset()I

    move-result v14

    .line 1030
    .local v14, leftOffset:I
    add-int v27, v23, v14

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-virtual {v0, v13, v1, v2, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v27

    add-int v27, v27, v14

    add-int v23, v23, v27

    .line 1033
    .end local v14           #leftOffset:I
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_92

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1de

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x8

    if-eqz v27, :cond_1de

    const/16 v20, 0x1

    .line 1036
    .local v20, showTitle:Z
    :goto_73
    if-eqz v20, :cond_89

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v23

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v27

    add-int v23, v23, v27

    .line 1040
    :cond_89
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_2d2

    .line 1058
    .end local v20           #showTitle:Z
    :cond_92
    :goto_92
    :pswitch_92
    sub-int v27, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v28

    sub-int v16, v27, v28

    .line 1059
    .local v16, menuLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v27, v0

    if-eqz v27, :cond_cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_cf

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v16

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v27

    sub-int v16, v16, v27

    .line 1064
    :cond_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v27, v0

    if-eqz v27, :cond_106

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_106

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v16

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v27

    sub-int v16, v16, v27

    .line 1070
    :cond_106
    const/4 v8, 0x0

    .line 1071
    .local v8, customView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_242

    .line 1072
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1077
    :cond_113
    :goto_113
    if-eqz v8, :cond_18d

    .line 1078
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 1079
    .local v15, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v15, Landroid/app/ActionBar$LayoutParams;

    move/from16 v27, v0

    if-eqz v27, :cond_25a

    check-cast v15, Landroid/app/ActionBar$LayoutParams;

    .end local v15           #lp:Landroid/view/ViewGroup$LayoutParams;
    move-object v4, v15

    .line 1082
    .local v4, ablp:Landroid/app/ActionBar$LayoutParams;
    :goto_122
    if-eqz v4, :cond_25d

    iget v10, v4, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1083
    .local v10, gravity:I
    :goto_126
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 1085
    .local v17, navWidth:I
    const/16 v21, 0x0

    .line 1086
    .local v21, topMargin:I
    const/4 v5, 0x0

    .line 1087
    .local v5, bottomMargin:I
    if-eqz v4, :cond_141

    .line 1088
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v23, v23, v27

    .line 1089
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v16, v16, v27

    .line 1090
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v21, v0

    .line 1091
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1094
    :cond_141
    and-int/lit8 v12, v10, 0x7

    .line 1096
    .local v12, hgravity:I
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v12, v0, :cond_26c

    .line 1097
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    sub-int v27, v27, v17

    div-int/lit8 v6, v27, 0x2

    .line 1098
    .local v6, centeredLeft:I
    move/from16 v0, v23

    if-ge v6, v0, :cond_261

    .line 1099
    const/4 v12, 0x3

    .line 1107
    .end local v6           #centeredLeft:I
    :cond_160
    :goto_160
    const/16 v24, 0x0

    .line 1108
    .local v24, xpos:I
    packed-switch v12, :pswitch_data_2dc

    .line 1120
    :goto_165
    :pswitch_165
    and-int/lit8 v22, v10, 0x70

    .line 1122
    .local v22, vgravity:I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_16f

    .line 1123
    const/16 v22, 0x10

    .line 1126
    :cond_16f
    const/16 v26, 0x0

    .line 1127
    .local v26, ypos:I
    sparse-switch v22, :sswitch_data_2ea

    .line 1141
    :goto_174
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1142
    .local v9, customWidth:I
    add-int v27, v24, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v26

    move/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1144
    add-int v23, v23, v9

    .line 1147
    .end local v4           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v5           #bottomMargin:I
    .end local v9           #customWidth:I
    .end local v10           #gravity:I
    .end local v12           #hgravity:I
    .end local v17           #navWidth:I
    .end local v21           #topMargin:I
    .end local v22           #vgravity:I
    .end local v24           #xpos:I
    .end local v26           #ypos:I
    :cond_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v27, v0

    if-eqz v27, :cond_18

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v27

    div-int/lit8 v11, v27, 0x2

    .line 1150
    .local v11, halfProgressHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v28, v0

    neg-int v0, v11

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v31

    add-int v30, v30, v31

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_18

    .line 1027
    .end local v8           #customView:Landroid/view/View;
    .end local v11           #halfProgressHeight:I
    .end local v13           #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v16           #menuLeft:I
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto/16 :goto_25

    .line 1034
    .restart local v13       #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    :cond_1de
    const/16 v20, 0x0

    goto/16 :goto_73

    .line 1044
    .restart local v20       #showTitle:Z
    :pswitch_1e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    if-eqz v27, :cond_92

    .line 1045
    if-eqz v20, :cond_1f4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    add-int v23, v23, v27

    .line 1046
    :cond_1f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v23

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v23, v23, v27

    goto/16 :goto_92

    .line 1050
    :pswitch_212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v27, v0

    if-eqz v27, :cond_92

    .line 1051
    if-eqz v20, :cond_224

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    add-int v23, v23, v27

    .line 1052
    :cond_224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v23

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v23, v23, v27

    goto/16 :goto_92

    .line 1073
    .end local v20           #showTitle:Z
    .restart local v8       #customView:Landroid/view/View;
    .restart local v16       #menuLeft:I
    :cond_242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x10

    if-eqz v27, :cond_113

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_113

    .line 1075
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_113

    .line 1079
    .restart local v15       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_25a
    const/4 v4, 0x0

    goto/16 :goto_122

    .line 1082
    .end local v15           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #ablp:Landroid/app/ActionBar$LayoutParams;
    :cond_25d
    const/16 v10, 0x13

    goto/16 :goto_126

    .line 1100
    .restart local v5       #bottomMargin:I
    .restart local v6       #centeredLeft:I
    .restart local v10       #gravity:I
    .restart local v12       #hgravity:I
    .restart local v17       #navWidth:I
    .restart local v21       #topMargin:I
    :cond_261
    add-int v27, v6, v17

    move/from16 v0, v27

    move/from16 v1, v16

    if-le v0, v1, :cond_160

    .line 1101
    const/4 v12, 0x5

    goto/16 :goto_160

    .line 1103
    .end local v6           #centeredLeft:I
    :cond_26c
    const/16 v27, -0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_160

    .line 1104
    const/4 v12, 0x3

    goto/16 :goto_160

    .line 1110
    .restart local v24       #xpos:I
    :pswitch_275
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    sub-int v27, v27, v17

    div-int/lit8 v24, v27, 0x2

    .line 1111
    goto/16 :goto_165

    .line 1113
    :pswitch_289
    move/from16 v24, v23

    .line 1114
    goto/16 :goto_165

    .line 1116
    :pswitch_28d
    sub-int v24, v16, v17

    goto/16 :goto_165

    .line 1129
    .restart local v22       #vgravity:I
    .restart local v26       #ypos:I
    :sswitch_291
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v19

    .line 1130
    .local v19, paddedTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v28

    sub-int v18, v27, v28

    .line 1131
    .local v18, paddedBottom:I
    sub-int v27, v18, v19

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    sub-int v27, v27, v28

    div-int/lit8 v26, v27, 0x2

    .line 1132
    goto/16 :goto_174

    .line 1134
    .end local v18           #paddedBottom:I
    .end local v19           #paddedTop:I
    :sswitch_2b5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v27

    add-int v26, v27, v21

    .line 1135
    goto/16 :goto_174

    .line 1137
    :sswitch_2bd
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v28

    sub-int v27, v27, v28

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    sub-int v27, v27, v28

    sub-int v26, v27, v5

    goto/16 :goto_174

    .line 1040
    nop

    :pswitch_data_2d2
    .packed-switch 0x0
        :pswitch_92
        :pswitch_1e2
        :pswitch_212
    .end packed-switch

    .line 1108
    :pswitch_data_2dc
    .packed-switch 0x1
        :pswitch_275
        :pswitch_165
        :pswitch_289
        :pswitch_165
        :pswitch_28d
    .end packed-switch

    .line 1127
    :sswitch_data_2ea
    .sparse-switch
        0x10 -> :sswitch_291
        0x30 -> :sswitch_2b5
        0x50 -> :sswitch_2bd
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 48
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v7

    .line 796
    .local v7, childCount:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    move/from16 v41, v0

    if-eqz v41, :cond_5b

    .line 797
    const/16 v39, 0x0

    .line 798
    .local v39, visibleChildren:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_10
    move/from16 v0, v22

    if-ge v0, v7, :cond_43

    .line 799
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 800
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    if-ne v6, v0, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v41

    if-eqz v41, :cond_40

    .line 802
    :cond_3e
    add-int/lit8 v39, v39, 0x1

    .line 798
    :cond_40
    add-int/lit8 v22, v22, 0x1

    goto :goto_10

    .line 806
    .end local v6           #child:Landroid/view/View;
    :cond_43
    if-nez v39, :cond_5b

    .line 808
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 809
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1014
    .end local v22           #i:I
    .end local v39           #visibleChildren:I
    :cond_5a
    :goto_5a
    return-void

    .line 813
    :cond_5b
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 815
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v40

    .line 816
    .local v40, widthMode:I
    const/high16 v41, 0x4000

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_b9

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getRootView()Landroid/view/View;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->debug()V

    .line 818
    const-string v41, "ActionBarView"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "widthMeasureSpec ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->enableHTCActionBar:Z

    move/from16 v41, v0

    if-eqz v41, :cond_38c

    .line 820
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v29

    .line 821
    .local v29, measuresize:I
    const/high16 v41, 0x4000

    move/from16 v0, v29

    move/from16 v1, v41

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 823
    new-instance v41, Lcom/android/internal/widget/ActionBarView$4;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$4;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 834
    .end local v29           #measuresize:I
    :cond_b9
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 835
    .local v16, heightMode:I
    const/high16 v41, -0x8000

    move/from16 v0, v16

    move/from16 v1, v41

    if-eq v0, v1, :cond_10f

    .line 836
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getRootView()Landroid/view/View;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->debug()V

    .line 837
    const-string v41, "ActionBarView"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "heightMeasureSpec ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->enableHTCActionBar:Z

    move/from16 v41, v0

    if-eqz v41, :cond_3b4

    .line 839
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v29

    .line 840
    .restart local v29       #measuresize:I
    const/high16 v41, -0x8000

    move/from16 v0, v29

    move/from16 v1, v41

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 842
    new-instance v41, Lcom/android/internal/widget/ActionBarView$5;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$5;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 853
    .end local v29           #measuresize:I
    :cond_10f
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 855
    .local v9, contentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v41, v0

    if-lez v41, :cond_3dc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v27, v0

    .line 858
    .local v27, maxHeight:I
    :goto_121
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v41

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v42

    add-int v38, v41, v42

    .line 859
    .local v38, verticalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v31

    .line 860
    .local v31, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v32

    .line 861
    .local v32, paddingRight:I
    sub-int v15, v27, v38

    .line 862
    .local v15, height:I
    const/high16 v41, -0x8000

    move/from16 v0, v41

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 864
    .local v8, childSpecHeight:I
    sub-int v41, v9, v31

    sub-int v5, v41, v32

    .line 865
    .local v5, availableWidth:I
    div-int/lit8 v24, v5, 0x2

    .line 866
    .local v24, leftOfCenter:I
    move/from16 v33, v24

    .line 868
    .local v33, rightOfCenter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v41, v0

    if-eqz v41, :cond_3e2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v18, v0

    .line 870
    .local v18, homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_153
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_19e

    .line 871
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 873
    .local v26, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v41, v0

    if-gez v41, :cond_3ea

    .line 874
    const/high16 v41, -0x8000

    move/from16 v0, v41

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 878
    .local v20, homeWidthSpec:I
    :goto_173
    const/high16 v41, 0x4000

    move/from16 v0, v41

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 880
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v41

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLeftOffset()I

    move-result v42

    add-int v19, v41, v42

    .line 881
    .local v19, homeWidth:I
    const/16 v41, 0x0

    sub-int v42, v5, v19

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 882
    const/16 v41, 0x0

    sub-int v42, v5, v19

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 885
    .end local v19           #homeWidth:I
    .end local v20           #homeWidthSpec:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_19e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v41, v0

    if-eqz v41, :cond_1da

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_1da

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 888
    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v42

    sub-int v42, v33, v42

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 891
    :cond_1da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    if-eqz v41, :cond_218

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_218

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 895
    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v42

    sub-int v42, v33, v42

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 899
    :cond_218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    if-eqz v41, :cond_3f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_3f8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v41, v0

    and-int/lit8 v41, v41, 0x8

    if-eqz v41, :cond_3f8

    const/16 v34, 0x1

    .line 902
    .local v34, showTitle:Z
    :goto_23e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v41, v0

    if-nez v41, :cond_24f

    .line 903
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v41, v0

    packed-switch v41, :pswitch_data_558

    .line 933
    :cond_24f
    :goto_24f
    const/4 v14, 0x0

    .line 934
    .local v14, customView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v41, v0

    if-eqz v41, :cond_4b8

    .line 935
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 941
    :cond_25c
    :goto_25c
    if-eqz v14, :cond_327

    .line 942
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 943
    .restart local v26       #lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v41, v0

    if-eqz v41, :cond_4d0

    move-object/from16 v41, v26

    check-cast v41, Landroid/app/ActionBar$LayoutParams;

    move-object/from16 v4, v41

    .line 946
    .local v4, ablp:Landroid/app/ActionBar$LayoutParams;
    :goto_278
    const/16 v21, 0x0

    .line 947
    .local v21, horizontalMargin:I
    const/16 v37, 0x0

    .line 948
    .local v37, verticalMargin:I
    if-eqz v4, :cond_292

    .line 949
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v41, v0

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v42, v0

    add-int v21, v41, v42

    .line 950
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v41, v0

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v42, v0

    add-int v37, v41, v42

    .line 956
    :cond_292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v41, v0

    if-gtz v41, :cond_4d3

    .line 957
    const/high16 v11, -0x8000

    .line 962
    .local v11, customNavHeightMode:I
    :goto_29c
    const/16 v41, 0x0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v42, v0

    if-ltz v42, :cond_2b2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v42, v0

    move/from16 v0, v42

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .end local v15           #height:I
    :cond_2b2
    sub-int v42, v15, v37

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 965
    .local v10, customNavHeight:I
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v41, v0

    const/16 v42, -0x2

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_4e8

    const/high16 v13, 0x4000

    .line 967
    .local v13, customNavWidthMode:I
    :goto_2c8
    const/16 v42, 0x0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v41, v0

    if-ltz v41, :cond_4ec

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v41, v0

    move/from16 v0, v41

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v41

    :goto_2de
    sub-int v41, v41, v21

    move/from16 v0, v42

    move/from16 v1, v41

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 970
    .local v12, customNavWidth:I
    if-eqz v4, :cond_4f0

    iget v0, v4, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v41, v0

    :goto_2ee
    and-int/lit8 v17, v41, 0x7

    .line 975
    .local v17, hgrav:I
    const/16 v41, 0x1

    move/from16 v0, v17

    move/from16 v1, v41

    if-ne v0, v1, :cond_310

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v41, v0

    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_310

    .line 976
    move/from16 v0, v24

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v41

    mul-int/lit8 v12, v41, 0x2

    .line 979
    :cond_310
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    move/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V

    .line 982
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v41

    add-int v41, v41, v21

    sub-int v5, v5, v41

    .line 985
    .end local v4           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v10           #customNavHeight:I
    .end local v11           #customNavHeightMode:I
    .end local v12           #customNavWidth:I
    .end local v13           #customNavWidthMode:I
    .end local v17           #hgrav:I
    .end local v21           #horizontalMargin:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v37           #verticalMargin:I
    :cond_327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v41, v0

    if-nez v41, :cond_363

    if-eqz v34, :cond_363

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v42, v0

    const/high16 v43, 0x4000

    invoke-static/range {v42 .. v43}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 988
    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v42

    sub-int v42, v24, v42

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 991
    :cond_363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v41, v0

    if-gtz v41, :cond_54f

    .line 992
    const/16 v28, 0x0

    .line 993
    .local v28, measuredHeight:I
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_36f
    move/from16 v0, v22

    if-ge v0, v7, :cond_4f4

    .line 994
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    .line 995
    .local v36, v:Landroid/view/View;
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredHeight()I

    move-result v41

    add-int v30, v41, v38

    .line 996
    .local v30, paddedViewHeight:I
    move/from16 v0, v30

    move/from16 v1, v28

    if-le v0, v1, :cond_389

    .line 997
    move/from16 v28, v30

    .line 993
    :cond_389
    add-int/lit8 v22, v22, 0x1

    goto :goto_36f

    .line 829
    .end local v5           #availableWidth:I
    .end local v8           #childSpecHeight:I
    .end local v9           #contentWidth:I
    .end local v14           #customView:Landroid/view/View;
    .end local v16           #heightMode:I
    .end local v18           #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v22           #i:I
    .end local v24           #leftOfCenter:I
    .end local v27           #maxHeight:I
    .end local v28           #measuredHeight:I
    .end local v30           #paddedViewHeight:I
    .end local v31           #paddingLeft:I
    .end local v32           #paddingRight:I
    .end local v33           #rightOfCenter:I
    .end local v34           #showTitle:Z
    .end local v36           #v:Landroid/view/View;
    .end local v38           #verticalPadding:I
    :cond_38c
    new-instance v41, Ljava/lang/IllegalStateException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " can only be used "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 848
    .restart local v16       #heightMode:I
    :cond_3b4
    new-instance v41, Ljava/lang/IllegalStateException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " can only be used "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 855
    .restart local v9       #contentWidth:I
    :cond_3dc
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    goto/16 :goto_121

    .line 868
    .restart local v5       #availableWidth:I
    .restart local v8       #childSpecHeight:I
    .restart local v15       #height:I
    .restart local v24       #leftOfCenter:I
    .restart local v27       #maxHeight:I
    .restart local v31       #paddingLeft:I
    .restart local v32       #paddingRight:I
    .restart local v33       #rightOfCenter:I
    .restart local v38       #verticalPadding:I
    :cond_3e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v18, v0

    goto/16 :goto_153

    .line 876
    .restart local v18       #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v26       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3ea
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v41, v0

    const/high16 v42, 0x4000

    invoke-static/range {v41 .. v42}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .restart local v20       #homeWidthSpec:I
    goto/16 :goto_173

    .line 899
    .end local v20           #homeWidthSpec:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3f8
    const/16 v34, 0x0

    goto/16 :goto_23e

    .line 905
    .restart local v34       #showTitle:Z
    :pswitch_3fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    if-eqz v41, :cond_24f

    .line 906
    if-eqz v34, :cond_453

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v41, v0

    mul-int/lit8 v23, v41, 0x2

    .line 907
    .local v23, itemPaddingSize:I
    :goto_40e
    const/16 v41, 0x0

    sub-int v42, v5, v23

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 908
    const/16 v41, 0x0

    sub-int v42, v24, v23

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    const/high16 v42, -0x8000

    move/from16 v0, v42

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    const/high16 v43, 0x4000

    move/from16 v0, v43

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v43

    invoke-virtual/range {v41 .. v43}, Landroid/widget/LinearLayout;->measure(II)V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v25

    .line 913
    .local v25, listNavWidth:I
    const/16 v41, 0x0

    sub-int v42, v5, v25

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 914
    const/16 v41, 0x0

    sub-int v42, v24, v25

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 915
    goto/16 :goto_24f

    .line 906
    .end local v23           #itemPaddingSize:I
    .end local v25           #listNavWidth:I
    :cond_453
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v23, v0

    goto :goto_40e

    .line 918
    :pswitch_45a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v41, v0

    if-eqz v41, :cond_24f

    .line 919
    if-eqz v34, :cond_4b1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v41, v0

    mul-int/lit8 v23, v41, 0x2

    .line 920
    .restart local v23       #itemPaddingSize:I
    :goto_46c
    const/16 v41, 0x0

    sub-int v42, v5, v23

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 921
    const/16 v41, 0x0

    sub-int v42, v24, v23

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v41, v0

    const/high16 v42, -0x8000

    move/from16 v0, v42

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    const/high16 v43, 0x4000

    move/from16 v0, v43

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v43

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v35

    .line 926
    .local v35, tabWidth:I
    const/16 v41, 0x0

    sub-int v42, v5, v35

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 927
    const/16 v41, 0x0

    sub-int v42, v24, v35

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto/16 :goto_24f

    .line 919
    .end local v23           #itemPaddingSize:I
    .end local v35           #tabWidth:I
    :cond_4b1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v23, v0

    goto :goto_46c

    .line 936
    .restart local v14       #customView:Landroid/view/View;
    :cond_4b8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v41, v0

    and-int/lit8 v41, v41, 0x10

    if-eqz v41, :cond_25c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v41, v0

    if-eqz v41, :cond_25c

    .line 938
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_25c

    .line 943
    .restart local v26       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4d0
    const/4 v4, 0x0

    goto/16 :goto_278

    .line 959
    .restart local v4       #ablp:Landroid/app/ActionBar$LayoutParams;
    .restart local v21       #horizontalMargin:I
    .restart local v37       #verticalMargin:I
    :cond_4d3
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v41, v0

    const/16 v42, -0x2

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_4e5

    const/high16 v11, 0x4000

    .restart local v11       #customNavHeightMode:I
    :goto_4e3
    goto/16 :goto_29c

    .end local v11           #customNavHeightMode:I
    :cond_4e5
    const/high16 v11, -0x8000

    goto :goto_4e3

    .line 965
    .end local v15           #height:I
    .restart local v10       #customNavHeight:I
    .restart local v11       #customNavHeightMode:I
    :cond_4e8
    const/high16 v13, -0x8000

    goto/16 :goto_2c8

    .restart local v13       #customNavWidthMode:I
    :cond_4ec
    move/from16 v41, v5

    .line 967
    goto/16 :goto_2de

    .line 970
    .restart local v12       #customNavWidth:I
    :cond_4f0
    const/16 v41, 0x13

    goto/16 :goto_2ee

    .line 1000
    .end local v4           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v10           #customNavHeight:I
    .end local v11           #customNavHeightMode:I
    .end local v12           #customNavWidth:I
    .end local v13           #customNavWidthMode:I
    .end local v21           #horizontalMargin:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v37           #verticalMargin:I
    .restart local v22       #i:I
    .restart local v28       #measuredHeight:I
    :cond_4f4
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1005
    .end local v22           #i:I
    .end local v28           #measuredHeight:I
    :goto_4fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v41, v0

    if-eqz v41, :cond_510

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v41, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1009
    :cond_510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    if-eqz v41, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_5a

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v42, v0

    mul-int/lit8 v42, v42, 0x2

    sub-int v42, v9, v42

    const/high16 v43, 0x4000

    invoke-static/range {v42 .. v43}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v43

    const/high16 v44, -0x8000

    invoke-static/range {v43 .. v44}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v43

    invoke-virtual/range {v41 .. v43}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_5a

    .line 1002
    :cond_54f
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_4fb

    .line 903
    nop

    :pswitch_data_558
    .packed-switch 0x1
        :pswitch_3fc
        :pswitch_45a
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "p"

    .prologue
    .line 1184
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 1186
    .local v1, state:Lcom/android/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/android/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1188
    iget v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_23

    .line 1190
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1191
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_23

    .line 1192
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1196
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_23
    iget-boolean v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_2a

    .line 1197
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1199
    :cond_2a
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 1170
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1171
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1173
    .local v0, state:Lcom/android/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_1d

    .line 1174
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1177
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1179
    return-object v0
.end method

.method public setCallback(Landroid/app/ActionBar$OnNavigationListener;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    .line 361
    return-void
.end method

.method public setCollapsable(Z)V
    .registers 2
    .parameter "collapsable"

    .prologue
    .line 786
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    .line 787
    return-void
.end method

.method public setContentHeight(I)V
    .registers 4
    .parameter "height"

    .prologue
    .line 1511
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->enableHTCActionBar:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1515
    :goto_5
    return-void

    .line 1514
    :cond_6
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    goto :goto_5
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 783
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 470
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    .line 471
    .local v0, showCustom:Z
    :goto_7
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 472
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 474
    :cond_12
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 475
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 476
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 478
    :cond_1f
    return-void

    .line 470
    .end local v0           #showCustom:Z
    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setDisplayOptions(I)V
    .registers 13
    .parameter "options"

    .prologue
    const/16 v7, 0x8

    const/4 v0, -0x1

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 553
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v9, v0, :cond_99

    .line 554
    .local v0, flagsChanged:I
    :goto_9
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 556
    and-int/lit8 v9, v0, 0x1f

    if-eqz v9, :cond_be

    .line 557
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_9f

    move v4, v8

    .line 558
    .local v4, showHome:Z
    :goto_14
    if-eqz v4, :cond_a2

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v9, :cond_a2

    move v5, v6

    .line 559
    .local v5, vis:I
    :goto_1b
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 561
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_33

    .line 562
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_a5

    move v3, v8

    .line 563
    .local v3, setUp:Z
    :goto_29
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 569
    if-eqz v3, :cond_33

    .line 570
    invoke-virtual {p0, v8}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 574
    .end local v3           #setUp:Z
    :cond_33
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_49

    .line 575
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_a7

    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_a7

    move v2, v8

    .line 576
    .local v2, logoVis:Z
    :goto_40
    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v2, :cond_a9

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_46
    invoke-virtual {v10, v9}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 579
    .end local v2           #logoVis:Z
    :cond_49
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_54

    .line 580
    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_ac

    .line 581
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 587
    :cond_54
    :goto_54
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_76

    and-int/lit8 v9, v0, 0x6

    if-eqz v9, :cond_76

    .line 589
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_b2

    move v1, v8

    .line 590
    .local v1, homeAsUp:Z
    :goto_63
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v4, :cond_6a

    if-eqz v1, :cond_b4

    move v7, v6

    :cond_6a
    :goto_6a
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_b6

    if-eqz v1, :cond_b6

    :goto_73
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 594
    .end local v1           #homeAsUp:Z
    :cond_76
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_87

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v6, :cond_87

    .line 595
    and-int/lit8 v6, p1, 0x10

    if-eqz v6, :cond_b8

    .line 596
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 602
    :cond_87
    :goto_87
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 608
    .end local v4           #showHome:Z
    .end local v5           #vis:I
    :goto_8a
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_c2

    .line 609
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 617
    :goto_98
    return-void

    .line 553
    .end local v0           #flagsChanged:I
    :cond_99
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v9

    goto/16 :goto_9

    .restart local v0       #flagsChanged:I
    :cond_9f
    move v4, v6

    .line 557
    goto/16 :goto_14

    .restart local v4       #showHome:Z
    :cond_a2
    move v5, v7

    .line 558
    goto/16 :goto_1b

    .restart local v5       #vis:I
    :cond_a5
    move v3, v6

    .line 562
    goto :goto_29

    :cond_a7
    move v2, v6

    .line 575
    goto :goto_40

    .line 576
    .restart local v2       #logoVis:Z
    :cond_a9
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_46

    .line 583
    .end local v2           #logoVis:Z
    :cond_ac
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_54

    :cond_b2
    move v1, v6

    .line 589
    goto :goto_63

    .line 590
    .restart local v1       #homeAsUp:Z
    :cond_b4
    const/4 v7, 0x4

    goto :goto_6a

    :cond_b6
    move v8, v6

    .line 591
    goto :goto_73

    .line 598
    .end local v1           #homeAsUp:Z
    :cond_b8
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_87

    .line 604
    .end local v4           #showHome:Z
    .end local v5           #vis:I
    :cond_be
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->invalidate()V

    goto :goto_8a

    .line 610
    :cond_c2
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_d9

    .line 611
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10404b6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_98

    .line 614
    :cond_d9
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10404b5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_98
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 688
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_b

    .line 689
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 691
    :cond_b
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 699
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 6
    .parameter "tabs"

    .prologue
    const/4 v2, 0x1

    .line 345
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_a

    .line 346
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 348
    :cond_a
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 349
    if-eqz p1, :cond_2f

    move v1, v2

    :goto_f
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 350
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_2e

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2e

    .line 351
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 352
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 353
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 354
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 355
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 357
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2e
    return-void

    .line 349
    :cond_2f
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 541
    if-nez p1, :cond_13

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 550
    :goto_12
    return-void

    .line 543
    :cond_13
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2c

    .line 544
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 547
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_12
.end method

.method public setIcon(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 628
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 629
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "icon"

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 621
    if-eqz p1, :cond_13

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    .line 623
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 625
    :cond_13
    return-void
.end method

.method public setListMenuAnchorView(Landroid/view/View;)V
    .registers 3
    .parameter "anchor"

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 1533
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setListMenuAnchorView(Landroid/view/View;)V

    .line 1536
    :cond_9
    return-void
.end method

.method public setListMenuOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 1524
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 1525
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setListMenuOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1526
    :cond_b
    return-void
.end method

.method public setLogo(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 639
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 640
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "logo"

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 633
    if-eqz p1, :cond_f

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    .line 634
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 636
    :cond_f
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 11
    .parameter "menu"
    .parameter "cb"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 364
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_7

    .line 428
    :cond_6
    :goto_6
    return-void

    .line 366
    :cond_7
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_19

    .line 367
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 368
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_19
    move-object v0, p1

    .line 371
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 372
    .local v0, builder:Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 373
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_31

    .line 374
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 375
    .local v3, oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_31

    .line 376
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 379
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :cond_31
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-nez v4, :cond_53

    .line 380
    new-instance v4, Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 381
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 382
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v5, 0x102022a

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setId(I)V

    .line 383
    new-instance v4, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 387
    :cond_53
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 389
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_99

    .line 390
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 393
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 394
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 395
    .local v2, menuView:Lcom/android/internal/view/menu/ActionMenuView;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 396
    .restart local v3       #oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_85

    if-eq v3, p0, :cond_85

    .line 397
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 399
    :cond_85
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :goto_88
    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 426
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarView;->enableHTCActionBar:Z

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_6

    .line 427
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuView;->disableLayoutDivider()V

    goto/16 :goto_6

    .line 401
    .end local v2           #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    :cond_99
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 403
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 406
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 408
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 409
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 410
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 411
    .restart local v2       #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_e7

    .line 412
    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 413
    .restart local v3       #oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_da

    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eq v3, v4, :cond_da

    .line 414
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 416
    :cond_da
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 417
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v2, v1}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_88

    .line 420
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :cond_e7
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_88
.end method

.method public setNavigationMode(I)V
    .registers 8
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    .line 643
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 644
    .local v0, oldMode:I
    if-eq p1, v0, :cond_10

    .line 645
    packed-switch v0, :pswitch_data_84

    .line 657
    :cond_8
    :goto_8
    packed-switch p1, :pswitch_data_8c

    .line 681
    :cond_b
    :goto_b
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 682
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 684
    :cond_10
    return-void

    .line 647
    :pswitch_11
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_8

    .line 648
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_8

    .line 652
    :pswitch_1b
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_8

    .line 653
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_8

    .line 659
    :pswitch_29
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_57

    .line 660
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x10102d7

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 662
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x10102f4

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 664
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 666
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 667
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_57
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_68

    .line 670
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 672
    :cond_68
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 673
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_b

    .line 676
    :pswitch_75
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_b

    .line 677
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_b

    .line 645
    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1b
    .end packed-switch

    .line 657
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_75
    .end packed-switch
.end method

.method public setSplitActionBar(Z)V
    .registers 5
    .parameter "splitActionBar"

    .prologue
    .line 315
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v1, p1, :cond_33

    .line 316
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_24

    .line 317
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 318
    .local v0, oldParent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_17

    .line 319
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 321
    :cond_17
    if-eqz p1, :cond_34

    .line 322
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_24

    .line 323
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 329
    .end local v0           #oldParent:Landroid/view/ViewGroup;
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_30

    .line 330
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_3a

    const/4 v1, 0x0

    :goto_2d
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 332
    :cond_30
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 334
    :cond_33
    return-void

    .line 326
    .restart local v0       #oldParent:Landroid/view/ViewGroup;
    :cond_34
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_24

    .line 330
    .end local v0           #oldParent:Landroid/view/ViewGroup;
    :cond_3a
    const/16 v1, 0x8

    goto :goto_2d
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 7
    .parameter "subtitle"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 526
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 527
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_38

    .line 528
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_39

    move v1, v2

    :goto_13
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3b

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_30
    const/4 v0, 0x1

    .line 533
    .local v0, visible:Z
    :goto_31
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3d

    :goto_35
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 535
    .end local v0           #visible:Z
    :cond_38
    return-void

    :cond_39
    move v1, v3

    .line 529
    goto :goto_13

    :cond_3b
    move v0, v2

    .line 530
    goto :goto_31

    .restart local v0       #visible:Z
    :cond_3d
    move v2, v3

    .line 533
    goto :goto_35
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 492
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 493
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2
    .parameter "cb"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 282
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_7

    .line 503
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 505
    :cond_7
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method
