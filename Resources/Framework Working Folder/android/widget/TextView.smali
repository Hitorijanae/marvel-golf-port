.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/widget/HtcIfTextView;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$5;,
        Landroid/widget/TextView$SCATDHandler;,
        Landroid/widget/TextView$MenuWrapper;,
        Landroid/widget/TextView$HtcPastePositionListener;,
        Landroid/widget/TextView$SelectionModifierCursorController;,
        Landroid/widget/TextView$InsertionPointCursorController;,
        Landroid/widget/TextView$CursorController;,
        Landroid/widget/TextView$SelectionEndHandleView;,
        Landroid/widget/TextView$SelectionStartHandleView;,
        Landroid/widget/TextView$InsertionHandleView;,
        Landroid/widget/TextView$HandleView;,
        Landroid/widget/TextView$ActionPopupWindow;,
        Landroid/widget/TextView$SelectionActionModeCallback;,
        Landroid/widget/TextView$SuggestionsPopupWindow;,
        Landroid/widget/TextView$PinnedPopupWindow;,
        Landroid/widget/TextView$PositionListener;,
        Landroid/widget/TextView$TextViewPositionListener;,
        Landroid/widget/TextView$DragLocalState;,
        Landroid/widget/TextView$MenuHandler;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$Blink;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$EasyEditPopupWindow;,
        Landroid/widget/TextView$EasyEditSpanController;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CorrectionHighlighter;,
        Landroid/widget/TextView$ErrorPopup;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$TextAlign;,
        Landroid/widget/TextView$InputMethodState;,
        Landroid/widget/TextView$InputContentType;,
        Landroid/widget/TextView$Drawables;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final BLINK:I = 0x1f4

.field private static BLINK_BLACK:I = 0x0

.field private static BLINK_WHITE:I = 0x0

.field private static final CURSOR_WIDTH:F = 2.0f

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field private static final DirectionLEFT:I = 0x3

.field private static final DirectionRIGHT:I = 0x4

.field private static final EMPTY_SPANNED:Landroid/text/Spanned; = null

.field private static final EMS:I = 0x1

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field public static final HTC_TIMESTAMP:Ljava/lang/String; = "HTC_MODIFIED_CLIPDATA="

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_LOOKUP:I = 0x54d

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECTION_MODE:I = 0x102002d

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SHARE:I = 0x54e

.field private static final ID_START_SELECTING_TEXT:I = 0x1020028

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I = null

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final PIXELS:I = 0x2

.field private static final PREDRAW_DONE:I = 0x2

.field private static final PREDRAW_NOT_REGISTERED:I = 0x0

.field private static final PREDRAW_PENDING:I = 0x1

.field private static final PRIORITY:I = 0x64

.field private static final SANS:I = 0x1

.field public static final SC_ADDTODIC_SCAN:Ljava/lang/String; = "com.htc.android.htcime.rescanword"

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field public static final STYLED_ANNOTATION_SPAN_KEY:Ljava/lang/String; = "styledtext"

#the value of this static final field might be set in the static constructor
.field private static final THEMEABLE:Z = false

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics; = null

.field private static final VERY_WIDE:I = 0x100000

.field private static final bArabicDisplay:Z

.field private static final isTablet:Z

.field private static mCurBlinkBlack:Z

.field private static mIsBlackTimeShorter:Z

.field private static mPreviousSkinPackage:Ljava/lang/String;

.field private static mSCATDPROCESSING:Z

.field private static mTextColorHighlight:I

.field private static sCursorControllerTempRect:Landroid/graphics/Rect;

.field private static sLastCutOrCopyTime:J

.field private static final sTempRect:Landroid/graphics/RectF;

.field private static final sTmpPosition:[F


# instance fields
.field private final ANCHOR_FLY_THRESHOLD_MILLI:I

.field private final ANCHOR_ROLLBACK_THRESHOLD_MILLI:I

.field private checkMetaStatus:Z

.field private mAllowTransformationLengthChange:Z

.field private mAnchorHeight:I

.field private mAnchorLastMovedIndex:I

.field private mAnchorLastMovedMilli:J

.field private mAutoLinkMask:I

.field private mBlink:Landroid/widget/TextView$Blink;

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mCapOld:I

.field private mChangeTimes:I

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mContextMenuTriggeredByKey:Z

.field private mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

.field private mCreatedWithASelection:Z

.field private mCurHintTextColor:I

.field private mCurTextColor:I

.field private mCurrentAlpha:I

.field private mCurrentDirection:I

.field private mCursorCount:I

.field private final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field private mCursorDrawableRes:I

.field private mCursorVisible:Z

.field private mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mDPadCenterIsDown:Z

.field private mDesiredHeightAtMeasure:I

.field private mDiscardNextActionUp:Z

.field private mDispatchTemporaryDetach:Z

.field private mDispatchToTheOtherAnchor:Z

.field private mDonotPassToLeft:Z

.field private mDrawables:Landroid/widget/TextView$Drawables;

.field private mEasyUpHardDownTriggered:Z

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEnterKeyIsDown:Z

.field private mError:Ljava/lang/CharSequence;

.field private mErrorWasChanged:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFirstDirection:I

.field private mFlags:I

.field private mFnOld:I

.field private mFreezesText:Z

.field private mFrozenWithFocus:Z

.field private mGravity:I

.field private mHasCustomContextMenu:Z

.field private mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHookIME:Ljava/lang/Runnable;

.field private mHorizontallyScrolling:Z

.field private mIgnoreActionUpEvent:Z

.field private mIgnoreSetText:Z

.field private mInBatchEditControllers:Z

.field private mIncludePad:Z

.field private mInput:Landroid/text/method/KeyListener;

.field mInputContentType:Landroid/widget/TextView$InputContentType;

.field protected mInputMethodState:Landroid/widget/TextView$InputMethodState;

.field private mInputType:I

.field private mInsertionControllerEnabled:Z

.field private mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

.field private mIsChildOfActionBarView:Z

.field private mIsInQuickActioMode:Z

.field private mIsInTextSelectionMode:Z

.field private mIsLongPressed:Z

.field private mIsMessage:Z

.field private mIsSCTimeoutclosed:Z

.field private mLastDownPositionX:F

.field private mLastDownPositionY:F

.field private mLastLine:I

.field private mLastScroll:J

.field protected mLayout:Landroid/text/Layout;

.field private mLayoutAlignment:Landroid/text/Layout$Alignment;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLongpressWhiteSpace:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeControlledByAp:Z

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field private mPassToLeftAnchor:Z

.field private mPasteWindowHider:Ljava/lang/Runnable;

.field private mPopup:Landroid/widget/TextView$ErrorPopup;

.field private mPositionListener:Landroid/widget/TextView$PositionListener;

.field private mPreDirection:I

.field private mPreDrawState:I

.field private mPreviousX:F

.field final mRemoveMagnifier:Z

.field private mResolvedDrawables:Z

.field private mRestartMarquee:Z

.field mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

.field mSCATDQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScrolled:Z

.field private mScroller:Landroid/widget/Scroller;

.field protected mSelectAChar:Z

.field private mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectTxtPaint:Landroid/text/TextPaint;

.field private mSelectionActionMode:Landroid/view/ActionMode;

.field private mSelectionControllerEnabled:Z

.field protected mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

.field private mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

.field private mSelectionMoved:Z

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShowCursor:J

.field private mShowErrorAfterAttach:Z

.field private mSingleLine:Z

.field private mSoftInputShownOnFocus:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mSpellChecker:Landroid/widget/SpellChecker;

.field private final mSquaredTouchSlopDistance:I

.field private mStatusBarWindowOffset:I

.field private mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field private mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field private mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextAlign:Landroid/widget/TextView$TextAlign;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mTextEditSuggestionItemLayout:I

.field private mTextIsSelectable:Z

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSelectHandleLeftRes:I

.field private mTextSelectHandleRes:I

.field private mTextSelectHandleRightRes:I

.field private mTextSelectedColor:I

.field private mTouchFocusSelected:Z

.field mTpHWRdebug:Z

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUserSetTextScaleX:Z

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x1f4

    const/16 v4, 0x19

    const/16 v5, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v1, v4, :cond_10

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v1, v4, :cond_97

    :cond_10
    move v1, v3

    :goto_11
    sput-boolean v1, Landroid/widget/TextView;->bArabicDisplay:Z

    .line 312
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    if-eqz v1, :cond_9a

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9a

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string/jumbo v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    move v1, v3

    :goto_2b
    sput-boolean v1, Landroid/widget/TextView;->THEMEABLE:Z

    .line 317
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    sput-boolean v1, Landroid/widget/TextView;->isTablet:Z

    .line 460
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 461
    .local v0, p:Landroid/graphics/Paint;
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 463
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 495
    const-string v1, ""

    sput-object v1, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    .line 496
    sput v2, Landroid/widget/TextView;->mTextColorHighlight:I

    .line 6838
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 13474
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    .line 13513
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    .line 13514
    const/4 v1, 0x2

    new-array v1, v1, [F

    sput-object v1, Landroid/widget/TextView;->sTmpPosition:[F

    .line 13522
    sput v6, Landroid/widget/TextView;->BLINK_BLACK:I

    .line 13523
    sput v6, Landroid/widget/TextView;->BLINK_WHITE:I

    .line 13524
    sput-boolean v3, Landroid/widget/TextView;->mCurBlinkBlack:Z

    .line 13525
    sput-boolean v2, Landroid/widget/TextView;->mIsBlackTimeShorter:Z

    .line 13528
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7b

    if-eq v1, v4, :cond_72

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x61

    if-ne v1, v4, :cond_9c

    .line 13530
    :cond_72
    const/16 v1, 0xfa

    sput v1, Landroid/widget/TextView;->BLINK_BLACK:I

    .line 13531
    sput v5, Landroid/widget/TextView;->BLINK_WHITE:I

    .line 13532
    sput-boolean v3, Landroid/widget/TextView;->mIsBlackTimeShorter:Z

    .line 13553
    :cond_7a
    :goto_7a
    new-array v1, v2, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 13555
    new-instance v1, Landroid/text/SpannedString;

    const-string v4, ""

    invoke-direct {v1, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 13556
    const/16 v1, 0x14

    sput v1, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 13562
    new-array v1, v3, [I

    const v3, 0x101034d

    aput v3, v1, v2

    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    .line 14104
    sput-boolean v2, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    return-void

    .end local v0           #p:Landroid/graphics/Paint;
    :cond_97
    move v1, v2

    .line 254
    goto/16 :goto_11

    :cond_9a
    move v1, v2

    .line 312
    goto :goto_2b

    .line 13534
    .restart local v0       #p:Landroid/graphics/Paint;
    :cond_9c
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3e

    if-eq v1, v4, :cond_a8

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x89

    if-ne v1, v4, :cond_7a

    .line 13536
    :cond_a8
    sput v5, Landroid/widget/TextView;->BLINK_BLACK:I

    .line 13537
    sput v5, Landroid/widget/TextView;->BLINK_WHITE:I

    goto :goto_7a
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 488
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 492
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 493
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 74
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 502
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 261
    const/16 v67, 0xff

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCurrentAlpha:I

    .line 263
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempCoords:[I

    .line 276
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 277
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    .line 280
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mScrolled:Z

    .line 281
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAnchorHeight:I

    .line 282
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mRemoveMagnifier:Z

    .line 284
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 285
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 292
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    .line 294
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 309
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z

    .line 310
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastLine:I

    .line 318
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsChildOfActionBarView:Z

    .line 344
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 346
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 347
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 352
    const/16 v67, 0x3

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 391
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 406
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 412
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    .line 418
    sget-object v67, Landroid/widget/TextView$TextAlign;->INHERIT:Landroid/widget/TextView$TextAlign;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    .line 424
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mResolvedDrawables:Z

    .line 431
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 6455
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTpHWRdebug:Z

    .line 9168
    new-instance v67, Landroid/widget/TextView$3;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHookIME:Ljava/lang/Runnable;

    .line 9470
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    .line 11588
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAChar:Z

    .line 11591
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mPassToLeftAnchor:Z

    .line 11592
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z

    .line 11593
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDonotPassToLeft:Z

    .line 11598
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mChangeTimes:I

    .line 11599
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreviousX:F

    .line 11600
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCurrentDirection:I

    .line 11601
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDirection:I

    .line 11602
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mFirstDirection:I

    .line 13422
    sget-object v67, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 13424
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 13435
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 13441
    const v67, 0x6633b5e5

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 13442
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectedColor:I

    .line 13454
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCursorVisible:Z

    .line 13460
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 13461
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    .line 13468
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 13469
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 13470
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    .line 13477
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 13479
    const v67, 0x800033

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    .line 13483
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    .line 13485
    const/high16 v67, 0x3f80

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    .line 13486
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    .line 13487
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTextIsSelectable:Z

    .line 13493
    const v67, 0x7fffffff

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 13494
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 13495
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    .line 13496
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    .line 13498
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaximum:I

    .line 13499
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaxMode:I

    .line 13501
    const v67, 0x7fffffff

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    .line 13502
    const/16 v67, 0x2

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 13503
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 13504
    const/16 v67, 0x2

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 13507
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 13508
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 13512
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 13544
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 13551
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 13554
    sget-object v67, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 13567
    new-instance v67, Landroid/graphics/Rect;

    invoke-direct/range {v67 .. v67}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mVisibleRect:Landroid/graphics/Rect;

    .line 13568
    const/16 v67, 0x2

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mFlags:I

    .line 13569
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mStatusBarWindowOffset:I

    .line 13570
    new-instance v67, Landroid/widget/TextView$MenuWrapper;

    const/16 v68, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    move-object/from16 v2, v68

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$MenuWrapper;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

    .line 13572
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIgnoreSetText:Z

    .line 13655
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHasCustomContextMenu:Z

    .line 13799
    const-wide/16 v67, 0x0

    move-wide/from16 v0, v67

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mAnchorLastMovedMilli:J

    .line 13800
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAnchorLastMovedIndex:I

    .line 13801
    const/16 v67, 0x3c

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->ANCHOR_ROLLBACK_THRESHOLD_MILLI:I

    .line 13802
    const/16 v67, 0x64

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->ANCHOR_FLY_THRESHOLD_MILLI:I

    .line 13953
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->checkMetaStatus:Z

    .line 14101
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    .line 14103
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    .line 14174
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsMessage:Z

    .line 14175
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsSCTimeoutclosed:Z

    .line 14184
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    .line 503
    const-string v67, ""

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    .line 506
    .local v47, res:Landroid/content/res/Resources;
    invoke-virtual/range {v47 .. v47}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v17

    .line 508
    .local v17, compat:Landroid/content/res/CompatibilityInfo;
    new-instance v67, Landroid/text/TextPaint;

    const/16 v68, 0x1

    invoke-direct/range {v67 .. v68}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v67, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v68

    move-object/from16 v0, v68

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v68, v0

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v67, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 516
    new-instance v67, Landroid/graphics/Paint;

    const/16 v68, 0x1

    invoke-direct/range {v67 .. v68}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v67, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 520
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 522
    new-instance v67, Landroid/text/TextPaint;

    const/16 v68, 0x1

    invoke-direct/range {v67 .. v68}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSelectTxtPaint:Landroid/text/TextPaint;

    .line 524
    const/16 v56, 0x0

    .line 525
    .local v56, textColorHighlight:I
    const/16 v55, 0x0

    .line 526
    .local v55, textColor:Landroid/content/res/ColorStateList;
    const/16 v57, 0x0

    .line 527
    .local v57, textColorHint:Landroid/content/res/ColorStateList;
    const/16 v58, 0x0

    .line 528
    .local v58, textColorLink:Landroid/content/res/ColorStateList;
    const/16 v59, 0xf

    .line 529
    .local v59, textSize:I
    const/16 v63, -0x1

    .line 530
    .local v63, typefaceIndex:I
    const/16 v53, -0x1

    .line 531
    .local v53, styleIndex:I
    const/4 v6, 0x0

    .line 533
    .local v6, allCaps:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v60

    .line 541
    .local v60, theme:Landroid/content/res/Resources$Theme;
    sget-object v67, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    const/16 v68, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, p2

    move-object/from16 v2, v67

    move/from16 v3, p3

    move/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 543
    .local v5, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 544
    .local v8, appearance:Landroid/content/res/TypedArray;
    const/16 v67, 0x0

    const/16 v68, -0x1

    move/from16 v0, v67

    move/from16 v1, v68

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 546
    .local v7, ap:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 547
    const/16 v67, -0x1

    move/from16 v0, v67

    if-eq v7, v0, :cond_39e

    .line 548
    sget-object v67, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    invoke-virtual {v0, v7, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 551
    :cond_39e
    if-eqz v8, :cond_49b

    .line 552
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v40

    .line 553
    .local v40, n:I
    const/16 v34, 0x0

    .local v34, i:I
    :goto_3a6
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_498

    .line 554
    move/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    .line 556
    .local v9, attr:I
    packed-switch v9, :pswitch_data_d5e

    .line 553
    :goto_3b5
    add-int/lit8 v34, v34, 0x1

    goto :goto_3a6

    .line 559
    :pswitch_3b8
    sget-boolean v67, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v67, :cond_458

    .line 560
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getSkinPackageName()Ljava/lang/String;

    move-result-object v52

    .line 561
    .local v52, skinPackage:Ljava/lang/String;
    sget-boolean v67, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v67, :cond_3f9

    sget-object v67, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    move-object/from16 v0, v52

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_3f9

    const/16 v51, 0x1

    .line 562
    .local v51, skinChange:Z
    :goto_3d2
    if-eqz v51, :cond_454

    .line 563
    sput-object v52, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    .line 565
    if-eqz v52, :cond_3f0

    const-string v67, ""

    move-object/from16 v0, v52

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_3f0

    const-string v67, "default"

    move-object/from16 v0, v52

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_3fc

    .line 566
    :cond_3f0
    move/from16 v0, v56

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    .line 581
    :goto_3f6
    sput v56, Landroid/widget/TextView;->mTextColorHighlight:I

    goto :goto_3b5

    .line 561
    .end local v51           #skinChange:Z
    :cond_3f9
    const/16 v51, 0x0

    goto :goto_3d2

    .line 570
    .restart local v51       #skinChange:Z
    :cond_3fc
    :try_start_3fc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v61

    .line 571
    .local v61, themeres:Landroid/content/res/Resources;
    const-string/jumbo v67, "input_text_selection_highlight"

    const-string v68, "color"

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v61

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_426
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3fc .. :try_end_426} :catch_428
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3fc .. :try_end_426} :catch_44c

    move-result v56

    goto :goto_3f6

    .line 573
    .end local v61           #themeres:Landroid/content/res/Resources;
    :catch_428
    move-exception v31

    .line 574
    .local v31, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v67, "TextView"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "No skin package matches with the given name"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    move/from16 v0, v56

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    .line 579
    goto :goto_3f6

    .line 577
    .end local v31           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_44c
    move-exception v35

    .line 578
    .local v35, idNotFoundEx:Landroid/content/res/Resources$NotFoundException;
    move/from16 v0, v56

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    goto :goto_3f6

    .line 583
    .end local v35           #idNotFoundEx:Landroid/content/res/Resources$NotFoundException;
    :cond_454
    sget v56, Landroid/widget/TextView;->mTextColorHighlight:I

    goto/16 :goto_3b5

    .line 585
    .end local v51           #skinChange:Z
    .end local v52           #skinPackage:Ljava/lang/String;
    :cond_458
    move/from16 v0, v56

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    .line 586
    goto/16 :goto_3b5

    .line 589
    :pswitch_460
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v55

    .line 590
    goto/16 :goto_3b5

    .line 593
    :pswitch_466
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v57

    .line 594
    goto/16 :goto_3b5

    .line 597
    :pswitch_46c
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v58

    .line 598
    goto/16 :goto_3b5

    .line 601
    :pswitch_472
    move/from16 v0, v59

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v59

    .line 602
    goto/16 :goto_3b5

    .line 605
    :pswitch_47a
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    .line 606
    goto/16 :goto_3b5

    .line 609
    :pswitch_484
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    .line 610
    goto/16 :goto_3b5

    .line 613
    :pswitch_48e
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto/16 :goto_3b5

    .line 618
    .end local v9           #attr:I
    :cond_498
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 621
    .end local v34           #i:I
    .end local v40           #n:I
    :cond_49b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v29

    .line 622
    .local v29, editable:Z
    const/16 v36, 0x0

    .line 623
    .local v36, inputMethod:Ljava/lang/CharSequence;
    const/16 v42, 0x0

    .line 624
    .local v42, numeric:I
    const/16 v18, 0x0

    .line 625
    .local v18, digits:Ljava/lang/CharSequence;
    const/16 v45, 0x0

    .line 626
    .local v45, phone:Z
    const/4 v11, 0x0

    .line 627
    .local v11, autotext:Z
    const/4 v10, -0x1

    .line 628
    .local v10, autocap:I
    const/4 v13, 0x0

    .line 629
    .local v13, buffertype:I
    const/16 v48, 0x0

    .line 630
    .local v48, selectallonfocus:Z
    const/16 v21, 0x0

    .local v21, drawableLeft:Landroid/graphics/drawable/Drawable;
    const/16 v25, 0x0

    .local v25, drawableTop:Landroid/graphics/drawable/Drawable;
    const/16 v23, 0x0

    .line 631
    .local v23, drawableRight:Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .local v19, drawableBottom:Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    .local v24, drawableStart:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .line 632
    .local v20, drawableEnd:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 633
    .local v22, drawablePadding:I
    const/16 v30, -0x1

    .line 634
    .local v30, ellipsize:I
    const/16 v50, 0x0

    .line 635
    .local v50, singleLine:Z
    const/16 v39, -0x1

    .line 636
    .local v39, maxlength:I
    const-string v54, ""

    .line 637
    .local v54, text:Ljava/lang/CharSequence;
    const/16 v33, 0x0

    .line 638
    .local v33, hint:Ljava/lang/CharSequence;
    const/16 v49, 0x0

    .line 639
    .local v49, shadowcolor:I
    const/16 v26, 0x0

    .local v26, dx:F
    const/16 v27, 0x0

    .local v27, dy:F
    const/16 v46, 0x0

    .line 640
    .local v46, r:F
    const/16 v43, 0x0

    .line 641
    .local v43, password:Z
    const/16 v37, 0x0

    .line 643
    .local v37, inputType:I
    sget-object v67, Lcom/android/internal/R$styleable;->TextView:[I

    const/16 v68, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, p2

    move-object/from16 v2, v67

    move/from16 v3, p3

    move/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 646
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v40

    .line 647
    .restart local v40       #n:I
    const/16 v34, 0x0

    .restart local v34       #i:I
    :goto_4e8
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_8ee

    .line 648
    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    .line 650
    .restart local v9       #attr:I
    packed-switch v9, :pswitch_data_d72

    .line 647
    :cond_4f7
    :goto_4f7
    :pswitch_4f7
    add-int/lit8 v34, v34, 0x1

    goto :goto_4e8

    .line 652
    :pswitch_4fa
    move/from16 v0, v29

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v29

    .line 653
    goto :goto_4f7

    .line 656
    :pswitch_501
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v36

    .line 657
    goto :goto_4f7

    .line 660
    :pswitch_506
    move/from16 v0, v42

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v42

    .line 661
    goto :goto_4f7

    .line 664
    :pswitch_50d
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 665
    goto :goto_4f7

    .line 668
    :pswitch_512
    move/from16 v0, v45

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v45

    .line 669
    goto :goto_4f7

    .line 672
    :pswitch_519
    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 673
    goto :goto_4f7

    .line 676
    :pswitch_51e
    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 677
    goto :goto_4f7

    .line 680
    :pswitch_523
    invoke-virtual {v5, v9, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 681
    goto :goto_4f7

    .line 684
    :pswitch_528
    move/from16 v0, v48

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    .line 685
    goto :goto_4f7

    .line 688
    :pswitch_52f
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_4f7

    .line 692
    :pswitch_53e
    const/16 v67, 0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_4f7

    .line 702
    :pswitch_54d
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 703
    goto :goto_4f7

    .line 706
    :pswitch_552
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 707
    goto :goto_4f7

    .line 710
    :pswitch_557
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 711
    goto :goto_4f7

    .line 714
    :pswitch_55c
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 715
    goto :goto_4f7

    .line 718
    :pswitch_561
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 719
    goto :goto_4f7

    .line 722
    :pswitch_566
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 723
    goto :goto_4f7

    .line 726
    :pswitch_56b
    move/from16 v0, v22

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    .line 727
    goto :goto_4f7

    .line 730
    :pswitch_572
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_4f7

    .line 734
    :pswitch_583
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_4f7

    .line 738
    :pswitch_594
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_4f7

    .line 742
    :pswitch_5a5
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_4f7

    .line 746
    :pswitch_5b6
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_4f7

    .line 750
    :pswitch_5c7
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_4f7

    .line 754
    :pswitch_5d8
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_4f7

    .line 758
    :pswitch_5e9
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_4f7

    .line 762
    :pswitch_5fa
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_4f7

    .line 766
    :pswitch_60b
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_4f7

    .line 770
    :pswitch_61c
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_4f7

    .line 774
    :pswitch_62d
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_4f7

    .line 778
    :pswitch_63e
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4f7

    .line 782
    :pswitch_64f
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    .line 783
    goto/16 :goto_4f7

    .line 786
    :pswitch_655
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v54

    .line 787
    goto/16 :goto_4f7

    .line 790
    :pswitch_65b
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    if-eqz v67, :cond_4f7

    .line 791
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_4f7

    .line 796
    :pswitch_670
    move/from16 v0, v50

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v50

    .line 797
    goto/16 :goto_4f7

    .line 800
    :pswitch_678
    move/from16 v0, v30

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 801
    goto/16 :goto_4f7

    .line 804
    :pswitch_680
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_4f7

    .line 808
    :pswitch_695
    const/16 v67, 0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    if-nez v67, :cond_4f7

    .line 809
    const/16 v67, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_4f7

    .line 814
    :pswitch_6aa
    const/16 v67, 0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    if-nez v67, :cond_4f7

    .line 815
    const/16 v67, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_4f7

    .line 820
    :pswitch_6bf
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v39

    .line 821
    goto/16 :goto_4f7

    .line 824
    :pswitch_6c9
    const/high16 v67, 0x3f80

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_4f7

    .line 828
    :pswitch_6da
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_4f7

    .line 832
    :pswitch_6ea
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v49

    .line 833
    goto/16 :goto_4f7

    .line 836
    :pswitch_6f4
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v26

    .line 837
    goto/16 :goto_4f7

    .line 840
    :pswitch_6fe
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 841
    goto/16 :goto_4f7

    .line 844
    :pswitch_708
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v46

    .line 845
    goto/16 :goto_4f7

    .line 848
    :pswitch_712
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v67

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_4f7

    .line 853
    :pswitch_725
    sget-boolean v67, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v67, :cond_741

    sget-object v67, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    const-string v68, ""

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_741

    sget-object v67, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    if-eqz v67, :cond_741

    sget-object v67, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    const-string v68, "default"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_4f7

    .line 854
    :cond_741
    move/from16 v0, v56

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    goto/16 :goto_4f7

    .line 858
    :pswitch_749
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v55

    .line 859
    goto/16 :goto_4f7

    .line 862
    :pswitch_74f
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v57

    .line 863
    goto/16 :goto_4f7

    .line 866
    :pswitch_755
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v58

    .line 867
    goto/16 :goto_4f7

    .line 870
    :pswitch_75b
    move/from16 v0, v59

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v59

    .line 871
    goto/16 :goto_4f7

    .line 874
    :pswitch_763
    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    .line 875
    goto/16 :goto_4f7

    .line 878
    :pswitch_76b
    move/from16 v0, v53

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    .line 879
    goto/16 :goto_4f7

    .line 882
    :pswitch_773
    move/from16 v0, v43

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v43

    .line 883
    goto/16 :goto_4f7

    .line 886
    :pswitch_77b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v67, v0

    move/from16 v0, v67

    float-to-int v0, v0

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_4f7

    .line 890
    :pswitch_799
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_4f7

    .line 894
    :pswitch_7ad
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v37

    .line 895
    goto/16 :goto_4f7

    .line 898
    :pswitch_7bb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    if-nez v67, :cond_7ce

    .line 899
    new-instance v67, Landroid/widget/TextView$InputContentType;

    invoke-direct/range {v67 .. v67}, Landroid/widget/TextView$InputContentType;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 901
    :cond_7ce
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v68

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    goto/16 :goto_4f7

    .line 906
    :pswitch_7ee
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    if-nez v67, :cond_801

    .line 907
    new-instance v67, Landroid/widget/TextView$InputContentType;

    invoke-direct/range {v67 .. v67}, Landroid/widget/TextView$InputContentType;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 909
    :cond_801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v67

    iput-object v0, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_4f7

    .line 913
    :pswitch_813
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    if-nez v67, :cond_826

    .line 914
    new-instance v67, Landroid/widget/TextView$InputContentType;

    invoke-direct/range {v67 .. v67}, Landroid/widget/TextView$InputContentType;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 916
    :cond_826
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v68

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    goto/16 :goto_4f7

    .line 921
    :pswitch_846
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_4f7

    .line 926
    :pswitch_853
    const/16 v67, 0x0

    :try_start_855
    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_862
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_855 .. :try_end_862} :catch_864
    .catch Ljava/io/IOException; {:try_start_855 .. :try_end_862} :catch_874

    goto/16 :goto_4f7

    .line 927
    :catch_864
    move-exception v28

    .line 928
    .local v28, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v67, "TextView"

    const-string v68, "Failure reading input extras"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4f7

    .line 929
    .end local v28           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_874
    move-exception v28

    .line 930
    .local v28, e:Ljava/io/IOException;
    const-string v67, "TextView"

    const-string v68, "Failure reading input extras"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4f7

    .line 935
    .end local v28           #e:Ljava/io/IOException;
    :pswitch_884
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_4f7

    .line 939
    :pswitch_894
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_4f7

    .line 943
    :pswitch_8a4
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_4f7

    .line 947
    :pswitch_8b4
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_4f7

    .line 951
    :pswitch_8c4
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_4f7

    .line 955
    :pswitch_8d4
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTextIsSelectable:Z

    goto/16 :goto_4f7

    .line 959
    :pswitch_8e4
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto/16 :goto_4f7

    .line 963
    .end local v9           #attr:I
    :cond_8ee
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 965
    sget-object v12, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 967
    .local v12, bufferType:Landroid/widget/TextView$BufferType;
    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xfff

    move/from16 v64, v0

    .line 969
    .local v64, variation:I
    const/16 v67, 0x81

    move/from16 v0, v64

    move/from16 v1, v67

    if-ne v0, v1, :cond_aa8

    const/16 v44, 0x1

    .line 971
    .local v44, passwordInputType:Z
    :goto_903
    const/16 v67, 0xe1

    move/from16 v0, v64

    move/from16 v1, v67

    if-ne v0, v1, :cond_aac

    const/16 v66, 0x1

    .line 973
    .local v66, webPasswordInputType:Z
    :goto_90d
    const/16 v67, 0x12

    move/from16 v0, v64

    move/from16 v1, v67

    if-ne v0, v1, :cond_ab0

    const/16 v41, 0x1

    .line 976
    .local v41, numberPasswordInputType:Z
    :goto_917
    if-eqz v36, :cond_aec

    .line 980
    :try_start_919
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_920
    .catch Ljava/lang/ClassNotFoundException; {:try_start_919 .. :try_end_920} :catch_ab4

    move-result-object v14

    .line 986
    .local v14, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_921
    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/text/method/KeyListener;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;
    :try_end_92d
    .catch Ljava/lang/InstantiationException; {:try_start_921 .. :try_end_92d} :catch_abf
    .catch Ljava/lang/IllegalAccessException; {:try_start_921 .. :try_end_92d} :catch_aca

    .line 993
    if-eqz v37, :cond_ad5

    move/from16 v67, v37

    :goto_931
    :try_start_931
    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I
    :try_end_937
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_931 .. :try_end_937} :catch_ae1

    .line 1083
    .end local v14           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_937
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    and-int/lit8 v67, v67, 0xf

    const/16 v68, 0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_c1a

    .line 1084
    if-nez v43, :cond_94b

    if-eqz v44, :cond_963

    .line 1085
    :cond_94b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    and-int/lit16 v0, v0, -0xff1

    move/from16 v67, v0

    move/from16 v0, v67

    or-int/lit16 v0, v0, 0x80

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 1088
    :cond_963
    if-eqz v66, :cond_97d

    .line 1089
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    and-int/lit16 v0, v0, -0xff1

    move/from16 v67, v0

    move/from16 v0, v67

    or-int/lit16 v0, v0, 0xe0

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 1099
    :cond_97d
    :goto_97d
    if-eqz v48, :cond_98f

    .line 1100
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 1102
    sget-object v67, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v67

    if-ne v12, v0, :cond_98f

    .line 1103
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1106
    :cond_98f
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1108
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1109
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1113
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1114
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v50

    move/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 1116
    if-eqz v50, :cond_9cc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v67, v0

    if-nez v67, :cond_9cc

    if-gez v30, :cond_9cc

    .line 1117
    const/16 v30, 0x3

    .line 1120
    :cond_9cc
    packed-switch v30, :pswitch_data_e0c

    .line 1142
    :goto_9cf
    if-eqz v55, :cond_c9b

    .end local v55           #textColor:Landroid/content/res/ColorStateList;
    :goto_9d1
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1143
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1144
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1145
    if-eqz v56, :cond_9ef

    .line 1146
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1148
    :cond_9ef
    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v67, v0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1150
    if-eqz v6, :cond_a0d

    .line 1151
    new-instance v67, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v68

    invoke-direct/range {v67 .. v68}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1154
    :cond_a0d
    if-nez v43, :cond_a15

    if-nez v44, :cond_a15

    if-nez v66, :cond_a15

    if-eqz v41, :cond_ca3

    .line 1155
    :cond_a15
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1156
    const/16 v63, 0x3

    .line 1162
    :cond_a22
    :goto_a22
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 1164
    if-eqz v49, :cond_a3a

    .line 1165
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1168
    :cond_a3a
    if-ltz v39, :cond_cbb

    .line 1169
    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    new-instance v69, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v69

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v69, v67, v68

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1174
    :goto_a58
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1175
    if-eqz v33, :cond_a68

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1182
    :cond_a68
    sget-object v67, Lcom/android/internal/R$styleable;->View:[I

    const/16 v68, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v67

    move/from16 v3, p3

    move/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v67, v0

    if-nez v67, :cond_a8a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v67, v0

    if-eqz v67, :cond_cc6

    :cond_a8a
    const/16 v32, 0x1

    .line 1187
    .local v32, focusable:Z
    :goto_a8c
    move/from16 v16, v32

    .line 1188
    .local v16, clickable:Z
    move/from16 v38, v32

    .line 1190
    .local v38, longClickable:Z
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v40

    .line 1191
    const/16 v34, 0x0

    :goto_a96
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_ce2

    .line 1192
    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    .line 1194
    .restart local v9       #attr:I
    sparse-switch v9, :sswitch_data_e18

    .line 1191
    :goto_aa5
    add-int/lit8 v34, v34, 0x1

    goto :goto_a96

    .line 969
    .end local v9           #attr:I
    .end local v16           #clickable:Z
    .end local v32           #focusable:Z
    .end local v38           #longClickable:Z
    .end local v41           #numberPasswordInputType:Z
    .end local v44           #passwordInputType:Z
    .end local v66           #webPasswordInputType:Z
    .restart local v55       #textColor:Landroid/content/res/ColorStateList;
    :cond_aa8
    const/16 v44, 0x0

    goto/16 :goto_903

    .line 971
    .restart local v44       #passwordInputType:Z
    :cond_aac
    const/16 v66, 0x0

    goto/16 :goto_90d

    .line 973
    .restart local v66       #webPasswordInputType:Z
    :cond_ab0
    const/16 v41, 0x0

    goto/16 :goto_917

    .line 981
    .restart local v41       #numberPasswordInputType:Z
    :catch_ab4
    move-exception v31

    .line 982
    .local v31, ex:Ljava/lang/ClassNotFoundException;
    new-instance v67, Ljava/lang/RuntimeException;

    move-object/from16 v0, v67

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v67

    .line 987
    .end local v31           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v14       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_abf
    move-exception v31

    .line 988
    .local v31, ex:Ljava/lang/InstantiationException;
    new-instance v67, Ljava/lang/RuntimeException;

    move-object/from16 v0, v67

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v67

    .line 989
    .end local v31           #ex:Ljava/lang/InstantiationException;
    :catch_aca
    move-exception v31

    .line 990
    .local v31, ex:Ljava/lang/IllegalAccessException;
    new-instance v67, Ljava/lang/RuntimeException;

    move-object/from16 v0, v67

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v67

    .line 993
    .end local v31           #ex:Ljava/lang/IllegalAccessException;
    :cond_ad5
    :try_start_ad5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v67, v0

    invoke-interface/range {v67 .. v67}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_ade
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_ad5 .. :try_end_ade} :catch_ae1

    move-result v67

    goto/16 :goto_931

    .line 996
    :catch_ae1
    move-exception v28

    .line 997
    .local v28, e:Ljava/lang/IncompatibleClassChangeError;
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_937

    .line 999
    .end local v14           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v28           #e:Ljava/lang/IncompatibleClassChangeError;
    :cond_aec
    if-eqz v18, :cond_b0b

    .line 1000
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1004
    if-eqz v37, :cond_b08

    move/from16 v67, v37

    :goto_b00
    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_937

    :cond_b08
    const/16 v67, 0x1

    goto :goto_b00

    .line 1006
    :cond_b0b
    if-eqz v37, :cond_b25

    .line 1007
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v67

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 1009
    invoke-static/range {v37 .. v37}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v67

    if-nez v67, :cond_b22

    const/16 v50, 0x1

    :goto_b20
    goto/16 :goto_937

    :cond_b22
    const/16 v50, 0x0

    goto :goto_b20

    .line 1010
    :cond_b25
    if-eqz v45, :cond_b3b

    .line 1011
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1012
    const/16 v37, 0x3

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_937

    .line 1013
    :cond_b3b
    if-eqz v42, :cond_b7f

    .line 1014
    and-int/lit8 v67, v42, 0x2

    if-eqz v67, :cond_b77

    const/16 v67, 0x1

    move/from16 v68, v67

    :goto_b45
    and-int/lit8 v67, v42, 0x4

    if-eqz v67, :cond_b7c

    const/16 v67, 0x1

    :goto_b4b
    move/from16 v0, v68

    move/from16 v1, v67

    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1016
    const/16 v37, 0x2

    .line 1017
    and-int/lit8 v67, v42, 0x2

    if-eqz v67, :cond_b65

    .line 1018
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x1000

    move/from16 v37, v0

    .line 1020
    :cond_b65
    and-int/lit8 v67, v42, 0x4

    if-eqz v67, :cond_b6f

    .line 1021
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x2000

    move/from16 v37, v0

    .line 1023
    :cond_b6f
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_937

    .line 1014
    :cond_b77
    const/16 v67, 0x0

    move/from16 v68, v67

    goto :goto_b45

    :cond_b7c
    const/16 v67, 0x0

    goto :goto_b4b

    .line 1024
    :cond_b7f
    if-nez v11, :cond_b87

    const/16 v67, -0x1

    move/from16 v0, v67

    if-eq v10, v0, :cond_bbb

    .line 1027
    :cond_b87
    const/16 v37, 0x1

    .line 1029
    packed-switch v10, :pswitch_data_e26

    .line 1046
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1050
    .local v15, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_b8e
    invoke-static {v11, v15}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1051
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_937

    .line 1031
    .end local v15           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_ba0
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1032
    .restart local v15       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x4000

    move/from16 v37, v0

    .line 1033
    goto :goto_b8e

    .line 1036
    .end local v15           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_ba9
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1037
    .restart local v15       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x2000

    move/from16 v37, v0

    .line 1038
    goto :goto_b8e

    .line 1041
    .end local v15           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_bb2
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1042
    .restart local v15       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x1000

    move/from16 v37, v0

    .line 1043
    goto :goto_b8e

    .line 1052
    .end local v15           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_bbb
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v67, v0

    if-eqz v67, :cond_beb

    .line 1054
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 1055
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1056
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1058
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 1060
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_937

    .line 1061
    :cond_beb
    if-eqz v29, :cond_c01

    .line 1062
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1063
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_937

    .line 1065
    :cond_c01
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1067
    packed-switch v13, :pswitch_data_e30

    goto/16 :goto_937

    .line 1069
    :pswitch_c0e
    sget-object v12, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    .line 1070
    goto/16 :goto_937

    .line 1072
    :pswitch_c12
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1073
    goto/16 :goto_937

    .line 1075
    :pswitch_c16
    sget-object v12, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_937

    .line 1092
    :cond_c1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    and-int/lit8 v67, v67, 0xf

    const/16 v68, 0x2

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_97d

    .line 1093
    if-eqz v41, :cond_97d

    .line 1094
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    and-int/lit16 v0, v0, -0xff1

    move/from16 v67, v0

    or-int/lit8 v67, v67, 0x10

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_97d

    .line 1122
    :pswitch_c42
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9cf

    .line 1125
    :pswitch_c4d
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9cf

    .line 1128
    :pswitch_c58
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9cf

    .line 1131
    :pswitch_c63
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v67

    if-eqz v67, :cond_c89

    .line 1132
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1133
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 1138
    :goto_c7e
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9cf

    .line 1135
    :cond_c89
    const/16 v67, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1136
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_c7e

    .line 1142
    :cond_c9b
    const/high16 v67, -0x100

    invoke-static/range {v67 .. v67}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v55

    goto/16 :goto_9d1

    .line 1157
    .end local v55           #textColor:Landroid/content/res/ColorStateList;
    :cond_ca3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    and-int/lit16 v0, v0, 0xfff

    move/from16 v67, v0

    const/16 v68, 0x81

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_a22

    .line 1159
    const/16 v63, 0x3

    goto/16 :goto_a22

    .line 1171
    :cond_cbb
    sget-object v67, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_a58

    .line 1186
    :cond_cc6
    const/16 v32, 0x0

    goto/16 :goto_a8c

    .line 1196
    .restart local v9       #attr:I
    .restart local v16       #clickable:Z
    .restart local v32       #focusable:Z
    .restart local v38       #longClickable:Z
    :sswitch_cca
    move/from16 v0, v32

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    .line 1197
    goto/16 :goto_aa5

    .line 1200
    :sswitch_cd2
    move/from16 v0, v16

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 1201
    goto/16 :goto_aa5

    .line 1204
    :sswitch_cda
    move/from16 v0, v38

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    goto/16 :goto_aa5

    .line 1208
    .end local v9           #attr:I
    :cond_ce2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1210
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1211
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1212
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1214
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1216
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v65

    .line 1217
    .local v65, viewConfiguration:Landroid/view/ViewConfiguration;
    invoke-virtual/range {v65 .. v65}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v62

    .line 1218
    .local v62, touchSlop:I
    mul-int v67, v62, v62

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSquaredTouchSlopDistance:I

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    instance-of v0, v0, Landroid/text/Editable;

    move/from16 v67, v0

    if-eqz v67, :cond_d5d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v67

    if-eqz v67, :cond_d5d

    .line 1222
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->checkMetaStatus:Z

    .line 1225
    const-string/jumbo v67, "transparenthwr.debugmode"

    const-string v68, "false"

    invoke-static/range {v67 .. v68}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    const-string/jumbo v68, "true"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_d43

    .line 1226
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTpHWRdebug:Z

    .line 1229
    :cond_d43
    const-string v67, "com.android.mms"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_d5d

    .line 1230
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsMessage:Z

    .line 1232
    :cond_d5d
    return-void

    .line 556
    :pswitch_data_d5e
    .packed-switch 0x0
        :pswitch_472
        :pswitch_47a
        :pswitch_484
        :pswitch_460
        :pswitch_3b8
        :pswitch_466
        :pswitch_46c
        :pswitch_48e
    .end packed-switch

    .line 650
    :pswitch_data_d72
    .packed-switch 0x0
        :pswitch_712
        :pswitch_4f7
        :pswitch_75b
        :pswitch_763
        :pswitch_76b
        :pswitch_749
        :pswitch_725
        :pswitch_74f
        :pswitch_755
        :pswitch_678
        :pswitch_63e
        :pswitch_52f
        :pswitch_53e
        :pswitch_5e9
        :pswitch_583
        :pswitch_62d
        :pswitch_5c7
        :pswitch_523
        :pswitch_655
        :pswitch_64f
        :pswitch_6c9
        :pswitch_6aa
        :pswitch_572
        :pswitch_594
        :pswitch_5a5
        :pswitch_5b6
        :pswitch_5d8
        :pswitch_5fa
        :pswitch_60b
        :pswitch_61c
        :pswitch_65b
        :pswitch_773
        :pswitch_670
        :pswitch_528
        :pswitch_695
        :pswitch_6bf
        :pswitch_6ea
        :pswitch_6f4
        :pswitch_6fe
        :pswitch_708
        :pswitch_506
        :pswitch_50d
        :pswitch_512
        :pswitch_501
        :pswitch_51e
        :pswitch_519
        :pswitch_4fa
        :pswitch_6da
        :pswitch_552
        :pswitch_55c
        :pswitch_54d
        :pswitch_557
        :pswitch_56b
        :pswitch_77b
        :pswitch_799
        :pswitch_680
        :pswitch_7ad
        :pswitch_846
        :pswitch_853
        :pswitch_7bb
        :pswitch_7ee
        :pswitch_813
        :pswitch_894
        :pswitch_8a4
        :pswitch_8b4
        :pswitch_4f7
        :pswitch_4f7
        :pswitch_8d4
        :pswitch_4f7
        :pswitch_4f7
        :pswitch_884
        :pswitch_8c4
        :pswitch_8e4
        :pswitch_561
        :pswitch_566
    .end packed-switch

    .line 1120
    :pswitch_data_e0c
    .packed-switch 0x1
        :pswitch_c42
        :pswitch_c4d
        :pswitch_c58
        :pswitch_c63
    .end packed-switch

    .line 1194
    :sswitch_data_e18
    .sparse-switch
        0x12 -> :sswitch_cca
        0x1d -> :sswitch_cd2
        0x1e -> :sswitch_cda
    .end sparse-switch

    .line 1029
    :pswitch_data_e26
    .packed-switch 0x1
        :pswitch_ba0
        :pswitch_ba9
        :pswitch_bb2
    .end packed-switch

    .line 1067
    :pswitch_data_e30
    .packed-switch 0x0
        :pswitch_c0e
        :pswitch_c12
        :pswitch_c16
    .end packed-switch
.end method

.method private SCATDRemoveSpan(Ljava/lang/String;)V
    .registers 13
    .parameter "word"

    .prologue
    .line 14008
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Editable;

    .line 14009
    .local v1, editable:Landroid/text/Editable;
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-class v10, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v8, v9, v10}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/SuggestionSpan;

    .line 14010
    .local v6, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    array-length v2, v6

    .line 14012
    .local v2, sugg_span_count:I
    const/4 v7, 0x0

    .local v7, z:I
    :goto_15
    if-ge v7, v2, :cond_44

    .line 14013
    :try_start_17
    aget-object v8, v6, v7

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 14014
    .local v4, sugg_span_start:I
    aget-object v8, v6, v7

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 14017
    .local v3, sugg_span_end:I
    if-ltz v4, :cond_27

    if-gez v3, :cond_2a

    .line 14012
    :cond_27
    :goto_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 14020
    :cond_2a
    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 14022
    .local v5, sugg_string:Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 14023
    aget-object v8, v6, v7

    invoke-interface {v1, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3f} :catch_40

    goto :goto_27

    .line 14026
    .end local v3           #sugg_span_end:I
    .end local v4           #sugg_span_start:I
    .end local v5           #sugg_string:Ljava/lang/String;
    :catch_40
    move-exception v0

    .line 14027
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14030
    .end local v0           #e:Ljava/lang/Exception;
    :cond_44
    invoke-virtual {p0}, Landroid/widget/TextView;->SCATDProcessQueue()V

    .line 14031
    return-void
.end method

.method private SCATDRescanWord(Ljava/lang/String;)V
    .registers 13
    .parameter "word"

    .prologue
    const/4 v10, 0x0

    .line 14072
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Editable;

    .line 14073
    .local v1, editable:Landroid/text/Editable;
    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-class v9, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v10, v8, v9}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/SuggestionSpan;

    .line 14074
    .local v7, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    array-length v3, v7

    .line 14076
    .local v3, sugg_span_count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-ge v2, v3, :cond_43

    .line 14077
    :try_start_17
    aget-object v8, v7, v2

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 14078
    .local v5, sugg_span_start:I
    aget-object v8, v7, v2

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 14081
    .local v4, sugg_span_end:I
    if-ltz v5, :cond_27

    if-gez v4, :cond_2a

    .line 14076
    :cond_27
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 14084
    :cond_2a
    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 14086
    .local v6, sugg_string:Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 14087
    const/4 v8, 0x0

    invoke-direct {p0, v5, v4, v8}, Landroid/widget/TextView;->updateSpellCheckSpans(IIZ)V
    :try_end_3e
    .catchall {:try_start_17 .. :try_end_3e} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3e} :catch_3f

    goto :goto_27

    .line 14090
    .end local v4           #sugg_span_end:I
    .end local v5           #sugg_span_start:I
    .end local v6           #sugg_string:Ljava/lang/String;
    :catch_3f
    move-exception v0

    .line 14091
    .local v0, e:Ljava/lang/Exception;
    :try_start_40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4e

    .line 14093
    .end local v0           #e:Ljava/lang/Exception;
    :cond_43
    sput-boolean v10, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    .line 14096
    iget-object v8, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14097
    invoke-virtual {p0}, Landroid/widget/TextView;->SCATDProcessQueue()V

    .line 14098
    return-void

    .line 14093
    :catchall_4e
    move-exception v8

    sput-boolean v10, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    throw v8
.end method

.method static synthetic access$10100(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/TextView;->mSquaredTouchSlopDistance:I

    return v0
.end method

.method static synthetic access$10200(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10300(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10400(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$10500(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$10502(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$10600(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    return v0
.end method

.method static synthetic access$10700(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10800(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10900(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$10902(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11000(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    return v0
.end method

.method static synthetic access$11100(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11200(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11500(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    return v0
.end method

.method static synthetic access$11502(Landroid/widget/TextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    return p1
.end method

.method static synthetic access$11600(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11700(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11802(Landroid/widget/TextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-boolean p1, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    return p1
.end method

.method static synthetic access$11900(Landroid/widget/TextView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12000(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12502(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 253
    sput-boolean p0, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    return p0
.end method

.method static synthetic access$12600(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/widget/TextView;->SCATDRescanWord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12700(Landroid/widget/TextView;)Landroid/widget/SpellChecker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    return-object v0
.end method

.method static synthetic access$12702(Landroid/widget/TextView;Landroid/widget/SpellChecker;)Landroid/widget/SpellChecker;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-object p1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    return-object p1
.end method

.method static synthetic access$12802(Landroid/widget/TextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsSCTimeoutclosed:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method static synthetic access$1600(I)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-static {p0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 253
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$1900(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/widget/TextView;->checkMetaStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursorPath()V

    return-void
.end method

.method static synthetic access$2400()Z
    .registers 1

    .prologue
    .line 253
    sget-boolean v0, Landroid/widget/TextView;->mCurBlinkBlack:Z

    return v0
.end method

.method static synthetic access$2500()I
    .registers 1

    .prologue
    .line 253
    sget v0, Landroid/widget/TextView;->BLINK_WHITE:I

    return v0
.end method

.method static synthetic access$2600()I
    .registers 1

    .prologue
    .line 253
    sget v0, Landroid/widget/TextView;->BLINK_BLACK:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->hookIME()V

    return-void
.end method

.method static synthetic access$3000(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->canReplaceActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->showQuickAction()V

    return-void
.end method

.method static synthetic access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/widget/TextView;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/TextView;)Landroid/text/style/SuggestionRangeSpan;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    return-object v0
.end method

.method static synthetic access$3902(Landroid/widget/TextView;Landroid/text/style/SuggestionRangeSpan;)Landroid/text/style/SuggestionRangeSpan;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-object p1, p0, Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    return-object p1
.end method

.method static synthetic access$400(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    return v0
.end method

.method static synthetic access$5200(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Landroid/graphics/RectF;
    .registers 1

    .prologue
    .line 253
    sget-object v0, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    return v0
.end method

.method static synthetic access$6200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method static synthetic access$6300(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    return-object v0
.end method

.method static synthetic access$6402(Landroid/widget/TextView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-object p1, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$6500(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->isCursorInsideSuggestionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    return v0
.end method

.method static synthetic access$6900(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TextView;Z)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7100(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7202(Landroid/widget/TextView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput p1, p0, Landroid/widget/TextView;->mAnchorHeight:I

    return p1
.end method

.method static synthetic access$7300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7302(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$7500(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    return v0
.end method

.method static synthetic access$7600(Landroid/widget/TextView;)Landroid/widget/TextView$MenuWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

    return-object v0
.end method

.method static synthetic access$7900(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/TextView;->mStatusBarWindowOffset:I

    return v0
.end method

.method static synthetic access$8000(Landroid/widget/TextView;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Landroid/widget/TextView;Landroid/widget/TextView$CorrectionHighlighter;)Landroid/widget/TextView$CorrectionHighlighter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-object p1, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    return-object p1
.end method

.method static synthetic access$8100(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    return-void
.end method

.method static synthetic access$8200()Landroid/graphics/Rect;
    .registers 1

    .prologue
    .line 253
    sget-object v0, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8300(Landroid/widget/TextView;)Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/TextView;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8400(Landroid/widget/TextView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/TextView;->mPreviousX:F

    return v0
.end method

.method static synthetic access$8402(Landroid/widget/TextView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput p1, p0, Landroid/widget/TextView;->mPreviousX:F

    return p1
.end method

.method static synthetic access$8500(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z

    return v0
.end method

.method static synthetic access$8502(Landroid/widget/TextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-boolean p1, p0, Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z

    return p1
.end method

.method static synthetic access$8600(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/widget/TextView;->mDonotPassToLeft:Z

    return v0
.end method

.method static synthetic access$8602(Landroid/widget/TextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-boolean p1, p0, Landroid/widget/TextView;->mDonotPassToLeft:Z

    return p1
.end method

.method static synthetic access$8700(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z

    return v0
.end method

.method static synthetic access$8702(Landroid/widget/TextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-boolean p1, p0, Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z

    return p1
.end method

.method static synthetic access$8800(Landroid/widget/TextView;F)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/widget/TextView;->getDirection(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/TextView;->mFirstDirection:I

    return v0
.end method

.method static synthetic access$8902(Landroid/widget/TextView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput p1, p0, Landroid/widget/TextView;->mFirstDirection:I

    return p1
.end method

.method static synthetic access$9000(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/widget/TextView;->mPassToLeftAnchor:Z

    return v0
.end method

.method static synthetic access$9002(Landroid/widget/TextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-boolean p1, p0, Landroid/widget/TextView;->mPassToLeftAnchor:Z

    return p1
.end method

.method static synthetic access$9100(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/TextView;->mLastLine:I

    return v0
.end method

.method static synthetic access$9202(Landroid/widget/TextView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput p1, p0, Landroid/widget/TextView;->mLastLine:I

    return p1
.end method

.method static synthetic access$9300(Landroid/widget/TextView;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 253
    iget-wide v0, p0, Landroid/widget/TextView;->mAnchorLastMovedMilli:J

    return-wide v0
.end method

.method static synthetic access$9302(Landroid/widget/TextView;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-wide p1, p0, Landroid/widget/TextView;->mAnchorLastMovedMilli:J

    return-wide p1
.end method

.method static synthetic access$9400(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/TextView;->mAnchorLastMovedIndex:I

    return v0
.end method

.method static synthetic access$9402(Landroid/widget/TextView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput p1, p0, Landroid/widget/TextView;->mAnchorLastMovedIndex:I

    return p1
.end method

.method static synthetic access$9500(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    return v0
.end method

.method static synthetic access$9602(Landroid/widget/TextView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput p1, p0, Landroid/widget/TextView;->mChangeTimes:I

    return p1
.end method

.method static synthetic access$9702(Landroid/widget/TextView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput p1, p0, Landroid/widget/TextView;->mCurrentDirection:I

    return p1
.end method

.method static synthetic access$9802(Landroid/widget/TextView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput p1, p0, Landroid/widget/TextView;->mPreDirection:I

    return p1
.end method

.method static synthetic access$9900(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return v0
.end method

.method static synthetic access$9902(Landroid/widget/TextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return p1
.end method

.method private applySingleLine(ZZZ)V
    .registers 5
    .parameter "singleLine"
    .parameter "applyTransformation"
    .parameter "changeMaxLines"

    .prologue
    const/4 v0, 0x1

    .line 7657
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 7658
    if-eqz p1, :cond_15

    .line 7659
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 7660
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 7661
    if-eqz p2, :cond_14

    .line 7662
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 7673
    :cond_14
    :goto_14
    return-void

    .line 7665
    :cond_15
    if-eqz p3, :cond_1d

    .line 7666
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 7668
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 7669
    if-eqz p2, :cond_14

    .line 7670
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_14
.end method

.method private assumeLayout()V
    .registers 8

    .prologue
    .line 6488
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 6490
    .local v1, width:I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_14

    .line 6491
    const/4 v1, 0x0

    .line 6494
    :cond_14
    move v2, v1

    .line 6496
    .local v2, physicalWidth:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1b

    .line 6497
    const/high16 v1, 0x10

    .line 6500
    :cond_1b
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 6502
    return-void
.end method

.method private bringTextIntoView()Z
    .registers 16

    .prologue
    const/16 v14, 0x50

    const/4 v10, 0x1

    .line 7191
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v11, :cond_2d

    .line 7192
    const-string v11, "TextView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[bringTextIntoView] mLayout="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mText="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7195
    :cond_2d
    const/4 v5, 0x0

    .line 7196
    .local v5, line:I
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    if-ne v11, v14, :cond_3c

    .line 7197
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getLineCount()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .line 7200
    :cond_3c
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 7201
    .local v0, a:Landroid/text/Layout$Alignment;
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 7202
    .local v1, dir:I
    iget v11, p0, Landroid/widget/TextView;->mRight:I

    iget v12, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    sub-int v2, v11, v12

    .line 7203
    .local v2, hspace:I
    iget v11, p0, Landroid/widget/TextView;->mBottom:I

    iget v12, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v12

    sub-int v9, v11, v12

    .line 7204
    .local v9, vspace:I
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 7209
    .local v3, ht:I
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_ae

    .line 7210
    if-ne v1, v10, :cond_ab

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 7217
    :cond_76
    :goto_76
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_c1

    .line 7223
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->floor(F)F

    move-result v11

    float-to-int v4, v11

    .line 7224
    .local v4, left:I
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v6, v11

    .line 7226
    .local v6, right:I
    sub-int v11, v6, v4

    if-ge v11, v2, :cond_ba

    .line 7227
    add-int v11, v6, v4

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v2, 0x2

    sub-int v7, v11, v12

    .line 7242
    .end local v4           #left:I
    .end local v6           #right:I
    .local v7, scrollx:I
    :goto_9c
    if-ge v3, v9, :cond_df

    .line 7243
    const/4 v8, 0x0

    .line 7252
    .local v8, scrolly:I
    :goto_9f
    iget v11, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v7, v11, :cond_a7

    iget v11, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v8, v11, :cond_ea

    .line 7253
    :cond_a7
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->scrollTo(II)V

    .line 7256
    :goto_aa
    return v10

    .line 7210
    .end local v7           #scrollx:I
    .end local v8           #scrolly:I
    :cond_ab
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_76

    .line 7212
    :cond_ae
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_76

    .line 7213
    if-ne v1, v10, :cond_b7

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_b6
    goto :goto_76

    :cond_b7
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_b6

    .line 7229
    .restart local v4       #left:I
    .restart local v6       #right:I
    :cond_ba
    if-gez v1, :cond_bf

    .line 7230
    sub-int v7, v6, v2

    .restart local v7       #scrollx:I
    goto :goto_9c

    .line 7232
    .end local v7           #scrollx:I
    :cond_bf
    move v7, v4

    .restart local v7       #scrollx:I
    goto :goto_9c

    .line 7235
    .end local v4           #left:I
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_c1
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_d3

    .line 7236
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v6, v11

    .line 7237
    .restart local v6       #right:I
    sub-int v7, v6, v2

    .line 7238
    .restart local v7       #scrollx:I
    goto :goto_9c

    .line 7239
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_d3
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->floor(F)F

    move-result v11

    float-to-int v7, v11

    .restart local v7       #scrollx:I
    goto :goto_9c

    .line 7245
    :cond_df
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    if-ne v11, v14, :cond_e8

    .line 7246
    sub-int v8, v3, v9

    .restart local v8       #scrolly:I
    goto :goto_9f

    .line 7248
    .end local v8           #scrolly:I
    :cond_e8
    const/4 v8, 0x0

    .restart local v8       #scrolly:I
    goto :goto_9f

    .line 7256
    :cond_ea
    const/4 v10, 0x0

    goto :goto_aa
.end method

.method private canCopy()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 9401
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9409
    :cond_7
    :goto_7
    return v0

    .line 9405
    :cond_8
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9406
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private canCut()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 9389
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9397
    :cond_7
    :goto_7
    return v0

    .line 9393
    :cond_8
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_7

    .line 9394
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private canMarquee()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 7759
    iget v2, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 7760
    .local v0, width:I
    if-lez v0, :cond_32

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_31

    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_32

    :cond_31
    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method private canPaste()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 9414
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-eqz v6, :cond_61

    iget-object v6, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v6, :cond_61

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    if-ltz v6, :cond_61

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-ltz v6, :cond_61

    .line 9421
    :try_start_18
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 9423
    .local v0, clipboard:Landroid/content/ClipboardManager;
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    if-eqz v6, :cond_61

    .line 9426
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 9428
    .local v2, item:Landroid/content/ClipData$Item;
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_51

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_51

    .line 9440
    .end local v0           #clipboard:Landroid/content/ClipboardManager;
    .end local v2           #item:Landroid/content/ClipData$Item;
    :cond_50
    :goto_50
    return v4

    .line 9431
    .restart local v0       #clipboard:Landroid/content/ClipboardManager;
    .restart local v2       #item:Landroid/content/ClipData$Item;
    :cond_51
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 9432
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_61

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_5e} :catch_63

    move-result v6

    if-nez v6, :cond_50

    .end local v0           #clipboard:Landroid/content/ClipboardManager;
    .end local v2           #item:Landroid/content/ClipData$Item;
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_61
    :goto_61
    move v4, v5

    .line 9440
    goto :goto_50

    .line 9435
    :catch_63
    move-exception v1

    .line 9436
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "TextView"

    const-string v6, "Security exception"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61
.end method

.method private canReplaceActionMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11573
    sget-boolean v1, Landroid/widget/TextView;->isTablet:Z

    if-nez v1, :cond_6

    .line 11576
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-boolean v1, p0, Landroid/widget/TextView;->mIsChildOfActionBarView:Z

    if-nez v1, :cond_5

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method private canSelectText()Z
    .registers 2

    .prologue
    .line 9371
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private checkForRelayout()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 7136
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_14

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_93

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_93

    :cond_14
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_93

    :cond_1c
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_93

    .line 7142
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 7143
    .local v7, oldht:I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 7144
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_6d

    move v2, v6

    .line 7151
    .local v2, hintWant:I
    :goto_3e
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 7155
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_8c

    .line 7157
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_74

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_74

    .line 7159
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7183
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :goto_6c
    return-void

    .line 7144
    .restart local v1       #want:I
    .restart local v7       #oldht:I
    :cond_6d
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_3e

    .line 7165
    .restart local v2       #hintWant:I
    :cond_74
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_8c

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_88

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_8c

    .line 7167
    :cond_88
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_6c

    .line 7174
    :cond_8c
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7175
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_6c

    .line 7179
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :cond_93
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 7180
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7181
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_6c
.end method

.method private checkForResize()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 7095
    const/4 v1, 0x0

    .line 7097
    .local v1, sizeChanged:Z
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_21

    .line 7099
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_10

    .line 7100
    const/4 v1, 0x1

    .line 7101
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7105
    :cond_10
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_27

    .line 7106
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 7108
    .local v0, desiredHeight:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_21

    .line 7109
    const/4 v1, 0x1

    .line 7122
    .end local v0           #desiredHeight:I
    :cond_21
    :goto_21
    if-eqz v1, :cond_26

    .line 7123
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7126
    :cond_26
    return-void

    .line 7111
    :cond_27
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_21

    .line 7112
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v2, :cond_21

    .line 7113
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 7115
    .restart local v0       #desiredHeight:I
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v2, :cond_21

    .line 7116
    const/4 v1, 0x1

    goto :goto_21
.end method

.method private checkMetaStatus(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "editingBuffer"

    .prologue
    .line 13958
    iget-boolean v2, p0, Landroid/widget/TextView;->checkMetaStatus:Z

    if-nez v2, :cond_5

    .line 13972
    :cond_4
    :goto_4
    return-void

    .line 13960
    :cond_5
    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    const/16 v3, 0x800

    invoke-static {p1, v3}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    or-int v0, v2, v3

    .line 13964
    .local v0, caps:I
    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 13967
    .local v1, fn:I
    iget v2, p0, Landroid/widget/TextView;->mFnOld:I

    if-ne v2, v1, :cond_1f

    iget v2, p0, Landroid/widget/TextView;->mCapOld:I

    if-eq v2, v0, :cond_4

    .line 13968
    :cond_1f
    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->sendMetaStatusToIME(II)V

    .line 13969
    iput v1, p0, Landroid/widget/TextView;->mFnOld:I

    .line 13970
    iput v0, p0, Landroid/widget/TextView;->mCapOld:I

    goto :goto_4
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .registers 16
    .parameter "pop"
    .parameter "text"
    .parameter "tv"

    .prologue
    .line 4304
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 4305
    .local v11, wid:I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 4307
    .local v8, ht:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4309
    .local v3, defaultWidthInPixels:I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 4311
    .local v0, l:Landroid/text/Layout;
    const/4 v10, 0x0

    .line 4312
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_31
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_42

    .line 4313
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 4312
    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    .line 4320
    :cond_42
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4321
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4322
    return-void
.end method

.method private clearAndHook(Z)V
    .registers 6
    .parameter "needhook"

    .prologue
    .line 9182
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_22

    invoke-direct {p0}, Landroid/widget/TextView;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 9183
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mHookIME:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9184
    if-eqz p1, :cond_22

    .line 9185
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mHookIME:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9187
    :cond_22
    return-void
.end method

.method private compressText(F)Z
    .registers 9
    .parameter "width"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x3f80

    .line 6778
    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 6796
    :cond_b
    :goto_b
    return v2

    .line 6781
    :cond_c
    cmpl-float v4, p1, v6

    if-lez v4, :cond_b

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v3, :cond_b

    iget-boolean v4, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_b

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_b

    .line 6783
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 6784
    .local v1, textWidth:F
    add-float v4, v1, v5

    sub-float/2addr v4, p1

    div-float v0, v4, p1

    .line 6785
    .local v0, overflow:F
    cmpl-float v4, v0, v6

    if-lez v4, :cond_b

    const v4, 0x3d8f5c29

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_b

    .line 6786
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float v4, v5, v0

    const v5, 0x3ba3d70a

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 6787
    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move v2, v3

    .line 6792
    goto :goto_b
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 7524
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 7525
    .local v0, horizontalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 7526
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 7528
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 7529
    .local v1, verticalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 7530
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 7531
    return-void
.end method

.method private convertToLocalHorizontalCoordinate(F)F
    .registers 4
    .parameter "x"

    .prologue
    .line 13066
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 13068
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 13069
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 13070
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 13071
    return p1
.end method

.method private static desired(Landroid/text/Layout;)I
    .registers 7
    .parameter "layout"

    .prologue
    .line 6800
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 6801
    .local v2, n:I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 6802
    .local v3, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 6807
    .local v1, max:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_21

    .line 6808
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1e

    .line 6809
    const/4 v4, -0x1

    .line 6816
    :goto_1d
    return v4

    .line 6807
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 6812
    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-ge v0, v2, :cond_2f

    .line 6813
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 6812
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 6816
    :cond_2f
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1d
.end method

.method private disallowInterceptTouchEvent(Z)V
    .registers 4
    .parameter "disallow"

    .prologue
    .line 13648
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 13649
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    .line 13650
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 13652
    :cond_d
    return-void
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .registers 11
    .parameter "keyCode"
    .parameter "event"
    .parameter "otherEvent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5616
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v3

    .line 5733
    :goto_a
    return v2

    .line 5620
    :cond_b
    sparse-switch p1, :sswitch_data_f0

    .line 5678
    :cond_e
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_c0

    .line 5679
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 5681
    const/4 v0, 0x1

    .line 5682
    .local v0, doDown:Z
    if-eqz p3, :cond_a1

    .line 5684
    :try_start_18
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 5685
    iget-object v6, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 5686
    .local v1, handled:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_98
    .catch Ljava/lang/AbstractMethodError; {:try_start_18 .. :try_end_28} :catch_9d

    .line 5687
    const/4 v0, 0x0

    .line 5688
    if-eqz v1, :cond_9e

    .line 5695
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    move v2, v4

    .line 5689
    goto :goto_a

    .line 5622
    .end local v0           #doDown:Z
    .end local v1           #handled:Z
    :sswitch_30
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5627
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_50

    .line 5630
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_50

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v3, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 5633
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v5, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    move v2, v4

    .line 5635
    goto :goto_a

    .line 5642
    :cond_50
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_5e

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5644
    :cond_5e
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_66

    move v2, v3

    .line 5645
    goto :goto_a

    :cond_66
    move v2, v4

    .line 5647
    goto :goto_a

    .line 5653
    :sswitch_68
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5654
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    .line 5655
    goto :goto_a

    .line 5661
    :sswitch_76
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-nez v2, :cond_82

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5662
    :cond_82
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    .line 5663
    goto :goto_a

    .line 5671
    :sswitch_8a
    iget-object v2, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_92

    iget-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v2, :cond_e

    .line 5672
    :cond_92
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    move v2, v4

    .line 5673
    goto/16 :goto_a

    .line 5695
    .restart local v0       #doDown:Z
    :catchall_98
    move-exception v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v2

    .line 5691
    :catch_9d
    move-exception v2

    .line 5695
    :cond_9e
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 5699
    :cond_a1
    if-eqz v0, :cond_c0

    .line 5700
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 5701
    iget-object v6, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 5702
    .restart local v1       #handled:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 5703
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 5704
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v2}, Landroid/widget/TextView;->checkMetaStatus(Ljava/lang/CharSequence;)V

    .line 5705
    if-eqz v1, :cond_c0

    move v2, v5

    goto/16 :goto_a

    .line 5712
    .end local v0           #doDown:Z
    .end local v1           #handled:Z
    :cond_c0
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_ed

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_ed

    .line 5713
    const/4 v0, 0x1

    .line 5714
    .restart local v0       #doDown:Z
    if-eqz p3, :cond_dc

    .line 5716
    :try_start_cb
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v5, p0, v2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_d4
    .catch Ljava/lang/AbstractMethodError; {:try_start_cb .. :try_end_d4} :catch_db

    move-result v1

    .line 5718
    .restart local v1       #handled:Z
    const/4 v0, 0x0

    .line 5719
    if-eqz v1, :cond_dc

    move v2, v4

    .line 5720
    goto/16 :goto_a

    .line 5722
    .end local v1           #handled:Z
    :catch_db
    move-exception v2

    .line 5727
    :cond_dc
    if-eqz v0, :cond_ed

    .line 5728
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v4, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 5729
    const/4 v2, 0x2

    goto/16 :goto_a

    .end local v0           #doDown:Z
    :cond_ed
    move v2, v3

    .line 5733
    goto/16 :goto_a

    .line 5620
    :sswitch_data_f0
    .sparse-switch
        0x4 -> :sswitch_8a
        0x17 -> :sswitch_68
        0x3d -> :sswitch_76
        0x42 -> :sswitch_30
    .end sparse-switch
.end method

.method private downgradeEasyCorrectionSpans()V
    .registers 8

    .prologue
    .line 8975
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_33

    .line 8976
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    .line 8977
    .local v2, spannable:Landroid/text/Spannable;
    const/4 v4, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    .line 8979
    .local v3, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    array-length v4, v3

    if-ge v1, v4, :cond_33

    .line 8980
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 8981
    .local v0, flags:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_30

    and-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_30

    .line 8983
    and-int/lit8 v0, v0, -0x2

    .line 8984
    aget-object v4, v3, v1

    invoke-virtual {v4, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 8979
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 8988
    .end local v0           #flags:I
    .end local v1           #i:I
    .end local v2           #spannable:Landroid/text/Spannable;
    .end local v3           #suggestionSpans:[Landroid/text/style/SuggestionSpan;
    :cond_33
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .registers 7
    .parameter "canvas"
    .parameter "cursorOffsetVertical"

    .prologue
    const/4 v3, 0x0

    .line 5350
    if-eqz p2, :cond_19

    const/4 v1, 0x1

    .line 5351
    .local v1, translate:Z
    :goto_4
    if-eqz v1, :cond_a

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5352
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget v2, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v0, v2, :cond_1b

    .line 5353
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5352
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 5350
    .end local v0           #i:I
    .end local v1           #translate:Z
    :cond_19
    const/4 v1, 0x0

    goto :goto_4

    .line 5355
    .restart local v0       #i:I
    .restart local v1       #translate:Z
    :cond_1b
    if-eqz v1, :cond_22

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5356
    :cond_22
    return-void
.end method

.method private static extractRangeEndFromLong(J)I
    .registers 4
    .parameter "range"

    .prologue
    .line 9461
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static extractRangeStartFromLong(J)I
    .registers 4
    .parameter "range"

    .prologue
    .line 9457
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private extractedTextModeWillBeStarted()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 11249
    instance-of v2, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v2, :cond_12

    .line 11250
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 11251
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v1, 0x1

    .line 11253
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_12
    return v1
.end method

.method private static findNearestNonwhiteOffset(Landroid/text/Spannable;I)I
    .registers 7
    .parameter "sp"
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 13893
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ge v4, p1, :cond_f

    :cond_d
    move v1, v3

    .line 13929
    :cond_e
    :goto_e
    return v1

    .line 13896
    :cond_f
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-le p1, v4, :cond_19

    .line 13897
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    .line 13899
    :cond_19
    const/4 v1, -0x1

    .line 13901
    .local v1, left:I
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_1c
    if-le v0, v3, :cond_29

    .line 13902
    invoke-interface {p0, v0}, Landroid/text/Spannable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_49

    .line 13903
    move v1, v0

    .line 13908
    :cond_29
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    .line 13910
    .local v2, right:I
    move v0, p1

    :goto_2e
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ge v0, v4, :cond_3f

    .line 13911
    invoke-interface {p0, v0}, Landroid/text/Spannable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 13912
    move v2, v0

    .line 13917
    :cond_3f
    if-ne v1, v3, :cond_4f

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ne v2, v4, :cond_4f

    .line 13918
    const/4 v1, 0x0

    goto :goto_e

    .line 13901
    .end local v2           #right:I
    :cond_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 13910
    .restart local v2       #right:I
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 13920
    :cond_4f
    if-eq v1, v3, :cond_57

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v2, v4, :cond_e

    .line 13923
    :cond_57
    if-ne v1, v3, :cond_61

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    if-eq v2, v3, :cond_61

    move v1, v2

    .line 13924
    goto :goto_e

    .line 13926
    :cond_61
    sub-int v3, p1, v1

    sub-int v4, v2, p1

    if-le v3, v4, :cond_e

    move v1, v2

    .line 13927
    goto :goto_e
.end method

.method public static findWordEnd(Ljava/lang/CharSequence;I)I
    .registers 8
    .parameter "text"
    .parameter "offset"

    .prologue
    const/16 v5, 0x27

    .line 13854
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge p1, v3, :cond_b

    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    :cond_b
    move v3, p1

    .line 13888
    :goto_c
    return v3

    .line 13858
    :cond_d
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 13869
    :cond_83
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_8c

    .line 13870
    add-int/lit8 v3, p1, 0x1

    goto :goto_c

    .line 13873
    :cond_8c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 13875
    .local v1, len:I
    :goto_90
    if-ge p1, v1, :cond_ac

    .line 13876
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 13877
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    .line 13879
    .local v2, type:I
    if-eq v0, v5, :cond_b1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_b1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_b1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_b1

    .line 13888
    .end local v0           #c:C
    .end local v2           #type:I
    :cond_ac
    if-gez p1, :cond_b4

    const/4 v3, 0x0

    goto/16 :goto_c

    .line 13875
    .restart local v0       #c:C
    .restart local v2       #type:I
    :cond_b1
    add-int/lit8 p1, p1, 0x1

    goto :goto_90

    .end local v0           #c:C
    .end local v2           #type:I
    :cond_b4
    move v3, p1

    .line 13888
    goto/16 :goto_c
.end method

.method public static findWordStart(Ljava/lang/CharSequence;I)I
    .registers 8
    .parameter "text"
    .parameter "offset"

    .prologue
    const/16 v5, 0x27

    .line 13813
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge p1, v3, :cond_b

    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    :cond_b
    move v1, p1

    .line 13845
    .end local p1
    .local v1, offset:I
    :goto_c
    return v1

    .line 13817
    .end local v1           #offset:I
    .restart local p1
    :cond_d
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_83

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_8d

    .line 13828
    :cond_83
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_8d

    move v1, p1

    .line 13829
    .end local p1
    .restart local v1       #offset:I
    goto :goto_c

    .line 13832
    .end local v1           #offset:I
    .local v0, c:C
    .local v2, type:I
    .restart local p1
    :cond_8b
    add-int/lit8 p1, p1, -0x1

    .end local v0           #c:C
    .end local v2           #type:I
    :cond_8d
    if-lez p1, :cond_ab

    .line 13833
    add-int/lit8 v3, p1, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 13834
    .restart local v0       #c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    .line 13836
    .restart local v2       #type:I
    if-eq v0, v5, :cond_8b

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_8b

    const/16 v3, 0x9

    if-eq v2, v3, :cond_8b

    .end local v0           #c:C
    .end local v2           #type:I
    :cond_ab
    move v1, p1

    .line 13845
    .end local p1
    .restart local v1       #offset:I
    goto/16 :goto_c
.end method

.method private fixFocusableAndClickableSettings()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1522
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_14

    .line 1523
    :cond_a
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1524
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1525
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1531
    :goto_13
    return-void

    .line 1527
    :cond_14
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1528
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1529
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_13
.end method

.method private getBottomVerticalOffset(Z)I
    .registers 9
    .parameter "forceNormal"

    .prologue
    .line 4424
    const/4 v4, 0x0

    .line 4425
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 4427
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 4428
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_17

    .line 4429
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 4432
    :cond_17
    const/16 v5, 0x50

    if-eq v1, v5, :cond_3a

    .line 4435
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_3b

    .line 4436
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 4442
    .local v0, boxht:I
    :goto_2e
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 4444
    .local v3, textht:I
    if-ge v3, v0, :cond_3a

    .line 4445
    const/16 v5, 0x30

    if-ne v1, v5, :cond_4b

    .line 4446
    sub-int v4, v0, v3

    .line 4451
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_3a
    :goto_3a
    return v4

    .line 4439
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_2e

    .line 4448
    .restart local v3       #textht:I
    :cond_4b
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_3a
.end method

.method private getCharRange(I)J
    .registers 9
    .parameter "offset"

    .prologue
    .line 9643
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 9644
    .local v4, textLength:I
    add-int/lit8 v5, p1, 0x1

    if-ge v5, v4, :cond_25

    .line 9645
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 9646
    .local v0, currentChar:C
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 9647
    .local v1, nextChar:C
    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 9648
    add-int/lit8 v5, p1, 0x2

    invoke-static {p1, v5}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    .line 9664
    .end local v0           #currentChar:C
    .end local v1           #nextChar:C
    :goto_24
    return-wide v5

    .line 9651
    :cond_25
    if-ge p1, v4, :cond_2e

    .line 9652
    add-int/lit8 v5, p1, 0x1

    invoke-static {p1, v5}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_24

    .line 9654
    :cond_2e
    add-int/lit8 v5, p1, -0x2

    if-ltz v5, :cond_4f

    .line 9655
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 9656
    .local v2, previousChar:C
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v6, p1, -0x2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 9657
    .local v3, previousPreviousChar:C
    invoke-static {v3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 9658
    add-int/lit8 v5, p1, -0x2

    invoke-static {v5, p1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_24

    .line 9661
    .end local v2           #previousChar:C
    .end local v3           #previousPreviousChar:C
    :cond_4f
    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_5a

    .line 9662
    add-int/lit8 v5, p1, -0x1

    invoke-static {v5, p1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_24

    .line 9664
    :cond_5a
    invoke-static {p1, p1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_24
.end method

.method private getDesiredHeight()I
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 7032
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_16

    :goto_d
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .registers 10
    .parameter "layout"
    .parameter "cap"

    .prologue
    const/4 v6, 0x1

    .line 7038
    if-nez p1, :cond_5

    .line 7039
    const/4 v0, 0x0

    .line 7087
    :goto_4
    return v0

    .line 7042
    :cond_5
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 7043
    .local v2, linecount:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 7044
    .local v3, pad:I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 7046
    .local v0, desired:I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 7047
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_27

    .line 7048
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7049
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7052
    :cond_27
    add-int/2addr v0, v3

    .line 7054
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_63

    .line 7059
    if-eqz p2, :cond_49

    .line 7060
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_49

    .line 7061
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 7063
    if-eqz v1, :cond_46

    .line 7064
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7065
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7068
    :cond_46
    add-int/2addr v0, v3

    .line 7069
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 7076
    :cond_49
    :goto_49
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_6a

    .line 7077
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_5a

    .line 7078
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 7085
    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7087
    goto :goto_4

    .line 7073
    :cond_63
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_49

    .line 7081
    :cond_6a
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5a
.end method

.method private getDirection(F)I
    .registers 4
    .parameter "rawX"

    .prologue
    .line 11604
    iget v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    iput v0, p0, Landroid/widget/TextView;->mPreDirection:I

    .line 11605
    iget v0, p0, Landroid/widget/TextView;->mPreviousX:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_23

    .line 11606
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    .line 11610
    :cond_d
    :goto_d
    iget v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    iget v1, p0, Landroid/widget/TextView;->mPreDirection:I

    if-eq v0, v1, :cond_19

    iget v0, p0, Landroid/widget/TextView;->mChangeTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mChangeTimes:I

    .line 11612
    :cond_19
    iget v0, p0, Landroid/widget/TextView;->mChangeTimes:I

    if-nez v0, :cond_2d

    .line 11613
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDonotPassToLeft:Z

    .line 11618
    :cond_20
    :goto_20
    iget v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    return v0

    .line 11607
    :cond_23
    iget v0, p0, Landroid/widget/TextView;->mPreviousX:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_d

    .line 11608
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    goto :goto_d

    .line 11614
    :cond_2d
    iget v0, p0, Landroid/widget/TextView;->mChangeTimes:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 11615
    iget v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    iput v0, p0, Landroid/widget/TextView;->mFirstDirection:I

    goto :goto_20
.end method

.method private getErrorX()I
    .registers 6

    .prologue
    .line 4261
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 4263
    .local v1, scale:F
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4264
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v3}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v2, v3

    if-eqz v0, :cond_2e

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_21
    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    return v2

    :cond_2e
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private getErrorY()I
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 4277
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 4278
    .local v0, compoundPaddingTop:I
    iget v5, p0, Landroid/widget/TextView;->mBottom:I

    iget v7, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    sub-int v4, v5, v0

    .line 4280
    .local v4, vspace:I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4281
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_3b

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_17
    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v0, v5

    .line 4288
    .local v2, icontop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->density:F

    .line 4289
    .local v3, scale:F
    if-eqz v1, :cond_2b

    iget v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :cond_2b
    add-int v5, v2, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x4000

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    return v5

    .end local v2           #icontop:I
    .end local v3           #scale:F
    :cond_3b
    move v5, v6

    .line 4281
    goto :goto_17
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .registers 5
    .parameter "r"
    .parameter "line"

    .prologue
    .line 7514
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 7519
    if-nez p2, :cond_e

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 7520
    :cond_e
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_21

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7521
    :cond_21
    return-void
.end method

.method private getLastTapPosition()I
    .registers 5

    .prologue
    .line 8709
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_49

    .line 8710
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 8711
    .local v0, lastTapPosition:I
    if-ltz v0, :cond_49

    .line 8713
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_48

    .line 8714
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tap focus position ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8716
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 8722
    .end local v0           #lastTapPosition:I
    :cond_48
    :goto_48
    return v0

    :cond_49
    const/4 v0, -0x1

    goto :goto_48
.end method

.method private getLastTouchOffsets()J
    .registers 6

    .prologue
    .line 9668
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    .line 9669
    .local v2, selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 9670
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 9671
    .local v0, maxOffset:I
    invoke-static {v1, v0}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .registers 6

    .prologue
    const/high16 v4, 0x4000

    .line 6516
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    if-nez v2, :cond_17

    .line 6518
    iget-object v1, p0, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    .line 6519
    .local v1, textAlign:Landroid/widget/TextView$TextAlign;
    sget-object v2, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$TextAlign:[I

    invoke-virtual {v1}, Landroid/widget/TextView$TextAlign;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_56

    .line 6563
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6566
    .local v0, alignment:Landroid/text/Layout$Alignment;
    :goto_15
    iput-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    .line 6568
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    .end local v1           #textAlign:Landroid/widget/TextView$TextAlign;
    :cond_17
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    return-object v2

    .line 6524
    .restart local v1       #textAlign:Landroid/widget/TextView$TextAlign;
    :pswitch_1a
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    const v3, 0x800007

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_68

    .line 6541
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6542
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_15

    .line 6526
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_26
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6527
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_15

    .line 6529
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_29
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 6530
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_15

    .line 6532
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_2c
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 6533
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_15

    .line 6535
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_2f
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 6536
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_15

    .line 6538
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_32
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 6539
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_15

    .line 6546
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :pswitch_35
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6547
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_15

    .line 6549
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :pswitch_38
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 6550
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_15

    .line 6552
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :pswitch_3b
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 6553
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_15

    .line 6555
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :pswitch_3e
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v2

    if-ne v2, v4, :cond_47

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 6557
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    :goto_46
    goto :goto_15

    .line 6555
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :cond_47
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_46

    .line 6559
    :pswitch_4a
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v2

    if-ne v2, v4, :cond_53

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 6561
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    :goto_52
    goto :goto_15

    .line 6559
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :cond_53
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_52

    .line 6519
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
        :pswitch_4a
    .end packed-switch

    .line 6524
    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_32
        0x3 -> :sswitch_2c
        0x5 -> :sswitch_2f
        0x800003 -> :sswitch_26
        0x800005 -> :sswitch_29
    .end sparse-switch
.end method

.method private getLineAtCoordinate(F)I
    .registers 4
    .parameter "y"

    .prologue
    .line 13075
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 13077
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 13078
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 13079
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 13080
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private getOffsetAtCoordinate(IF)I
    .registers 4
    .parameter "line"
    .parameter "x"

    .prologue
    .line 13084
    invoke-direct {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 13085
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private getOffsetForHorizontal(IF)I
    .registers 5
    .parameter "line"
    .parameter "x"

    .prologue
    .line 13090
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 13093
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 13094
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 13095
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 13096
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private getOwnerViewRoot()Landroid/view/ViewRootImpl;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 6457
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 6458
    .local v1, rootViewOfOwner:Landroid/view/View;
    if-nez v1, :cond_9

    move-object v0, v2

    .line 6465
    :goto_8
    return-object v0

    .line 6461
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6462
    .local v0, parentOfRootView:Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_14

    .line 6463
    check-cast v0, Landroid/view/ViewRootImpl;

    goto :goto_8

    :cond_14
    move-object v0, v2

    .line 6465
    goto :goto_8
.end method

.method private getPositionListener()Landroid/widget/TextView$PositionListener;
    .registers 3

    .prologue
    .line 10250
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    if-nez v0, :cond_c

    .line 10251
    new-instance v0, Landroid/widget/TextView$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TextView$PositionListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    .line 10253
    :cond_c
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    return-object v0
.end method

.method private getSkinPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1235
    sget-boolean v0, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v0, :cond_11

    .line 1236
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 1237
    :goto_10
    return-object v0

    :cond_11
    const-string v0, "default"

    goto :goto_10
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "def"

    .prologue
    .line 9326
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 9328
    .local v0, colors:Landroid/content/res/ColorStateList;
    if-nez v0, :cond_7

    .line 9331
    .end local p2
    :goto_6
    return p2

    .restart local p2
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_6
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    .line 9298
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 9301
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-nez v2, :cond_1d

    .line 9302
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 9304
    .local v0, ap:I
    if-eq v0, v4, :cond_1d

    .line 9306
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 9308
    .local v1, appearance:Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 9310
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9314
    .end local v0           #ap:I
    .end local v1           #appearance:Landroid/content/res/TypedArray;
    :cond_1d
    return-object v2
.end method

.method private getTextForAccessibility()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 9730
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9731
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 9732
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9734
    :cond_e
    return-object v0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .registers 9
    .parameter "text"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 10022
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const v3, 0x109009f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/TextView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10025
    .local v0, shadowView:Landroid/widget/TextView;
    if-nez v0, :cond_18

    .line 10026
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 10029
    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_26

    .line 10030
    sget v2, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 10032
    :cond_26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10033
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 10035
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 10036
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 10038
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10041
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10042
    .local v1, size:I
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 10044
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 10045
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 10046
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private getTransformedText(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 9967
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getVerticalOffset(Z)I
    .registers 9
    .parameter "forceNormal"

    .prologue
    .line 4393
    const/4 v4, 0x0

    .line 4394
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 4396
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 4397
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_17

    .line 4398
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 4401
    :cond_17
    const/16 v5, 0x30

    if-eq v1, v5, :cond_3a

    .line 4404
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_3b

    .line 4405
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 4411
    .local v0, boxht:I
    :goto_2e
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 4413
    .local v3, textht:I
    if-ge v3, v0, :cond_3a

    .line 4414
    const/16 v5, 0x50

    if-ne v1, v5, :cond_4b

    .line 4415
    sub-int v4, v0, v3

    .line 4420
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_3a
    :goto_3a
    return v4

    .line 4408
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_2e

    .line 4417
    .restart local v3       #textht:I
    :cond_4b
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_3a
.end method

.method private hasPasswordTransformationMethod()Z
    .registers 2

    .prologue
    .line 3768
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideCursorControllers()V
    .registers 2

    .prologue
    .line 13041
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_11

    .line 13043
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->hide()V

    .line 13045
    :cond_11
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 13046
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 13047
    return-void
.end method

.method private hideError()V
    .registers 2

    .prologue
    .line 4294
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_11

    .line 4295
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4296
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 4300
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 4301
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .registers 2

    .prologue
    .line 13014
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v0, :cond_9

    .line 13015
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 13017
    :cond_9
    return-void
.end method

.method private hideSelectionModifierCursorController()V
    .registers 2

    .prologue
    .line 13020
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v0, :cond_9

    .line 13021
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 13023
    :cond_9
    return-void
.end method

.method private hideSpanControllers()V
    .registers 2

    .prologue
    .line 13035
    iget-object v0, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-eqz v0, :cond_9

    .line 13036
    iget-object v0, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    #calls: Landroid/widget/TextView$ChangeWatcher;->hideControllers()V
    invoke-static {v0}, Landroid/widget/TextView$ChangeWatcher;->access$12100(Landroid/widget/TextView$ChangeWatcher;)V

    .line 13038
    :cond_9
    return-void
.end method

.method private hookIME()V
    .registers 4

    .prologue
    .line 9174
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 9175
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_16

    .line 9176
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 9177
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 9180
    :cond_16
    return-void
.end method

.method private invalidateCursor()V
    .registers 2

    .prologue
    .line 4498
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4500
    .local v0, where:I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 4501
    return-void
.end method

.method private invalidateCursor(III)V
    .registers 7
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 4504
    if-gez p1, :cond_6

    if-gez p2, :cond_6

    if-ltz p3, :cond_1a

    .line 4505
    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4506
    .local v1, start:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4507
    .local v0, end:I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .line 4509
    .end local v0           #end:I
    .end local v1           #start:I
    :cond_1a
    return-void
.end method

.method private invalidateCursorPath()V
    .registers 12

    .prologue
    const/high16 v7, 0x4000

    .line 4455
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_a

    .line 4456
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 4495
    :cond_9
    :goto_9
    return-void

    .line 4458
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4459
    .local v1, horizontalPadding:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    .line 4461
    .local v4, verticalPadding:I
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-nez v5, :cond_71

    .line 4462
    sget-object v6, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v6

    .line 4472
    :try_start_20
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    .line 4474
    .local v3, thick:F
    cmpg-float v5, v3, v7

    if-gez v5, :cond_30

    .line 4475
    const/high16 v3, 0x4000

    .line 4478
    :cond_30
    div-float/2addr v3, v7

    .line 4480
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4482
    int-to-float v5, v1

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v7, v4

    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    invoke-static {v7}, Landroid/util/FloatMath;->floor(F)F

    move-result v7

    float-to-int v7, v7

    int-to-float v8, v1

    sget-object v9, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v4

    sget-object v10, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4486
    monitor-exit v6

    goto :goto_9

    .end local v3           #thick:F
    :catchall_6e
    move-exception v5

    monitor-exit v6
    :try_end_70
    .catchall {:try_start_20 .. :try_end_70} :catchall_6e

    throw v5

    .line 4488
    :cond_71
    const/4 v2, 0x0

    .local v2, i:I
    :goto_72
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v2, v5, :cond_9

    .line 4489
    iget-object v5, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4490
    .local v0, bounds:Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4488
    add-int/lit8 v2, v2, 0x1

    goto :goto_72
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .registers 7

    .prologue
    .line 8959
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    .line 8960
    .local v1, spannable:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 8962
    .local v2, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    array-length v3, v2

    if-ge v0, v3, :cond_27

    .line 8963
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_24

    .line 8964
    const/4 v3, 0x1

    .line 8967
    :goto_23
    return v3

    .line 8962
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 8967
    :cond_27
    const/4 v3, 0x0

    goto :goto_23
.end method

.method private isCursorInsideSuggestionSpan()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 8947
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-nez v1, :cond_8

    .line 8951
    :goto_7
    return v2

    .line 8949
    :cond_8
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 8951
    .local v0, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    array-length v1, v0

    if-lez v1, :cond_22

    const/4 v1, 0x1

    :goto_20
    move v2, v1

    goto :goto_7

    :cond_22
    move v1, v2

    goto :goto_20
.end method

.method private isCursorVisible()Z
    .registers 2

    .prologue
    .line 7755
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isHWKeyboardOpen()Z
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 13935
    const/4 v1, 0x0

    .line 13938
    .local v1, bHWKBOpen:Z
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 13939
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 13940
    .local v2, config:Landroid/content/res/Configuration;
    iget v5, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v7, v5, :cond_14

    const/4 v5, 0x3

    iget v6, v2, Landroid/content/res/Configuration;->keyboard:I

    if-ne v5, v6, :cond_1b

    :cond_14
    iget v5, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_16} :catch_1d

    if-eq v7, v5, :cond_1b

    const/4 v1, 0x1

    :goto_19
    move v4, v1

    .line 13947
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #config:Landroid/content/res/Configuration;
    :goto_1a
    return v4

    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v2       #config:Landroid/content/res/Configuration;
    :cond_1b
    move v1, v4

    .line 13940
    goto :goto_19

    .line 13943
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #config:Landroid/content/res/Configuration;
    :catch_1d
    move-exception v3

    .line 13944
    .local v3, e:Landroid/os/RemoteException;
    goto :goto_1a
.end method

.method private static isMultilineInputType(I)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 3691
    const v0, 0x2000f

    and-int/2addr v0, p0

    const v1, 0x20001

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isOffsetVisible(I)Z
    .registers 7
    .parameter "offset"

    .prologue
    .line 10406
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 10407
    .local v0, line:I
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    .line 10408
    .local v1, lineBottom:I
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v2, v3

    .line 10409
    .local v2, primaryHorizontal:I
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {p0, v3, v4}, Landroid/widget/TextView;->isPositionVisible(II)Z

    move-result v3

    return v3
.end method

.method private static isPasswordInputType(I)Z
    .registers 3
    .parameter "inputType"

    .prologue
    .line 3772
    and-int/lit16 v0, p0, 0xfff

    .line 3774
    .local v0, variation:I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_e

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_e

    const/16 v1, 0x12

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isPositionOnText(FF)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 13131
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_8

    .line 13138
    :cond_7
    :goto_7
    return v1

    .line 13133
    :cond_8
    invoke-direct {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 13134
    .local v0, line:I
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 13136
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_7

    .line 13137
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_7

    .line 13138
    const/4 v1, 0x1

    goto :goto_7
.end method

.method private isPositionVisible(II)Z
    .registers 14
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10366
    sget-object v6, Landroid/widget/TextView;->sTmpPosition:[F

    monitor-enter v6

    .line 10367
    :try_start_6
    sget-object v2, Landroid/widget/TextView;->sTmpPosition:[F

    .line 10368
    .local v2, position:[F
    const/4 v7, 0x0

    int-to-float v8, p1

    aput v8, v2, v7

    .line 10369
    const/4 v7, 0x1

    int-to-float v8, p2

    aput v8, v2, v7

    .line 10370
    move-object v3, p0

    .line 10372
    .local v3, view:Landroid/view/View;
    :goto_11
    if-eqz v3, :cond_89

    .line 10373
    if-eq v3, p0, :cond_2b

    .line 10375
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 10376
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 10379
    :cond_2b
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_51

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_51

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_51

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_53

    .line 10381
    :cond_51
    monitor-exit v6

    .line 10402
    :goto_52
    return v4

    .line 10384
    :cond_53
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_64

    .line 10385
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 10388
    :cond_64
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 10389
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 10391
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 10392
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_87

    .line 10393
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_11

    .line 10396
    :cond_87
    const/4 v3, 0x0

    goto :goto_11

    .line 10399
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_89
    monitor-exit v6

    move v4, v5

    .line 10402
    goto :goto_52

    .line 10399
    .end local v2           #position:[F
    .end local v3           #view:Landroid/view/View;
    :catchall_8c
    move-exception v4

    monitor-exit v6
    :try_end_8e
    .catchall {:try_start_6 .. :try_end_8e} :catchall_8c

    throw v4
.end method

.method private isTextEditable()Z
    .registers 2

    .prologue
    .line 9047
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_12
    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static isVisiblePasswordInputType(I)Z
    .registers 3
    .parameter "inputType"

    .prologue
    .line 3783
    and-int/lit16 v0, p0, 0xfff

    .line 3785
    .local v0, variation:I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private makeBlink()V
    .registers 7

    .prologue
    .line 9151
    invoke-direct {p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 9152
    invoke-direct {p0}, Landroid/widget/TextView;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 9153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 9154
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-nez v0, :cond_1d

    new-instance v0, Landroid/widget/TextView$Blink;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Blink;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    .line 9155
    :cond_1d
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9157
    sget-boolean v0, Landroid/widget/TextView;->mIsBlackTimeShorter:Z

    if-eqz v0, :cond_36

    .line 9158
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-wide v2, p0, Landroid/widget/TextView;->mShowCursor:J

    sget v4, Landroid/widget/TextView;->BLINK_WHITE:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 9165
    :cond_35
    :goto_35
    return-void

    .line 9160
    :cond_36
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-wide v2, p0, Landroid/widget/TextView;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_35

    .line 9163
    :cond_43
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_35
.end method

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .registers 23
    .parameter "wantWidth"
    .parameter "boring"
    .parameter "ellipsisWidth"
    .parameter "alignment"
    .parameter "shouldEllipsize"
    .parameter "effectiveEllipsize"
    .parameter "useSaved"

    .prologue
    .line 6709
    const/4 v1, 0x0

    .line 6710
    .local v1, result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_29

    .line 6711
    new-instance v1, Landroid/text/DynamicLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v8, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v9, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v5, :cond_27

    move-object/from16 v11, p6

    :goto_1d
    move/from16 v5, p1

    move-object/from16 v6, p4

    move/from16 v12, p3

    invoke-direct/range {v1 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 6774
    .restart local v1       #result:Landroid/text/Layout;
    :cond_26
    :goto_26
    return-object v1

    .line 6711
    .end local v1           #result:Landroid/text/Layout;
    :cond_27
    const/4 v11, 0x0

    goto :goto_1d

    .line 6716
    .restart local v1       #result:Landroid/text/Layout;
    :cond_29
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_41

    .line 6717
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v5, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p2

    .line 6718
    if-eqz p2, :cond_41

    .line 6719
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 6723
    :cond_41
    if-eqz p2, :cond_11a

    .line 6724
    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_8e

    if-eqz p6, :cond_55

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_8e

    .line 6726
    :cond_55
    if-eqz p7, :cond_79

    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_79

    .line 6727
    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v10}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    .line 6736
    :goto_71
    if-eqz p7, :cond_26

    move-object v2, v1

    .line 6737
    check-cast v2, Landroid/text/BoringLayout;

    iput-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto :goto_26

    .line 6731
    :cond_79
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v9}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    goto :goto_71

    .line 6739
    :cond_8e
    if-eqz p5, :cond_d4

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_d4

    .line 6740
    if-eqz p7, :cond_ba

    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_ba

    .line 6741
    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    move-object/from16 v11, p6

    move/from16 v12, p3

    invoke-virtual/range {v2 .. v12}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v1

    goto/16 :goto_26

    .line 6746
    :cond_ba
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v8, p2

    move-object/from16 v10, p6

    move/from16 v11, p3

    invoke-static/range {v2 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v1

    goto/16 :goto_26

    .line 6751
    :cond_d4
    if-eqz p5, :cond_103

    .line 6752
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v9, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v10, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v11, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget v6, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_ff

    iget v14, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_f2
    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v12, p6

    move/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .restart local v1       #result:Landroid/text/Layout;
    goto/16 :goto_26

    .end local v1           #result:Landroid/text/Layout;
    :cond_ff
    const v14, 0x7fffffff

    goto :goto_f2

    .line 6758
    .restart local v1       #result:Landroid/text/Layout;
    :cond_103
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .restart local v1       #result:Landroid/text/Layout;
    goto/16 :goto_26

    .line 6762
    :cond_11a
    if-eqz p5, :cond_149

    .line 6763
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v9, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v10, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v11, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget v6, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_145

    iget v14, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_138
    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v12, p6

    move/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .restart local v1       #result:Landroid/text/Layout;
    goto/16 :goto_26

    .end local v1           #result:Landroid/text/Layout;
    :cond_145
    const v14, 0x7fffffff

    goto :goto_138

    .line 6769
    .restart local v1       #result:Landroid/text/Layout;
    :cond_149
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .restart local v1       #result:Landroid/text/Layout;
    goto/16 :goto_26
.end method

.method private nullLayouts()V
    .registers 2

    .prologue
    .line 6470
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_10

    .line 6471
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 6473
    :cond_10
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_20

    .line 6474
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 6477
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 6480
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 6481
    return-void
.end method

.method private onDrop(Landroid/view/DragEvent;)V
    .registers 25
    .parameter "event"

    .prologue
    .line 13168
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13169
    .local v4, content:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 13170
    .local v3, clipData:Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    .line 13171
    .local v11, itemCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_12
    if-ge v9, v11, :cond_2c

    .line 13172
    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 13173
    .local v10, item:Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 13171
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 13176
    .end local v10           #item:Landroid/content/ClipData$Item;
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v17

    .line 13178
    .local v17, offset:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v12

    .line 13179
    .local v12, localState:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 13180
    .local v6, dragLocalState:Landroid/widget/TextView$DragLocalState;
    instance-of v0, v12, Landroid/widget/TextView$DragLocalState;

    move/from16 v21, v0

    if-eqz v21, :cond_4c

    move-object v6, v12

    .line 13181
    check-cast v6, Landroid/widget/TextView$DragLocalState;

    .line 13183
    :cond_4c
    if-eqz v6, :cond_70

    iget-object v0, v6, Landroid/widget/TextView$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_70

    const/4 v5, 0x1

    .line 13186
    .local v5, dragDropIntoItself:Z
    :goto_59
    if-eqz v5, :cond_72

    .line 13187
    iget v0, v6, Landroid/widget/TextView$DragLocalState;->start:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_72

    iget v0, v6, Landroid/widget/TextView$DragLocalState;->end:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_72

    .line 13224
    :cond_6f
    :goto_6f
    return-void

    .line 13183
    .end local v5           #dragDropIntoItself:Z
    :cond_70
    const/4 v5, 0x0

    goto :goto_59

    .line 13193
    .restart local v5       #dragDropIntoItself:Z
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v18

    .line 13194
    .local v18, originalLength:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v15

    .line 13195
    .local v15, minMax:J
    invoke-static/range {v15 .. v16}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v14

    .line 13196
    .local v14, min:I
    invoke-static/range {v15 .. v16}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v13

    .line 13198
    .local v13, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    check-cast v21, Landroid/text/Spannable;

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 13199
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 13201
    if-eqz v5, :cond_6f

    .line 13202
    iget v8, v6, Landroid/widget/TextView$DragLocalState;->start:I

    .line 13203
    .local v8, dragSourceStart:I
    iget v7, v6, Landroid/widget/TextView$DragLocalState;->end:I

    .line 13204
    .local v7, dragSourceEnd:I
    if-gt v13, v8, :cond_b8

    .line 13206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    sub-int v20, v21, v18

    .line 13207
    .local v20, shift:I
    add-int v8, v8, v20

    .line 13208
    add-int v7, v7, v20

    .line 13212
    .end local v20           #shift:I
    :cond_b8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 13215
    if-eqz v8, :cond_d1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_6f

    :cond_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    if-eq v8, v0, :cond_f1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_6f

    .line 13219
    :cond_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    if-ne v8, v0, :cond_10e

    add-int/lit8 v19, v8, -0x1

    .line 13221
    .local v19, pos:I
    :goto_101
    add-int/lit8 v21, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_6f

    .end local v19           #pos:I
    :cond_10e
    move/from16 v19, v8

    .line 13219
    goto :goto_101
.end method

.method private static packRangeInLong(II)J
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 9453
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private paste(II)V
    .registers 16
    .parameter "min"
    .parameter "max"

    .prologue
    .line 11292
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "clipboard"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 11296
    .local v1, clipboard:Landroid/content/ClipboardManager;
    :try_start_c
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 11297
    .local v0, clip:Landroid/content/ClipData;
    if-eqz v0, :cond_8b

    .line 11298
    const/4 v2, 0x0

    .line 11301
    .local v2, didFirst:Z
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_83

    move-result v5

    .line 11302
    .local v5, itemCount:I
    const/4 v6, 0x0

    .line 11305
    .local v6, label:Ljava/lang/String;
    :try_start_18
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_60

    move-result-object v6

    .line 11311
    :goto_24
    if-eqz v6, :cond_2f

    :try_start_26
    const-string v10, "HTC_MODIFIED_CLIPDATA"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 11314
    const/4 v5, 0x1

    .line 11317
    :cond_2f
    const/4 v4, 0x0

    .local v4, i:I
    :goto_30
    if-ge v4, v5, :cond_8c

    .line 11321
    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 11322
    .local v9, paste:Ljava/lang/CharSequence;
    if-eqz v9, :cond_5d

    .line 11323
    if-nez v2, :cond_6a

    .line 11324
    invoke-direct {p0, p1, p2, v9}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v7

    .line 11325
    .local v7, minMax:J
    invoke-static {v7, v8}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result p1

    .line 11326
    invoke-static {v7, v8}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result p2

    .line 11327
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11328
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Editable;

    invoke-interface {v10, p1, p2, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11329
    const/4 v2, 0x1

    .line 11317
    .end local v7           #minMax:J
    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 11306
    .end local v4           #i:I
    .end local v9           #paste:Ljava/lang/CharSequence;
    :catch_60
    move-exception v3

    .line 11307
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "TextView"

    const-string v11, "GetLabel fail! Do framework orig behavior"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11308
    const/4 v6, 0x0

    goto :goto_24

    .line 11331
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #i:I
    .restart local v9       #paste:Ljava/lang/CharSequence;
    :cond_6a
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    const-string v12, "\n"

    invoke-interface {v10, v11, v12}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11332
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    invoke-interface {v10, v11, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_82} :catch_83

    goto :goto_5d

    .line 11339
    .end local v0           #clip:Landroid/content/ClipData;
    .end local v2           #didFirst:Z
    .end local v4           #i:I
    .end local v5           #itemCount:I
    .end local v6           #label:Ljava/lang/String;
    .end local v9           #paste:Ljava/lang/CharSequence;
    :catch_83
    move-exception v3

    .line 11340
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v10, "TextView"

    const-string v11, "Security exception"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11342
    .end local v3           #e:Ljava/lang/Exception;
    :cond_8b
    :goto_8b
    return-void

    .line 11336
    .restart local v0       #clip:Landroid/content/ClipData;
    .restart local v2       #didFirst:Z
    .restart local v4       #i:I
    .restart local v5       #itemCount:I
    .restart local v6       #label:Ljava/lang/String;
    :cond_8c
    :try_start_8c
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 11337
    const-wide/16 v10, 0x0

    sput-wide v10, Landroid/widget/TextView;->sLastCutOrCopyTime:J
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_93} :catch_83

    goto :goto_8b
.end method

.method private prepareCursorControllers()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9007
    const/4 v2, 0x0

    .line 9009
    .local v2, windowSupportsHandles:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 9010
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_20

    move-object v1, v0

    .line 9011
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 9012
    .local v1, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_1f

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v5, v6, :cond_6c

    :cond_1f
    move v2, v4

    .line 9016
    .end local v1           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_20
    :goto_20
    if-eqz v2, :cond_6e

    invoke-direct {p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v5

    if-eqz v5, :cond_6e

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_6e

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v5, :cond_36

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_6e

    :cond_36
    move v5, v4

    :goto_37
    iput-boolean v5, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    .line 9021
    if-eqz v2, :cond_70

    invoke-direct {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v5

    if-eqz v5, :cond_70

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_70

    :goto_45
    iput-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    .line 9024
    iget-boolean v3, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v3, :cond_59

    .line 9025
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 9026
    iget-object v3, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v3, :cond_59

    .line 9027
    iget-object v3, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v3}, Landroid/widget/TextView$InsertionPointCursorController;->onDetached()V

    .line 9028
    iput-object v7, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    .line 9032
    :cond_59
    iget-boolean v3, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v3, :cond_6b

    .line 9033
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9034
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v3, :cond_6b

    .line 9035
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->onDetached()V

    .line 9036
    iput-object v7, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    .line 9039
    :cond_6b
    return-void

    .restart local v1       #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_6c
    move v2, v3

    .line 9012
    goto :goto_20

    .end local v1           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_6e
    move v5, v3

    .line 9016
    goto :goto_37

    :cond_70
    move v4, v3

    .line 9021
    goto :goto_45
.end method

.method private prepareQuickActions()V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 11580
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v2, p0, Landroid/widget/TextView;->mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v4, :cond_2f

    move v4, v1

    :goto_13
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v6

    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v9

    if-nez v9, :cond_2a

    iget-boolean v9, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v9, :cond_2a

    move v8, v1

    :cond_2a
    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareQuickActions(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZZZZ)V

    .line 11582
    return-void

    :cond_2f
    move v4, v8

    .line 11580
    goto :goto_13
.end method

.method private prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .registers 11
    .parameter "min"
    .parameter "max"
    .parameter "paste"

    .prologue
    const/16 v6, 0xa

    .line 9977
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_61

    .line 9978
    if-lez p1, :cond_38

    .line 9979
    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 9980
    .local v1, charBefore:C
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 9982
    .local v0, charAfter:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 9984
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 9985
    .local v3, originalLength:I
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4, p1}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 9988
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .line 9989
    .local v2, delta:I
    add-int/2addr p1, v2

    .line 9990
    add-int/2addr p2, v2

    .line 10003
    .end local v0           #charAfter:C
    .end local v1           #charBefore:C
    .end local v2           #delta:I
    .end local v3           #originalLength:I
    :cond_38
    :goto_38
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p2, v4, :cond_61

    .line 10004
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 10005
    .restart local v1       #charBefore:C
    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 10007
    .restart local v0       #charAfter:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 10009
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, p2, v4}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 10018
    .end local v0           #charAfter:C
    .end local v1           #charBefore:C
    :cond_61
    :goto_61
    invoke-static {p1, p2}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 9991
    .restart local v0       #charAfter:C
    .restart local v1       #charBefore:C
    :cond_66
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_38

    if-eq v1, v6, :cond_38

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_38

    if-eq v0, v6, :cond_38

    .line 9994
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 9995
    .restart local v3       #originalLength:I
    const-string v4, " "

    invoke-virtual {p0, p1, p1, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 9997
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .line 9998
    .restart local v2       #delta:I
    add-int/2addr p1, v2

    .line 9999
    add-int/2addr p2, v2

    goto :goto_38

    .line 10010
    .end local v2           #delta:I
    .end local v3           #originalLength:I
    :cond_8c
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_61

    if-eq v1, v6, :cond_61

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_61

    if-eq v0, v6, :cond_61

    .line 10013
    const-string v4, " "

    invoke-virtual {p0, p2, p2, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    goto :goto_61
.end method

.method private registerForPreDraw()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 4571
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4573
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-nez v1, :cond_f

    .line 4574
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4575
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4581
    :cond_e
    :goto_e
    return-void

    .line 4576
    :cond_f
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 4577
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    goto :goto_e
.end method

.method private removeIntersectingSpans(IILjava/lang/Class;)V
    .registers 11
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 8041
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_7

    .line 8054
    :cond_6
    return-void

    .line 8042
    :cond_7
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 8044
    .local v5, text:Landroid/text/Editable;
    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 8045
    .local v4, spans:[Ljava/lang/Object;,"[TT;"
    array-length v2, v4

    .line 8046
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_6

    .line 8047
    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 8048
    .local v3, s:I
    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 8051
    .local v0, e:I
    if-eq v0, p1, :cond_6

    if-eq v3, p2, :cond_6

    .line 8052
    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 8046
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .registers 6
    .parameter "spannable"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 6095
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 6096
    .local v1, spans:[Ljava/lang/Object;
    array-length v0, v1

    .line 6097
    .local v0, i:I
    :goto_7
    if-lez v0, :cond_11

    .line 6098
    add-int/lit8 v0, v0, -0x1

    .line 6099
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_7

    .line 6101
    :cond_11
    return-void
.end method

.method private removeReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .parameter "text"

    .prologue
    .line 13761
    instance-of v6, p1, Landroid/text/Spannable;

    if-eqz v6, :cond_41

    move-object v3, p1

    .line 13762
    check-cast v3, Landroid/text/Spannable;

    .line 13763
    .local v3, spannable:Landroid/text/Spannable;
    const/4 v6, 0x0

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v3, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 13764
    .local v4, spans:[Ljava/lang/Object;
    array-length v1, v4

    .line 13765
    .local v1, i:I
    :cond_13
    :goto_13
    if-lez v1, :cond_42

    .line 13766
    add-int/lit8 v1, v1, -0x1

    .line 13767
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 13768
    .local v5, start:I
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 13769
    .local v0, end:I
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 13771
    if-ltz v5, :cond_13

    if-le v0, v5, :cond_13

    invoke-interface {v3, v5}, Landroid/text/Spannable;->charAt(I)C

    move-result v6

    const v7, 0xfffc

    if-ne v6, v7, :cond_13

    .line 13772
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 13773
    .local v2, spanBuilder:Landroid/text/SpannableStringBuilder;
    const-string v6, ""

    invoke-virtual {v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_13

    .end local v0           #end:I
    .end local v1           #i:I
    .end local v2           #spanBuilder:Landroid/text/SpannableStringBuilder;
    .end local v3           #spannable:Landroid/text/Spannable;
    .end local v4           #spans:[Ljava/lang/Object;
    .end local v5           #start:I
    :cond_41
    move-object v3, p1

    .line 13778
    :cond_42
    return-object v3
.end method

.method private removeStyledAnnotationSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .parameter "text"

    .prologue
    .line 13784
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_3a

    move-object v1, p1

    .line 13785
    check-cast v1, Landroid/text/Spannable;

    .line 13788
    .local v1, spannable:Landroid/text/Spannable;
    :goto_7
    const/4 v3, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/Annotation;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Annotation;

    .line 13789
    .local v2, spans:[Landroid/text/Annotation;
    array-length v0, v2

    .line 13790
    .local v0, i:I
    :cond_15
    :goto_15
    if-lez v0, :cond_40

    .line 13791
    add-int/lit8 v0, v0, -0x1

    .line 13792
    aget-object v3, v2, v0

    if-eqz v3, :cond_15

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "styledtext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 13794
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_15

    .line 13787
    .end local v0           #i:I
    .end local v1           #spannable:Landroid/text/Spannable;
    .end local v2           #spans:[Landroid/text/Annotation;
    :cond_3a
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1       #spannable:Landroid/text/Spannable;
    goto :goto_7

    .line 13796
    .restart local v0       #i:I
    .restart local v2       #spans:[Landroid/text/Annotation;
    :cond_40
    return-object v1
.end method

.method private resetMetaStatus()V
    .registers 2

    .prologue
    .line 13955
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView;->mCapOld:I

    iput v0, p0, Landroid/widget/TextView;->mFnOld:I

    .line 13956
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .registers 3

    .prologue
    .line 4342
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_10

    .line 4343
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 4344
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 4346
    :cond_10
    return-void
.end method

.method private selectAll()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 9465
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 9466
    .local v0, length:I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9467
    if-lez v0, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method private selectCurrentWord()Z
    .registers 27

    .prologue
    .line 9477
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    .line 9479
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v24

    if-nez v24, :cond_11

    .line 9480
    const/16 v24, 0x0

    .line 9605
    :goto_10
    return v24

    .line 9485
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLastTouchOffsets()J

    move-result-wide v5

    .line 9486
    .local v5, lastTouchOffsets:J
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v9

    .line 9487
    .local v9, minOffset:I
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v8

    .line 9488
    .local v8, maxOffset:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v24

    if-eqz v24, :cond_59

    .line 9490
    if-ltz v9, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v9, v0, :cond_3e

    .line 9491
    :cond_33
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    .line 9492
    const/16 v24, 0x0

    goto :goto_10

    .line 9494
    :cond_3e
    if-ltz v8, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v8, v0, :cond_59

    .line 9495
    :cond_4e
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    .line 9496
    const/16 v24, 0x0

    goto :goto_10

    .line 9501
    :cond_59
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v24

    if-eqz v24, :cond_64

    .line 9505
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->selectAll()Z

    move-result v24

    goto :goto_10

    .line 9508
    :cond_64
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v24, v0

    and-int/lit8 v4, v24, 0xf

    .line 9509
    .local v4, klass:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff0

    move/from16 v22, v0

    .line 9512
    .local v22, variation:I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v4, v0, :cond_b4

    const/16 v24, 0x3

    move/from16 v0, v24

    if-eq v4, v0, :cond_b4

    const/16 v24, 0x4

    move/from16 v0, v24

    if-eq v4, v0, :cond_b4

    const/16 v24, 0x10

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_b4

    const/16 v24, 0x20

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_b4

    const/16 v24, 0xd0

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_b4

    const/16 v24, 0xb0

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_b4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mFlags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x4

    if-eqz v24, :cond_ba

    .line 9520
    :cond_b4
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->selectAll()Z

    move-result v24

    goto/16 :goto_10

    .line 9525
    :cond_ba
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spanned;

    const-class v25, Landroid/text/style/URLSpan;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v9, v8, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/URLSpan;

    .line 9526
    .local v21, urlSpans:[Landroid/text/style/URLSpan;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_116

    .line 9527
    const/16 v24, 0x0

    aget-object v20, v21, v24

    .line 9528
    .local v20, urlSpan:Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spanned;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v17

    .line 9529
    .local v17, selectionStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spanned;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    .line 9604
    .end local v20           #urlSpan:Landroid/text/style/URLSpan;
    .local v15, selectionEnd:I
    :cond_ff
    :goto_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spannable;

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-static {v0, v1, v15}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9605
    move/from16 v0, v17

    if-le v15, v0, :cond_290

    const/16 v24, 0x1

    goto/16 :goto_10

    .line 9530
    .end local v15           #selectionEnd:I
    .end local v17           #selectionStart:I
    :cond_116
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v24

    if-eqz v24, :cond_225

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v24

    if-nez v24, :cond_225

    .line 9531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v24

    if-lez v24, :cond_211

    .line 9532
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    .line 9533
    .local v10, offset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Landroid/widget/TextView;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_150

    .line 9534
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v16

    .line 9536
    .local v16, selectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    if-eqz v16, :cond_150

    .line 9537
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v10

    .line 9539
    .end local v16           #selectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    :cond_150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spannable;

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Landroid/widget/TextView;->findNearestNonwhiteOffset(Landroid/text/Spannable;I)I

    move-result v10

    .line 9540
    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v10, v0, :cond_211

    .line 9541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Landroid/widget/TextView;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v17

    .line 9542
    .restart local v17       #selectionStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Landroid/widget/TextView;->findWordEnd(Ljava/lang/CharSequence;I)I

    move-result v15

    .line 9543
    .restart local v15       #selectionEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v24, v0

    if-eqz v24, :cond_1ca

    .line 9544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    check-cast v18, Landroid/text/Spannable;

    .line 9545
    .local v18, sp:Landroid/text/Spannable;
    const-class v24, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v15, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/style/ReplacementSpan;

    .line 9546
    .local v19, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v3, v0, :cond_1ca

    .line 9547
    aget-object v24, v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 9548
    .local v14, replaceStart:I
    aget-object v24, v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 9549
    .local v13, replaceEnd:I
    move/from16 v0, v17

    if-ge v14, v0, :cond_1c4

    .line 9550
    move/from16 v17, v14

    .line 9551
    :cond_1c4
    if-le v13, v15, :cond_1c7

    .line 9552
    move v15, v13

    .line 9546
    :cond_1c7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a1

    .line 9556
    .end local v3           #i:I
    .end local v13           #replaceEnd:I
    .end local v14           #replaceStart:I
    .end local v18           #sp:Landroid/text/Spannable;
    .end local v19           #spans:[Landroid/text/style/ReplacementSpan;
    :cond_1ca
    move/from16 v0, v17

    if-ne v0, v15, :cond_1f9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v17

    if-le v0, v1, :cond_1f9

    .line 9557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spannable;

    add-int/lit8 v25, v17, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9561
    :cond_1f1
    :goto_1f1
    move/from16 v0, v17

    if-le v15, v0, :cond_20d

    const/16 v24, 0x1

    goto/16 :goto_10

    .line 9558
    :cond_1f9
    move/from16 v0, v17

    if-eq v0, v15, :cond_1f1

    .line 9559
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spannable;

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-static {v0, v1, v15}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1f1

    .line 9561
    :cond_20d
    const/16 v24, 0x0

    goto/16 :goto_10

    .line 9565
    .end local v10           #offset:I
    .end local v15           #selectionEnd:I
    .end local v17           #selectionStart:I
    :cond_211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 9566
    .local v7, length:I
    if-lez v7, :cond_221

    const/16 v24, 0x1

    goto/16 :goto_10

    :cond_221
    const/16 v24, 0x0

    goto/16 :goto_10

    .line 9575
    .end local v7           #length:I
    :cond_225
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v23

    .line 9576
    .local v23, wordIterator:Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9, v8}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 9578
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v17

    .line 9580
    .restart local v17       #selectionStart:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v24

    if-eqz v24, :cond_25c

    .line 9581
    const/16 v24, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_250

    invoke-virtual/range {v23 .. v23}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit()Z

    move-result v24

    if-eqz v24, :cond_25c

    .line 9582
    :cond_250
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    .line 9583
    const/16 v24, 0x0

    goto/16 :goto_10

    .line 9587
    :cond_25c
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v15

    .line 9588
    .restart local v15       #selectionEnd:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v24

    if-eqz v24, :cond_27a

    .line 9589
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_27a

    .line 9590
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    .line 9591
    const/16 v24, 0x0

    goto/16 :goto_10

    .line 9596
    :cond_27a
    move/from16 v0, v17

    if-ne v0, v15, :cond_ff

    .line 9598
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getCharRange(I)J

    move-result-wide v11

    .line 9599
    .local v11, range:J
    invoke-static {v11, v12}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v17

    .line 9600
    invoke-static {v11, v12}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v15

    goto/16 :goto_ff

    .line 9605
    .end local v11           #range:J
    .end local v23           #wordIterator:Landroid/text/method/WordIterator;
    :cond_290
    const/16 v24, 0x0

    goto/16 :goto_10
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 8026
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 8027
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8028
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8029
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 8030
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 8029
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 8035
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_19
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingSpans(IILjava/lang/Class;)V

    .line 8036
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingSpans(IILjava/lang/Class;)V

    .line 8037
    return-void
.end method

.method private sendMetaStatusToIME(II)V
    .registers 8
    .parameter "fn"
    .parameter "caps"

    .prologue
    .line 13974
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 13976
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_29

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 13977
    const-string v0, "TextView_MetaStatus"

    .line 13978
    .local v0, command:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13979
    .local v1, data:Landroid/os/Bundle;
    const-string v3, "FN"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13980
    const-string v3, "CAPS"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13981
    invoke-virtual {v2, p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13983
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #data:Landroid/os/Bundle;
    :cond_29
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .registers 6
    .parameter "e"
    .parameter "filters"

    .prologue
    const/4 v2, 0x0

    .line 4371
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    instance-of v1, v1, Landroid/text/InputFilter;

    if-eqz v1, :cond_1b

    .line 4372
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 4374
    .local v0, nf:[Landroid/text/InputFilter;
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4375
    array-length v2, p2

    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    check-cast v1, Landroid/text/InputFilter;

    aput-object v1, v0, v2

    .line 4377
    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 4381
    .end local v0           #nf:[Landroid/text/InputFilter;
    :goto_1a
    return-void

    .line 4379
    :cond_1b
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1a
.end method

.method private setInputType(IZ)V
    .registers 11
    .parameter "type"
    .parameter "direct"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3801
    and-int/lit8 v2, p1, 0xf

    .line 3803
    .local v2, cls:I
    if-ne v2, v4, :cond_32

    .line 3804
    const v6, 0x8000

    and-int/2addr v6, p1

    if-eqz v6, :cond_1f

    move v0, v4

    .line 3806
    .local v0, autotext:Z
    :goto_d
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_21

    .line 3807
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 3815
    .local v1, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_13
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 3837
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, input:Landroid/text/method/KeyListener;
    :goto_17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 3838
    if-eqz p2, :cond_6b

    iput-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 3842
    :goto_1e
    return-void

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_1f
    move v0, v5

    .line 3804
    goto :goto_d

    .line 3808
    .restart local v0       #autotext:Z
    :cond_21
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_28

    .line 3809
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 3810
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_28
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_2f

    .line 3811
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 3813
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2f
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 3816
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_32
    const/4 v6, 0x2

    if-ne v2, v6, :cond_47

    .line 3817
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_43

    move v6, v4

    :goto_3a
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_45

    :goto_3e
    invoke-static {v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_43
    move v6, v5

    goto :goto_3a

    :cond_45
    move v4, v5

    goto :goto_3e

    .line 3820
    :cond_47
    const/4 v4, 0x4

    if-ne v2, v4, :cond_5e

    .line 3821
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_70

    .line 3829
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .line 3830
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3823
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_54
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .line 3824
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3826
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_59
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .line 3827
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3832
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_5e
    const/4 v4, 0x3

    if-ne v2, v4, :cond_66

    .line 3833
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3835
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_66
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3840
    :cond_6b
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_1e

    .line 3821
    nop

    :sswitch_data_70
    .sparse-switch
        0x10 -> :sswitch_54
        0x20 -> :sswitch_59
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .registers 4
    .parameter "singleLine"

    .prologue
    .line 7646
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 7647
    if-eqz p1, :cond_12

    .line 7648
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    .line 7653
    :cond_11
    :goto_11
    return-void

    .line 7650
    :cond_12
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_11
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .registers 4
    .parameter "input"

    .prologue
    .line 1479
    iput-object p1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1480
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_11

    .line 1481
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1483
    :cond_11
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 1484
    return-void
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .registers 5
    .parameter "clip"

    .prologue
    .line 11345
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 11347
    .local v0, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 11348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/widget/TextView;->sLastCutOrCopyTime:J

    .line 11349
    return-void
.end method

.method private setRawTextSize(F)V
    .registers 3
    .parameter "size"

    .prologue
    .line 2357
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1c

    .line 2358
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2360
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1c

    .line 2361
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2362
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2363
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2366
    :cond_1c
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 1260
    if-nez p1, :cond_5

    if-eqz p2, :cond_62

    :cond_5
    const/4 v2, 0x1

    .line 1261
    .local v2, hasRelativeDrawables:Z
    :goto_6
    if-eqz v2, :cond_61

    .line 1262
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1263
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez v1, :cond_13

    .line 1264
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1}, Landroid/widget/TextView$Drawables;-><init>()V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1266
    :cond_13
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1267
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1268
    .local v3, state:[I
    if-eqz p1, :cond_64

    .line 1269
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1270
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1271
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1272
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1274
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 1275
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 1276
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 1280
    :goto_3d
    if-eqz p2, :cond_69

    .line 1281
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p2, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1282
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1283
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1284
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1286
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 1287
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 1288
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 1293
    .end local v0           #compoundRect:Landroid/graphics/Rect;
    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    .end local v3           #state:[I
    :cond_61
    :goto_61
    return-void

    .end local v2           #hasRelativeDrawables:Z
    :cond_62
    move v2, v4

    .line 1260
    goto :goto_6

    .line 1278
    .restart local v0       #compoundRect:Landroid/graphics/Rect;
    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    .restart local v2       #hasRelativeDrawables:Z
    .restart local v3       #state:[I
    :cond_64
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_3d

    .line 1290
    :cond_69
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_61
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .registers 27
    .parameter "text"
    .parameter "type"
    .parameter "notifyBefore"
    .parameter "oldlen"

    .prologue
    .line 3333
    if-nez p1, :cond_4

    .line 3334
    const-string p1, ""

    .line 3338
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_e

    .line 3339
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3342
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 3344
    :cond_1d
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_4f

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spanned;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_4f

    .line 3346
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 3347
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 3348
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 3353
    :goto_48
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3356
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v14, v4

    .line 3357
    .local v14, n:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_55
    if-ge v12, v14, :cond_7f

    .line 3358
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v4, v4, v12

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v10}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 3360
    .local v16, out:Ljava/lang/CharSequence;
    if-eqz v16, :cond_70

    .line 3361
    move-object/from16 p1, v16

    .line 3357
    :cond_70
    add-int/lit8 v12, v12, 0x1

    goto :goto_55

    .line 3350
    .end local v12           #i:I
    .end local v14           #n:I
    .end local v16           #out:Ljava/lang/CharSequence;
    :cond_73
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 3351
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_48

    .line 3365
    .restart local v12       #i:I
    .restart local v14       #n:I
    :cond_7f
    if-eqz p3, :cond_9f

    .line 3366
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_192

    .line 3367
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 3368
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v5, v1, v6}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 3374
    :cond_9f
    :goto_9f
    const/4 v15, 0x0

    .line 3376
    .local v15, needEditableForNotification:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_b1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_b1

    .line 3377
    const/4 v15, 0x1

    .line 3380
    :cond_b1
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_bf

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v4, :cond_bf

    if-eqz v15, :cond_1a1

    .line 3381
    :cond_bf
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v19

    .line 3382
    .local v19, t:Landroid/text/Editable;
    move-object/from16 p1, v19

    .line 3383
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 3384
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    .line 3385
    .local v13, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_e1

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3393
    .end local v13           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v19           #t:Landroid/text/Editable;
    :cond_e1
    :goto_e1
    sget-boolean v4, Landroid/widget/TextView;->bArabicDisplay:Z

    if-eqz v4, :cond_100

    .line 3394
    if-eqz p1, :cond_100

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_100

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_100

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_100

    .line 3395
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 3398
    :cond_100
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v4, :cond_147

    .line 3401
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_112

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_1c5

    :cond_112
    move-object/from16 v17, p1

    .line 3402
    check-cast v17, Landroid/text/Spannable;

    .line 3407
    .local v17, s2:Landroid/text/Spannable;
    :goto_116
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_147

    .line 3408
    move-object/from16 p1, v17

    .line 3409
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1d1

    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 3416
    :goto_12c
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 3420
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v4, :cond_147

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-nez v4, :cond_147

    .line 3421
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3426
    .end local v17           #s2:Landroid/text/Spannable;
    :cond_147
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 3427
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 3429
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v4, :cond_1d5

    .line 3430
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 3435
    :goto_15f
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 3437
    .local v20, textLength:I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_248

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v4, :cond_248

    move-object/from16 v18, p1

    .line 3438
    check-cast v18, Landroid/text/Spannable;

    .line 3442
    .local v18, sp:Landroid/text/Spannable;
    const/4 v4, 0x0

    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/widget/TextView$ChangeWatcher;

    .line 3443
    .local v21, watchers:[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v21

    array-length v11, v0

    .line 3444
    .local v11, count:I
    const/4 v12, 0x0

    :goto_186
    if-ge v12, v11, :cond_1e7

    .line 3445
    aget-object v4, v21, v12

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3444
    add-int/lit8 v12, v12, 0x1

    goto :goto_186

    .line 3370
    .end local v11           #count:I
    .end local v15           #needEditableForNotification:Z
    .end local v18           #sp:Landroid/text/Spannable;
    .end local v20           #textLength:I
    .end local v21           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_192
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_9f

    .line 3386
    .restart local v15       #needEditableForNotification:Z
    :cond_1a1
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_1ad

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_1b9

    .line 3387
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_e1

    .line 3388
    :cond_1b9
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    if-nez v4, :cond_e1

    .line 3389
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_e1

    .line 3404
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v17

    .restart local v17       #s2:Landroid/text/Spannable;
    goto/16 :goto_116

    .line 3409
    :cond_1d1
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_12c

    .line 3432
    .end local v17           #s2:Landroid/text/Spannable;
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v4, v0, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_15f

    .line 3447
    .restart local v11       #count:I
    .restart local v18       #sp:Landroid/text/Spannable;
    .restart local v20       #textLength:I
    .restart local v21       #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_1e7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_1f9

    .line 3448
    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 3450
    :cond_1f9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    const v6, 0x640012

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3453
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v4, :cond_21c

    .line 3454
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3457
    :cond_21c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v4, :cond_230

    .line 3458
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3461
    :cond_230
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_248

    .line 3462
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 3469
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 3473
    .end local v11           #count:I
    .end local v18           #sp:Landroid/text/Spannable;
    .end local v21           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_248
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_251

    .line 3474
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 3477
    :cond_251
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 3478
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 3480
    if-eqz v15, :cond_270

    .line 3481
    check-cast p1, Landroid/text/Editable;

    .end local p1
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 3485
    :cond_270
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 3486
    return-void
.end method

.method private setTypefaceByIndex(II)V
    .registers 4
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 1241
    const/4 v0, 0x0

    .line 1242
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_12

    .line 1256
    :goto_4
    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1257
    return-void

    .line 1244
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1245
    goto :goto_4

    .line 1248
    :pswitch_b
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 1249
    goto :goto_4

    .line 1252
    :pswitch_e
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    .line 1242
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5579
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v3, :cond_7

    .line 5595
    :cond_6
    :goto_6
    return v1

    .line 5583
    :cond_7
    iget-boolean v3, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v3, :cond_d

    move v1, v2

    .line 5584
    goto :goto_6

    .line 5587
    :cond_d
    iget v3, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_6

    .line 5588
    iget v3, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 5589
    .local v0, variation:I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_1f

    const/16 v3, 0x30

    if-ne v0, v3, :cond_6

    :cond_1f
    move v1, v2

    .line 5591
    goto :goto_6
.end method

.method private shouldAdvanceFocusOnTab()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 5603
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_1c

    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_1c

    .line 5604
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_1c

    .line 5605
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 5606
    .local v0, variation:I
    const/high16 v2, 0x4

    if-eq v0, v2, :cond_1b

    const/high16 v2, 0x2

    if-ne v0, v2, :cond_1c

    .line 5608
    :cond_1b
    const/4 v1, 0x0

    .line 5612
    .end local v0           #variation:I
    :cond_1c
    return v1
.end method

.method private shouldBlink()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 9139
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_8

    .line 9147
    :cond_7
    :goto_7
    return v2

    .line 9141
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 9142
    .local v1, start:I
    if-ltz v1, :cond_7

    .line 9144
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 9145
    .local v0, end:I
    if-ltz v0, :cond_7

    .line 9147
    if-ne v1, v0, :cond_7

    const/4 v2, 0x1

    goto :goto_7
.end method

.method private showError()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    .line 4172
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_c

    .line 4173
    iput-boolean v8, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 4196
    :goto_b
    return-void

    .line 4177
    :cond_c
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-nez v4, :cond_48

    .line 4178
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4179
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x10900a7

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4182
    .local v0, err:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 4183
    .local v2, scale:F
    new-instance v4, Landroid/widget/TextView$ErrorPopup;

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x4248

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/TextView$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 4184
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->setFocusable(Z)V

    .line 4187
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/TextView$ErrorPopup;->setInputMethodMode(I)V

    .line 4190
    .end local v0           #err:Landroid/widget/TextView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #scale:F
    :cond_48
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4191
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 4192
    iget-object v4, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4194
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v6

    invoke-virtual {v4, p0, v5, v6}, Landroid/widget/TextView$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 4195
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/TextView$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->fixDirection(Z)V

    goto :goto_b
.end method

.method private showQuickAction()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 13690
    iget-object v8, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v8, :cond_c

    .line 13691
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 13693
    :cond_c
    iget-object v4, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 13694
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 13695
    .local v6, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 13696
    .local v5, selEnd:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v8, :cond_10f

    if-eq v6, v5, :cond_10f

    if-ltz v6, :cond_10f

    if-ltz v5, :cond_10f

    .line 13699
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 13700
    .local v7, startLine:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 13701
    .local v0, endLine:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 13702
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 13703
    if-ne v7, v0, :cond_d9

    .line 13704
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 13705
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 13716
    :cond_52
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 13717
    .local v2, paddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    .line 13718
    .local v3, paddingTop:I
    iget v8, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v8, v8, 0x70

    const/16 v9, 0x30

    if-eq v8, v9, :cond_67

    .line 13719
    invoke-direct {p0, v10}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v8

    add-int/2addr v3, v8

    .line 13721
    :cond_67
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 13726
    .end local v0           #endLine:I
    .end local v2           #paddingLeft:I
    .end local v3           #paddingTop:I
    .end local v7           #startLine:I
    :goto_6a
    iget-object v8, p0, Landroid/widget/TextView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 13727
    iget-object v8, p0, Landroid/widget/TextView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 13728
    iget-object v8, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_114

    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v8

    if-eqz v8, :cond_88

    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$InsertionPointCursorController;->isShowing()Z

    move-result v8

    if-nez v8, :cond_98

    :cond_88
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v8

    if-eqz v8, :cond_114

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$SelectionModifierCursorController;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_114

    .line 13733
    :cond_98
    iget-object v8, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v4, v10, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 13737
    :goto_a2
    iget v8, p0, Landroid/widget/TextView;->mStatusBarWindowOffset:I

    if-eqz v8, :cond_ab

    .line 13738
    iget v8, p0, Landroid/widget/TextView;->mStatusBarWindowOffset:I

    invoke-virtual {v4, v10, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 13741
    :cond_ab
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v8

    if-eqz v8, :cond_bb

    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$InsertionPointCursorController;->isShowing()Z

    move-result v8

    if-nez v8, :cond_cb

    :cond_bb
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v8

    if-eqz v8, :cond_126

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$SelectionModifierCursorController;->isAllDownAnchor()Z

    move-result v8

    if-eqz v8, :cond_126

    .line 13743
    :cond_cb
    iget-object v8, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/textselection/HtcTextSelectionManager;->setFineTune(Z)V

    .line 13748
    :goto_d1
    iget-object v8, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget v9, p0, Landroid/widget/TextView;->mFlags:I

    invoke-virtual {v8, p0, v4, v9}, Lcom/htc/textselection/HtcTextSelectionManager;->showQuickAction(Landroid/widget/TextView;Landroid/graphics/Rect;I)V

    .line 13750
    return-void

    .line 13707
    .restart local v0       #endLine:I
    .restart local v7       #startLine:I
    :cond_d9
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 13708
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 13709
    move v1, v7

    .local v1, i:I
    :goto_ec
    if-ge v1, v0, :cond_52

    .line 13710
    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 13711
    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 13709
    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    .line 13723
    .end local v0           #endLine:I
    .end local v1           #i:I
    .end local v7           #startLine:I
    :cond_10f
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto/16 :goto_6a

    .line 13735
    :cond_114
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v4, v10, v8}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_a2

    .line 13745
    :cond_126
    iget-object v8, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v8, v10}, Lcom/htc/textselection/HtcTextSelectionManager;->setFineTune(Z)V

    goto :goto_d1
.end method

.method private startMarquee()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 7767
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_6

    .line 7794
    :cond_5
    :goto_5
    return-void

    .line 7769
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v1

    if-nez v1, :cond_5

    .line 7773
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_27
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_33
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7776
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v3, :cond_57

    .line 7777
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 7778
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7779
    .local v0, tmp:Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7780
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7781
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 7782
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7783
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7786
    .end local v0           #tmp:Landroid/text/Layout;
    :cond_57
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v1, :cond_62

    new-instance v1, Landroid/widget/TextView$Marquee;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7789
    :cond_62
    iget-boolean v1, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    if-nez v1, :cond_5

    .line 7790
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_5
.end method

.method private startSelectionActionMode()Z
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 11182
    iget-object v4, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_8

    .line 11245
    :cond_7
    :goto_7
    return v5

    .line 11187
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_20

    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v4, :cond_20

    .line 11188
    :cond_18
    const-string v4, "TextView"

    const-string v6, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 11192
    :cond_20
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 11194
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 11200
    :cond_2c
    invoke-direct {p0}, Landroid/widget/TextView;->extractedTextModeWillBeStarted()Z

    move-result v3

    .line 11204
    .local v3, willExtract:Z
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-direct {p0}, Landroid/widget/TextView;->canReplaceActionMode()Z

    move-result v4

    if-eqz v4, :cond_92

    .line 11205
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 11206
    iget-object v6, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-virtual {v6, p0, v4}, Lcom/htc/textselection/HtcTextSelectionManager;->onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 11207
    :cond_4b
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 11209
    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v4, :cond_8a

    .line 11210
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 11215
    :cond_5c
    :goto_5c
    invoke-direct {p0}, Landroid/widget/TextView;->prepareQuickActions()V

    .line 11216
    invoke-direct {p0}, Landroid/widget/TextView;->showQuickAction()V

    .line 11217
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    .line 11229
    :cond_64
    :goto_64
    iget-object v4, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_6e

    if-nez v3, :cond_6e

    iget-boolean v4, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    if-eqz v4, :cond_a2

    .line 11235
    .local v2, selectionStarted:Z
    :cond_6e
    :goto_6e
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 11237
    if-eqz v2, :cond_87

    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v4, :cond_87

    iget-boolean v4, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    if-eqz v4, :cond_87

    iget-boolean v4, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    if-nez v4, :cond_87

    .line 11239
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 11240
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_87

    .line 11241
    invoke-virtual {v1, p0, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_87
    move v5, v2

    .line 11245
    goto/16 :goto_7

    .line 11212
    .end local v2           #selectionStarted:Z
    :cond_8a
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView$SelectionModifierCursorController;->forceShow()V

    goto :goto_5c

    .line 11223
    :cond_92
    if-nez v3, :cond_64

    .line 11224
    new-instance v0, Landroid/widget/TextView$SelectionActionModeCallback;

    invoke-direct {v0, p0, v7}, Landroid/widget/TextView$SelectionActionModeCallback;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    .line 11225
    .local v0, actionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 11226
    iput-boolean v5, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    goto :goto_64

    .end local v0           #actionModeCallback:Landroid/view/ActionMode$Callback;
    :cond_a2
    move v2, v5

    .line 11229
    goto :goto_6e
.end method

.method private startStopMarquee(Z)V
    .registers 4
    .parameter "start"

    .prologue
    .line 7818
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_b

    .line 7819
    if-eqz p1, :cond_c

    .line 7820
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 7825
    :cond_b
    :goto_b
    return-void

    .line 7822
    :cond_c
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_b
.end method

.method private stopMarquee()V
    .registers 4

    .prologue
    .line 7797
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_15

    .line 7800
    iget-boolean v1, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    if-nez v1, :cond_15

    .line 7801
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->stop()V

    .line 7806
    :cond_15
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    .line 7807
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 7808
    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7809
    .local v0, tmp:Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7810
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7811
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 7812
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7813
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7815
    .end local v0           #tmp:Landroid/text/Layout;
    :cond_2f
    return-void
.end method

.method private textCanBeSelected()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 9384
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v1

    if-nez v1, :cond_e

    .line 9385
    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_24

    iget-boolean v1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_24
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private touchPositionIsInSelection()Z
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 10221
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 10222
    .local v4, selectionStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 10224
    .local v3, selectionEnd:I
    if-ne v4, v3, :cond_c

    .line 10246
    :goto_b
    return v7

    .line 10228
    :cond_c
    if-le v4, v3, :cond_18

    .line 10229
    move v5, v4

    .line 10230
    .local v5, tmp:I
    move v4, v3

    .line 10231
    move v3, v5

    .line 10232
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10235
    .end local v5           #tmp:I
    :cond_18
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    .line 10238
    .local v2, selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    if-nez v2, :cond_27

    .line 10239
    const-string v6, "TextView"

    const-string/jumbo v8, "selectionController is null"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 10243
    :cond_27
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 10244
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 10246
    .local v0, maxOffset:I
    if-lt v1, v4, :cond_36

    if-ge v0, v3, :cond_36

    const/4 v6, 0x1

    :goto_34
    move v7, v6

    goto :goto_b

    :cond_36
    move v6, v7

    goto :goto_34
.end method

.method private updateCursorPosition(IIIF)V
    .registers 11
    .parameter "cursorIndex"
    .parameter "top"
    .parameter "bottom"
    .parameter "horizontal"

    .prologue
    const/high16 v5, 0x3f00

    .line 5336
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    if-nez v2, :cond_18

    .line 5337
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, p1

    .line 5339
    :cond_18
    iget-object v2, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_23

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 5341
    :cond_23
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5342
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 5343
    .local v1, width:I
    sub-float v2, p4, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 5344
    float-to-int v2, p4

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 5345
    .local v0, left:I
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5347
    return-void
.end method

.method private updateCursorsPositions()V
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x2

    .line 5310
    iget v5, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v5, :cond_a

    .line 5311
    iput v9, p0, Landroid/widget/TextView;->mCursorCount:I

    .line 5333
    :cond_9
    :goto_9
    return-void

    .line 5315
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 5316
    .local v3, offset:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 5317
    .local v1, line:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 5318
    .local v4, top:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 5320
    .local v0, bottom:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    move v5, v6

    :goto_2b
    iput v5, p0, Landroid/widget/TextView;->mCursorCount:I

    .line 5322
    move v2, v0

    .line 5323
    .local v2, middle:I
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ne v5, v6, :cond_36

    .line 5325
    add-int v5, v4, v0

    shr-int/lit8 v2, v5, 0x1

    .line 5328
    :cond_36
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    invoke-direct {p0, v9, v4, v2, v5}, Landroid/widget/TextView;->updateCursorPosition(IIIF)V

    .line 5330
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ne v5, v6, :cond_9

    .line 5331
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v5

    invoke-direct {p0, v7, v2, v0, v5}, Landroid/widget/TextView;->updateCursorPosition(IIIF)V

    goto :goto_9

    .end local v2           #middle:I
    :cond_4d
    move v5, v7

    .line 5320
    goto :goto_2b
.end method

.method private updateSpellCheckSpans(IIZ)V
    .registers 6
    .parameter "start"
    .parameter "end"
    .parameter "createSpellChecker"

    .prologue
    .line 8240
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_42

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_42

    .line 8245
    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_39

    if-nez p3, :cond_1a

    iget-boolean v0, p0, Landroid/widget/TextView;->mIsSCTimeoutclosed:Z

    if-eqz v0, :cond_39

    .line 8246
    :cond_1a
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsMessage:Z

    if-eqz v0, :cond_21

    .line 8247
    invoke-virtual {p0}, Landroid/widget/TextView;->setSCtimeout()V

    .line 8249
    :cond_21
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsSCTimeoutclosed:Z

    if-eqz v0, :cond_43

    .line 8250
    new-instance v0, Landroid/widget/SpellChecker;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;Z)V

    iput-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 8251
    if-lez p1, :cond_36

    .line 8252
    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 8254
    :cond_36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mIsSCTimeoutclosed:Z

    .line 8261
    :cond_39
    :goto_39
    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_42

    .line 8262
    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 8265
    :cond_42
    return-void

    .line 8259
    :cond_43
    new-instance v0, Landroid/widget/SpellChecker;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    goto :goto_39
.end method

.method private updateTextColors()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2991
    const/4 v1, 0x0

    .line 2992
    .local v1, inval:Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2993
    .local v0, color:I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_13

    .line 2994
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 2995
    const/4 v1, 0x1

    .line 2997
    :cond_13
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2c

    .line 2998
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2999
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_2c

    .line 3000
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 3001
    const/4 v1, 0x1

    .line 3004
    :cond_2c
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_49

    .line 3005
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 3006
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_49

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_49

    .line 3007
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 3008
    const/4 v1, 0x1

    .line 3011
    :cond_49
    if-eqz v1, :cond_4e

    .line 3012
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3014
    :cond_4e
    return-void
.end method

.method private useHtcTextSelection()Z
    .registers 2

    .prologue
    .line 13644
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private viewportToContentHorizontalOffset()I
    .registers 3

    .prologue
    .line 7534
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private viewportToContentVerticalOffset()I
    .registers 4

    .prologue
    .line 7538
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v0, v1, v2

    .line 7539
    .local v0, offset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_16

    .line 7540
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 7542
    :cond_16
    return v0
.end method


# virtual methods
.method protected SCATDPostScan_internal(Ljava/lang/String;)V
    .registers 5
    .parameter "word"

    .prologue
    .line 13990
    iget-object v2, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    if-nez v2, :cond_b

    .line 13991
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    .line 13993
    :cond_b
    iget-object v2, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13994
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    .line 14001
    .end local v1           #s:Ljava/lang/String;
    :goto_23
    return-void

    .line 13999
    :cond_24
    iget-object v2, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14000
    invoke-direct {p0, p1}, Landroid/widget/TextView;->SCATDRemoveSpan(Ljava/lang/String;)V

    goto :goto_23
.end method

.method SCATDProcessQueue()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 14034
    iget-object v1, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_e

    .line 14047
    :cond_d
    :goto_d
    return-void

    .line 14037
    :cond_e
    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    if-nez v1, :cond_1a

    .line 14038
    new-instance v1, Landroid/widget/TextView$SCATDHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/TextView$SCATDHandler;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    .line 14040
    :cond_1a
    sget-boolean v1, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    if-nez v1, :cond_d

    .line 14043
    sput-boolean v5, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    .line 14044
    iget-object v2, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    new-instance v3, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView$SCATDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 14045
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/TextView$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d
.end method

.method SCATDStop()V
    .registers 3

    .prologue
    .line 14163
    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    if-eqz v0, :cond_19

    .line 14164
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    .line 14165
    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SCATDHandler;->removeMessages(I)V

    .line 14166
    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SCATDHandler;->removeMessages(I)V

    .line 14167
    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SCATDHandler;->removeMessages(I)V

    .line 14169
    :cond_19
    iget-object v0, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14170
    :cond_22
    return-void
.end method

.method public SCATDWordAdded(Ljava/lang/String;)V
    .registers 6
    .parameter "word"

    .prologue
    .line 14059
    iget-object v1, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    if-eqz v1, :cond_2f

    .line 14061
    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView$SCATDHandler;->removeMessages(I)V

    .line 14062
    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView$SCATDHandler;->removeMessages(I)V

    .line 14063
    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView$SCATDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 14064
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/TextView$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 14066
    .end local v0           #m:Landroid/os/Message;
    :cond_2f
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3
    .parameter "watcher"

    .prologue
    .line 8003
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 8004
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8007
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8008
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 2974
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 2975
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .registers 6
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2983
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_d

    .line 2984
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2987
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2988
    return-void
.end method

.method areSuggestionsShown()Z
    .registers 2

    .prologue
    .line 11092
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public beginBatchEdit()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 6285
    iput-boolean v5, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 6286
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6287
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_26

    .line 6288
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 6289
    .local v1, nesting:I
    if-ne v1, v5, :cond_26

    .line 6290
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    .line 6291
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 6292
    iget-boolean v2, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_27

    .line 6295
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6296
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 6302
    :goto_23
    invoke-virtual {p0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 6305
    .end local v1           #nesting:I
    :cond_26
    return-void

    .line 6298
    .restart local v1       #nesting:I
    :cond_27
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6299
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 6300
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_23
.end method

.method public bringPointIntoView(I)Z
    .registers 30
    .parameter "offset"

    .prologue
    .line 7265
    const/4 v5, 0x0

    .line 7267
    .local v5, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    if-nez v24, :cond_b

    move v6, v5

    .line 7436
    .end local v5           #changed:Z
    .local v6, changed:I
    :goto_a
    return v6

    .line 7278
    .end local v6           #changed:I
    .restart local v5       #changed:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v17

    .line 7280
    .local v17, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 7281
    .local v23, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    .line 7282
    .local v19, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    add-int/lit8 v25, v17, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 7284
    .local v4, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/util/FloatMath;->floor(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v16, v0

    .line 7285
    .local v16, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/util/FloatMath;->ceil(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 7286
    .local v18, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/text/Layout;->getHeight()I

    move-result v15

    .line 7288
    .local v15, ht:I
    sget-object v24, Landroid/widget/TextView$5;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_2d2

    .line 7303
    const/4 v11, 0x0

    .line 7309
    .local v11, grav:I
    :goto_98
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v25

    sub-int v14, v24, v25

    .line 7310
    .local v14, hspace:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v25

    sub-int v22, v24, v25

    .line 7312
    .local v22, vspace:I
    sub-int v24, v4, v19

    div-int/lit8 v13, v24, 0x2

    .line 7313
    .local v13, hslack:I
    move/from16 v21, v13

    .line 7315
    .local v21, vslack:I
    div-int/lit8 v24, v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_dc

    .line 7316
    div-int/lit8 v21, v22, 0x4

    .line 7317
    :cond_dc
    div-int/lit8 v24, v14, 0x4

    move/from16 v0, v24

    if-le v13, v0, :cond_e4

    .line 7318
    div-int/lit8 v13, v14, 0x4

    .line 7320
    :cond_e4
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    .line 7321
    .local v12, hs:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v20, v0

    .line 7323
    .local v20, vs:I
    sub-int v24, v19, v20

    move/from16 v0, v24

    move/from16 v1, v21

    if-ge v0, v1, :cond_f8

    .line 7324
    sub-int v20, v19, v21

    .line 7325
    :cond_f8
    sub-int v24, v4, v20

    sub-int v25, v22, v21

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_106

    .line 7326
    sub-int v24, v22, v21

    sub-int v20, v4, v24

    .line 7327
    :cond_106
    sub-int v24, v15, v20

    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_110

    .line 7328
    sub-int v20, v15, v22

    .line 7329
    :cond_110
    rsub-int/lit8 v24, v20, 0x0

    if-lez v24, :cond_116

    .line 7330
    const/16 v20, 0x0

    .line 7332
    :cond_116
    if-eqz v11, :cond_12e

    .line 7333
    sub-int v24, v23, v12

    move/from16 v0, v24

    if-ge v0, v13, :cond_120

    .line 7334
    sub-int v12, v23, v13

    .line 7336
    :cond_120
    sub-int v24, v23, v12

    sub-int v25, v14, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_12e

    .line 7337
    sub-int v24, v14, v13

    sub-int v12, v23, v24

    .line 7341
    :cond_12e
    if-gez v11, :cond_1f3

    .line 7342
    sub-int v24, v16, v12

    if-lez v24, :cond_136

    .line 7343
    move/from16 v12, v16

    .line 7344
    :cond_136
    sub-int v24, v18, v12

    move/from16 v0, v24

    if-ge v0, v14, :cond_13e

    .line 7345
    sub-int v12, v18, v14

    .line 7392
    :cond_13e
    :goto_13e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_154

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v24, v0

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_164

    .line 7393
    :cond_154
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    if-nez v24, :cond_259

    .line 7394
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->scrollTo(II)V

    .line 7415
    :goto_163
    const/4 v5, 0x1

    .line 7418
    :cond_164
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v24

    if-eqz v24, :cond_1c7

    .line 7422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    if-nez v24, :cond_17d

    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 7427
    :cond_17d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    add-int/lit8 v25, v23, -0x2

    add-int/lit8 v26, v23, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v19

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 7428
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 7429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Rect;->offset(II)V

    .line 7431
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v24

    if-eqz v24, :cond_1c7

    .line 7432
    const/4 v5, 0x1

    :cond_1c7
    move v6, v5

    .line 7436
    .restart local v6       #changed:I
    goto/16 :goto_a

    .line 7290
    .end local v6           #changed:I
    .end local v11           #grav:I
    .end local v12           #hs:I
    .end local v13           #hslack:I
    .end local v14           #hspace:I
    .end local v20           #vs:I
    .end local v21           #vslack:I
    .end local v22           #vspace:I
    :pswitch_1ca
    const/4 v11, 0x1

    .line 7291
    .restart local v11       #grav:I
    goto/16 :goto_98

    .line 7293
    .end local v11           #grav:I
    :pswitch_1cd
    const/4 v11, -0x1

    .line 7294
    .restart local v11       #grav:I
    goto/16 :goto_98

    .line 7296
    .end local v11           #grav:I
    :pswitch_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    .line 7297
    .restart local v11       #grav:I
    goto/16 :goto_98

    .line 7299
    .end local v11           #grav:I
    :pswitch_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v24

    move/from16 v0, v24

    neg-int v11, v0

    .line 7300
    .restart local v11       #grav:I
    goto/16 :goto_98

    .line 7346
    .restart local v12       #hs:I
    .restart local v13       #hslack:I
    .restart local v14       #hspace:I
    .restart local v20       #vs:I
    .restart local v21       #vslack:I
    .restart local v22       #vspace:I
    :cond_1f3
    if-lez v11, :cond_205

    .line 7347
    sub-int v24, v18, v12

    move/from16 v0, v24

    if-ge v0, v14, :cond_1fd

    .line 7348
    sub-int v12, v18, v14

    .line 7349
    :cond_1fd
    sub-int v24, v16, v12

    if-lez v24, :cond_13e

    .line 7350
    move/from16 v12, v16

    goto/16 :goto_13e

    .line 7352
    :cond_205
    sub-int v24, v18, v16

    move/from16 v0, v24

    if-gt v0, v14, :cond_215

    .line 7356
    sub-int v24, v18, v16

    sub-int v24, v14, v24

    div-int/lit8 v24, v24, 0x2

    sub-int v12, v16, v24

    goto/16 :goto_13e

    .line 7357
    :cond_215
    sub-int v24, v18, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_221

    .line 7362
    sub-int v12, v18, v14

    goto/16 :goto_13e

    .line 7363
    :cond_221
    add-int v24, v16, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_22d

    .line 7368
    move/from16 v12, v16

    goto/16 :goto_13e

    .line 7369
    :cond_22d
    move/from16 v0, v16

    if-le v0, v12, :cond_235

    .line 7373
    move/from16 v12, v16

    goto/16 :goto_13e

    .line 7374
    :cond_235
    add-int v24, v12, v14

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_241

    .line 7378
    sub-int v12, v18, v14

    goto/16 :goto_13e

    .line 7383
    :cond_241
    sub-int v24, v23, v12

    move/from16 v0, v24

    if-ge v0, v13, :cond_249

    .line 7384
    sub-int v12, v23, v13

    .line 7386
    :cond_249
    sub-int v24, v23, v12

    sub-int v25, v14, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_13e

    .line 7387
    sub-int v24, v14, v13

    sub-int v12, v23, v24

    goto/16 :goto_13e

    .line 7396
    :cond_259
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v26, v0

    sub-long v7, v24, v26

    .line 7397
    .local v7, duration:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v24, v0

    sub-int v9, v12, v24

    .line 7398
    .local v9, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v24, v0

    sub-int v10, v20, v24

    .line 7400
    .local v10, dy:I
    const-wide/16 v24, 0xfa

    cmp-long v24, v7, v24

    if-lez v24, :cond_2b6

    .line 7401
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 7402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->getDuration()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    .line 7403
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 7412
    :goto_2aa
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_163

    .line 7405
    :cond_2b6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->isFinished()Z

    move-result v24

    if-nez v24, :cond_2cb

    .line 7406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7409
    :cond_2cb
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_2aa

    .line 7288
    nop

    :pswitch_data_2d2
    .packed-switch 0x1
        :pswitch_1ca
        :pswitch_1cd
        :pswitch_1d0
        :pswitch_1e0
    .end packed-switch
.end method

.method public cancelLongPress()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 9064
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 9065
    iput-boolean v0, p0, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    .line 9066
    iput-boolean v0, p0, Landroid/widget/TextView;->mScrolled:Z

    .line 9067
    return-void
.end method

.method public clearComposingText()V
    .registers 2

    .prologue
    .line 8767
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_d

    .line 8768
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 8770
    :cond_d
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .registers 3

    .prologue
    .line 9252
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1f

    .line 9253
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    .line 9257
    :goto_17
    return v0

    .line 9253
    :cond_18
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_17

    .line 9257
    :cond_1f
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_17
.end method

.method public computeScroll()V
    .registers 2

    .prologue
    .line 7503
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_22

    .line 7504
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 7505
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    .line 7506
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    .line 7507
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    .line 7508
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 7511
    :cond_22
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 3

    .prologue
    .line 9270
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 9262
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    .line 9263
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 9265
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_a
.end method

.method public debug(I)V
    .registers 5
    .parameter "depth"

    .prologue
    .line 7547
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 7549
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 7550
    .local v0, output:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7554
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_c0

    .line 7556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7557
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_ba

    .line 7558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7564
    :cond_ba
    :goto_ba
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7565
    return-void

    .line 7562
    :cond_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ba
.end method

.method protected deleteText_internal(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 13392
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 13393
    return-void
.end method

.method public didTouchFocusSelect()Z
    .registers 2

    .prologue
    .line 9059
    iget-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    return v0
.end method

.method protected disableUpdateCursorPositionByExtras()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5300
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 5302
    .local v0, extrasBoundle:Landroid/os/Bundle;
    if-nez v0, :cond_8

    .line 5306
    :goto_7
    return v1

    :cond_8
    const-string v2, "Fusion_update_cursor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_7
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 2

    .prologue
    .line 8552
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 8553
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 8554
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 8555
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 4

    .prologue
    .line 3018
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 3019
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_27

    :cond_f
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_27

    :cond_1b
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3022
    :cond_27
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3025
    :cond_2a
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3026
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_98

    .line 3027
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 3028
    .local v1, state:[I
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_43

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 3029
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3031
    :cond_43
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_54

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 3032
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3034
    :cond_54
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_65

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 3035
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3037
    :cond_65
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_76

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 3038
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3040
    :cond_76
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_87

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 3041
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3043
    :cond_87
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_98

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 3044
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3047
    .end local v1           #state:[I
    :cond_98
    return-void
.end method

.method public enableHtcTextSelection(ZI)V
    .registers 7
    .parameter "enable"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 13580
    if-eqz p1, :cond_73

    .line 13581
    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstance()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 13582
    invoke-virtual {p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 13583
    iput-boolean v2, p0, Landroid/widget/TextView;->mIgnoreSetText:Z

    .line 13584
    iput v2, p0, Landroid/widget/TextView;->mFlags:I

    .line 13585
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 13586
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_21

    .line 13587
    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    .line 13588
    :cond_21
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v1, :cond_2a

    .line 13589
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 13593
    :cond_2a
    :goto_2a
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_34

    .line 13594
    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    .line 13596
    :cond_34
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_3e

    .line 13597
    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    .line 13599
    :cond_3e
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_48

    .line 13600
    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    .line 13608
    :cond_48
    :goto_48
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 13609
    iget-boolean v1, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_53

    iget-boolean v1, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-eqz v1, :cond_6b

    .line 13611
    :cond_53
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 13612
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_6b

    .line 13613
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_62

    .line 13614
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 13616
    :cond_62
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_6b

    .line 13617
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 13626
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_6b
    return-void

    .line 13591
    :cond_6c
    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    goto :goto_2a

    .line 13602
    :cond_73
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 13603
    iput-object v3, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 13604
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    .line 13605
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    instance-of v1, v1, Lcom/htc/textselection/HtcTextSelectionManager;

    if-eqz v1, :cond_48

    .line 13606
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_48
.end method

.method public enableHtcTextSelection(ZZ)V
    .registers 4
    .parameter "enable"
    .parameter "triggerByLongClick"

    .prologue
    .line 13633
    if-eqz p2, :cond_7

    const/4 v0, 0x2

    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    .line 13635
    return-void

    .line 13633
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public endBatchEdit()V
    .registers 4

    .prologue
    .line 6308
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 6309
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6310
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_12

    .line 6311
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 6312
    .local v1, nesting:I
    if-nez v1, :cond_12

    .line 6313
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 6316
    .end local v1           #nesting:I
    :cond_12
    return-void
.end method

.method ensureEndedBatchEdit()V
    .registers 3

    .prologue
    .line 6319
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6320
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_e

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_e

    .line 6321
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 6322
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 6324
    :cond_e
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .registers 9
    .parameter "request"
    .parameter "outText"

    .prologue
    const/4 v2, -0x1

    .line 5974
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .registers 15
    .parameter "request"
    .parameter "partialStartOffset"
    .parameter "partialEndOffset"
    .parameter "delta"
    .parameter "outText"

    .prologue
    const/4 v6, 0x0

    .line 5984
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 5985
    .local v1, content:Ljava/lang/CharSequence;
    if-eqz v1, :cond_4c

    .line 5986
    const/4 v7, -0x2

    if-eq p2, v7, :cond_8f

    .line 5987
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5988
    .local v0, N:I
    if-gez p2, :cond_4d

    .line 5989
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5990
    const/4 p2, 0x0

    .line 5991
    move p3, v0

    .line 6024
    :cond_15
    :goto_15
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_88

    .line 6025
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 6036
    .end local v0           #N:I
    :goto_21
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 6037
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/16 v8, 0x800

    invoke-static {v7, v8}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_33

    .line 6038
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 6040
    :cond_33
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v7, :cond_3d

    .line 6041
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 6043
    :cond_3d
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 6044
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 6045
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 6046
    const/4 v6, 0x1

    .line 6048
    :cond_4c
    return v6

    .line 5995
    .restart local v0       #N:I
    :cond_4d
    add-int/2addr p3, p4

    .line 5997
    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_73

    move-object v4, v1

    .line 5998
    check-cast v4, Landroid/text/Spanned;

    .line 5999
    .local v4, spanned:Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 6001
    .local v5, spans:[Ljava/lang/Object;
    array-length v2, v5

    .line 6002
    .local v2, i:I
    :cond_5c
    :goto_5c
    if-lez v2, :cond_73

    .line 6003
    add-int/lit8 v2, v2, -0x1

    .line 6004
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 6005
    .local v3, j:I
    if-ge v3, p2, :cond_69

    move p2, v3

    .line 6006
    :cond_69
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 6007
    if-le v3, p3, :cond_5c

    move p3, v3

    goto :goto_5c

    .line 6010
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #spanned:Landroid/text/Spanned;
    .end local v5           #spans:[Ljava/lang/Object;
    :cond_73
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 6011
    sub-int v7, p3, p4

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 6013
    if-le p2, v0, :cond_80

    .line 6014
    move p2, v0

    .line 6018
    :cond_7c
    :goto_7c
    if-le p3, v0, :cond_84

    .line 6019
    move p3, v0

    goto :goto_15

    .line 6015
    :cond_80
    if-gez p2, :cond_7c

    .line 6016
    const/4 p2, 0x0

    goto :goto_7c

    .line 6020
    :cond_84
    if-gez p3, :cond_15

    .line 6021
    const/4 p3, 0x0

    goto :goto_15

    .line 6028
    :cond_88
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_21

    .line 6032
    .end local v0           #N:I
    :cond_8f
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 6033
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 6034
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_21
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .registers 7
    .parameter
    .parameter "searched"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 9275
    .local p1, outViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 9276
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_36

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 9278
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 9279
    .local v0, searchedLowerCase:Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 9280
    .local v1, textLowerCase:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 9281
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9284
    .end local v0           #searchedLowerCase:Ljava/lang/String;
    .end local v1           #textLowerCase:Ljava/lang/String;
    :cond_36
    return-void
.end method

.method finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V
    .registers 3
    .parameter "ims"

    .prologue
    .line 6327
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 6329
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_12

    .line 6330
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 6331
    invoke-virtual {p0}, Landroid/widget/TextView;->reportExtractedText()Z

    .line 6336
    :cond_11
    :goto_11
    return-void

    .line 6332
    :cond_12
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_11

    .line 6334
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_11
.end method

.method public forceStartMarquee()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 14187
    iget-boolean v0, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    if-ne v0, v2, :cond_9

    .line 14190
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_a

    .line 14205
    :cond_9
    :goto_9
    return-void

    .line 14192
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-nez v0, :cond_9

    .line 14196
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2b
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_37
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-ne v0, v2, :cond_9

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14199
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v0, :cond_4e

    new-instance v0, Landroid/widget/TextView$Marquee;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 14201
    :cond_4e
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_9
.end method

.method public forceStopMarquee()V
    .registers 3

    .prologue
    .line 14209
    iget-boolean v0, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 14211
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_16

    .line 14212
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 14215
    :cond_16
    return-void
.end method

.method public getAnchorHeight()I
    .registers 2

    .prologue
    .line 11569
    iget v0, p0, Landroid/widget/TextView;->mAnchorHeight:I

    return v0
.end method

.method public final getAutoLinkMask()I
    .registers 2

    .prologue
    .line 2223
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .registers 5

    .prologue
    .line 5452
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_9

    .line 5453
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 5461
    :goto_8
    return v1

    .line 5456
    :cond_9
    const/4 v0, 0x0

    .line 5457
    .local v0, voffset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_17

    .line 5458
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 5461
    :cond_17
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_8
.end method

.method protected getBottomPaddingOffset()I
    .registers 4

    .prologue
    .line 4747
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .registers 3

    .prologue
    .line 2197
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2198
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_7

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_6
    return v1

    :cond_7
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2144
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2145
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_1d

    .line 2146
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    .line 2150
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_1c
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2160
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2161
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_1d

    .line 2162
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    .line 2166
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_1c
.end method

.method public getCompoundPaddingBottom()I
    .registers 4

    .prologue
    .line 1601
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1602
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1603
    :cond_8
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    .line 1605
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public getCompoundPaddingEnd()I
    .registers 2

    .prologue
    .line 1659
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 1660
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 1663
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    .line 1665
    :goto_e
    return v0

    :pswitch_f
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_e

    .line 1660
    :pswitch_data_14
    .packed-switch 0x40000000
        :pswitch_f
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .registers 4

    .prologue
    .line 1614
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1615
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1616
    :cond_8
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    .line 1618
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public getCompoundPaddingRight()I
    .registers 4

    .prologue
    .line 1627
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1628
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1629
    :cond_8
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    .line 1631
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public getCompoundPaddingStart()I
    .registers 2

    .prologue
    .line 1642
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 1643
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 1646
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 1648
    :goto_e
    return v0

    :pswitch_f
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_e

    .line 1643
    :pswitch_data_14
    .packed-switch 0x40000000
        :pswitch_f
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .registers 4

    .prologue
    .line 1588
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1589
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1590
    :cond_8
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    .line 1592
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public final getCurrentHintTextColor()I
    .registers 2

    .prologue
    .line 2620
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_6
.end method

.method public final getCurrentTextColor()I
    .registers 2

    .prologue
    .line 2466
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    .prologue
    .line 11174
    iget-object v0, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method protected getDefaultEditable()Z
    .registers 2

    .prologue
    .line 1355
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .prologue
    .line 1363
    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v0, :cond_a

    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    .line 1364
    :cond_a
    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstance()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v0

    .line 1367
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method getEasyUpHardDownOffset(FFI)I
    .registers 14
    .parameter "x"
    .parameter "y"
    .parameter "previousOffset"

    .prologue
    .line 13100
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 13101
    .local v1, layout:Landroid/text/Layout;
    if-nez v1, :cond_8

    const/4 v6, -0x1

    .line 13124
    :goto_7
    return v6

    .line 13103
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr p2, v6

    .line 13105
    const/4 v6, 0x0

    invoke-static {v6, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 13106
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-static {v6, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 13107
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr p2, v6

    .line 13109
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    float-to-int v7, p2

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 13111
    .local v2, line:I
    invoke-virtual {v1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 13112
    .local v3, previousLine:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 13113
    .local v5, previousLineTop:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    .line 13114
    .local v4, previousLineBottom:I
    sub-int v6, v4, v5

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 13118
    .local v0, hysteresisThreshold:I
    add-int/lit8 v6, v3, 0x1

    if-ne v2, v6, :cond_57

    int-to-float v6, v4

    sub-float v6, p2, v6

    int-to-float v7, v0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_57

    .line 13119
    move v2, v3

    .line 13124
    :cond_52
    :goto_52
    invoke-direct {p0, v2, p1}, Landroid/widget/TextView;->getOffsetForHorizontal(IF)I

    move-result v6

    goto :goto_7

    .line 13120
    :cond_57
    if-lez v3, :cond_52

    if-ne v2, v3, :cond_52

    int-to-float v6, v5

    sub-float v6, p2, v6

    int-to-float v7, v0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_52

    .line 13121
    add-int/lit8 v2, v3, -0x1

    goto :goto_52
.end method

.method public getEditableText()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 1397
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7718
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 4101
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .registers 8

    .prologue
    .line 1712
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    .line 1713
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1735
    :cond_9
    :goto_9
    return v0

    .line 1716
    :cond_a
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_19

    .line 1717
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_9

    .line 1720
    :cond_19
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1721
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1722
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1723
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1725
    .local v2, layoutht:I
    if-ge v2, v4, :cond_9

    .line 1729
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1730
    .local v1, gravity:I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3f

    .line 1731
    add-int v5, v0, v4

    sub-int v0, v5, v2

    goto :goto_9

    .line 1732
    :cond_3f
    const/16 v5, 0x50

    if-eq v1, v5, :cond_9

    .line 1735
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    goto :goto_9
.end method

.method public getExtendedPaddingTop()I
    .registers 9

    .prologue
    .line 1675
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    .line 1676
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1702
    :cond_9
    :goto_9
    return v3

    .line 1679
    :cond_a
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_34

    .line 1680
    const-string v5, "TextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getExtendedPaddingTop] mLayout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mText="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    :cond_34
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_43

    .line 1684
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    goto :goto_9

    .line 1687
    :cond_43
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1688
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1689
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1690
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1692
    .local v2, layoutht:I
    if-ge v2, v4, :cond_9

    .line 1696
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1697
    .local v1, gravity:I
    const/16 v5, 0x30

    if-eq v1, v5, :cond_9

    .line 1699
    const/16 v5, 0x50

    if-ne v1, v5, :cond_6d

    .line 1700
    add-int v5, v3, v4

    sub-int v3, v5, v2

    goto :goto_9

    .line 1702
    :cond_6d
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    goto :goto_9
.end method

.method protected getFadeHeight(Z)I
    .registers 3
    .parameter "offsetRequired"

    .prologue
    .line 5488
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getFadeTop(Z)I
    .registers 5
    .parameter "offsetRequired"

    .prologue
    .line 5470
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 5479
    :goto_5
    return v1

    .line 5472
    :cond_6
    const/4 v0, 0x0

    .line 5473
    .local v0, voffset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_14

    .line 5474
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 5477
    :cond_14
    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 5479
    :cond_1b
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_5
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 4387
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 14
    .parameter "r"

    .prologue
    const/4 v11, 0x0

    .line 5360
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v7, :cond_9

    .line 5361
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 5410
    :goto_8
    return-void

    .line 5365
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 5366
    .local v5, selEnd:I
    if-gez v5, :cond_13

    .line 5367
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_8

    .line 5371
    :cond_13
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 5372
    .local v6, selStart:I
    if-ltz v6, :cond_1b

    if-lt v6, v5, :cond_5b

    .line 5373
    :cond_1b
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 5374
    .local v0, line:I
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 5375
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 5376
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    add-int/lit8 v7, v7, -0x2

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 5377
    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v7, 0x4

    iput v7, p1, Landroid/graphics/Rect;->right:I

    .line 5404
    .end local v0           #line:I
    :goto_42
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    .line 5405
    .local v3, paddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    .line 5406
    .local v4, paddingTop:I
    iget v7, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v7, v7, 0x70

    const/16 v8, 0x30

    if-eq v7, v8, :cond_57

    .line 5407
    invoke-direct {p0, v11}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v7

    add-int/2addr v4, v7

    .line 5409
    :cond_57
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_8

    .line 5379
    .end local v3           #paddingLeft:I
    .end local v4           #paddingTop:I
    :cond_5b
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 5380
    .local v2, lineStart:I
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 5381
    .local v1, lineEnd:I
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 5382
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 5383
    if-ne v2, v1, :cond_8c

    .line 5384
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 5385
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_42

    .line 5389
    :cond_8c
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v7, :cond_97

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5390
    :cond_97
    iget-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v7, :cond_a9

    .line 5391
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 5392
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7, v6, v5, v8}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5393
    iput-boolean v11, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5395
    :cond_a9
    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v8

    .line 5396
    :try_start_ac
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v9, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5397
    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, -0x1

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 5398
    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Landroid/graphics/Rect;->right:I

    .line 5399
    monitor-exit v8

    goto/16 :goto_42

    :catchall_c9
    move-exception v7

    monitor-exit v8
    :try_end_cb
    .catchall {:try_start_ac .. :try_end_cb} :catchall_c9

    throw v7
.end method

.method public getFreezesText()Z
    .registers 2

    .prologue
    .line 3265
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 2701
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 3687
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 2611
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontallyScrolling()Z
    .registers 2

    .prologue
    .line 2756
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getImeActionId()I
    .registers 2

    .prologue
    .line 3916
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 3905
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getImeOptions()I
    .registers 2

    .prologue
    .line 3876
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .registers 4
    .parameter "create"

    .prologue
    const/4 v0, 0x0

    .line 4084
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v1, :cond_f

    .line 4085
    if-nez p1, :cond_8

    .line 4092
    :cond_7
    :goto_7
    return-object v0

    .line 4086
    :cond_8
    new-instance v1, Landroid/widget/TextView$InputContentType;

    invoke-direct {v1}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 4088
    :cond_f
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_20

    .line 4089
    if-eqz p1, :cond_7

    .line 4090
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 4092
    :cond_20
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_7
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 3851
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 13241
    iget-boolean v2, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v2, :cond_6

    .line 13252
    :goto_5
    return-object v1

    .line 13245
    :cond_6
    iget-object v2, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-nez v2, :cond_1a

    .line 13246
    new-instance v2, Landroid/widget/TextView$InsertionPointCursorController;

    invoke-direct {v2, p0, v1}, Landroid/widget/TextView$InsertionPointCursorController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v2, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    .line 13248
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 13249
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 13252
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1a
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    goto :goto_5
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .registers 2

    .prologue
    .line 1423
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .registers 2

    .prologue
    .line 1415
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 9192
    iget v4, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v4, v4

    const v5, 0x40a95555

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_e

    .line 9217
    :cond_d
    :goto_d
    :pswitch_d
    return v3

    .line 9193
    :cond_e
    iget-object v4, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v4, v5, :cond_4a

    iget v4, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v4, v7, :cond_4a

    .line 9195
    iget-object v4, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v4, :cond_35

    iget-object v4, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v4}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v4

    if-nez v4, :cond_35

    .line 9196
    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 9197
    .local v2, marquee:Landroid/widget/TextView$Marquee;
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 9198
    iget v3, v2, Landroid/widget/TextView$Marquee;->mScroll:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_d

    .line 9202
    .end local v2           #marquee:Landroid/widget/TextView$Marquee;
    :cond_35
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v7, :cond_4a

    .line 9203
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    .line 9204
    .local v1, layoutDirection:I
    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v4, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 9205
    .local v0, absoluteGravity:I
    and-int/lit8 v4, v0, 0x7

    packed-switch v4, :pswitch_data_76

    .line 9217
    .end local v0           #absoluteGravity:I
    .end local v1           #layoutDirection:I
    :cond_4a
    :pswitch_4a
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v3

    goto :goto_d

    .line 9209
    .restart local v0       #absoluteGravity:I
    .restart local v1       #layoutDirection:I
    :pswitch_4f
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    iget v4, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_d

    .line 9205
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_d
        :pswitch_4a
        :pswitch_d
        :pswitch_4a
        :pswitch_4f
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .registers 5

    .prologue
    .line 4736
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 7
    .parameter "line"
    .parameter "bounds"

    .prologue
    const/4 v2, 0x0

    .line 5430
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_b

    .line 5431
    if-eqz p2, :cond_a

    .line 5432
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5446
    :cond_a
    :goto_a
    return v2

    .line 5437
    :cond_b
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 5439
    .local v0, baseline:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 5440
    .local v1, voffset:I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_23

    .line 5441
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 5443
    :cond_23
    if-eqz p2, :cond_2c

    .line 5444
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 5446
    :cond_2c
    add-int v2, v0, v1

    goto :goto_a
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 5417
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLineHeight()I
    .registers 3

    .prologue
    .line 1407
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 2650
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .registers 2

    .prologue
    .line 2543
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .prologue
    .line 1491
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getOffsetForPosition(FF)I
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 13059
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v1, -0x1

    .line 13062
    :goto_7
    return v1

    .line 13060
    :cond_8
    invoke-direct {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 13061
    .local v0, line:I
    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v1

    .line 13062
    .local v1, offset:I
    goto :goto_7
.end method

.method public getPaint()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 2506
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .registers 2

    .prologue
    .line 2709
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4050
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 4
    .parameter "who"

    .prologue
    .line 4845
    if-nez p1, :cond_4

    const/4 v1, 0x0

    .line 4854
    :goto_3
    return v1

    .line 4846
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_27

    .line 4847
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4848
    .local v0, drawables:Landroid/widget/TextView$Drawables;
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_27

    .line 4851
    :cond_22
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    goto :goto_3

    .line 4854
    .end local v0           #drawables:Landroid/widget/TextView$Drawables;
    :cond_27
    invoke-super {p0, p1}, Landroid/view/View;->getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    goto :goto_3
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 9222
    iget v6, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v6, v6

    const v7, 0x40a95555

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_e

    .line 9247
    :goto_d
    :pswitch_d
    return v5

    .line 9223
    :cond_e
    iget-object v6, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_47

    iget v6, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v6, v9, :cond_47

    .line 9225
    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_32

    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v6

    if-nez v6, :cond_32

    .line 9226
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 9227
    .local v3, marquee:Landroid/widget/TextView$Marquee;
    iget v5, v3, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    iget v6, v3, Landroid/widget/TextView$Marquee;->mScroll:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_d

    .line 9228
    .end local v3           #marquee:Landroid/widget/TextView$Marquee;
    :cond_32
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-ne v6, v9, :cond_47

    .line 9229
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    .line 9230
    .local v1, layoutDirection:I
    iget v6, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v6, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 9231
    .local v0, absoluteGravity:I
    and-int/lit8 v6, v0, 0x7

    packed-switch v6, :pswitch_data_8a

    .line 9247
    .end local v0           #absoluteGravity:I
    .end local v1           #layoutDirection:I
    :cond_47
    :pswitch_47
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v5

    goto :goto_d

    .line 9233
    .restart local v0       #absoluteGravity:I
    .restart local v1       #layoutDirection:I
    :pswitch_4c
    iget v5, p0, Landroid/widget/TextView;->mRight:I

    iget v6, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 9235
    .local v4, textWidth:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 9236
    .local v2, lineWidth:F
    int-to-float v5, v4

    sub-float v5, v2, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_d

    .line 9241
    .end local v2           #lineWidth:F
    .end local v4           #textWidth:I
    :pswitch_6c
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_d

    .line 9231
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_47
        :pswitch_4c
        :pswitch_47
        :pswitch_d
        :pswitch_47
        :pswitch_6c
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .registers 5

    .prologue
    .line 4752
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;
    .registers 3

    .prologue
    .line 13256
    iget-boolean v1, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_6

    .line 13257
    const/4 v1, 0x0

    .line 13267
    :goto_5
    return-object v1

    .line 13260
    :cond_6
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-nez v1, :cond_1a

    .line 13261
    new-instance v1, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/TextView$SelectionModifierCursorController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    .line 13263
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 13264
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 13267
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1a
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    goto :goto_5
.end method

.method public getSelectionEnd()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 7580
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 7572
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public final getSoftInputShownOnFocus()Z
    .registers 2

    .prologue
    .line 2566
    iget-boolean v0, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 1380
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 2457
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextScaleX()F
    .registers 2

    .prologue
    .line 2373
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .registers 6

    .prologue
    .line 9617
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 9618
    .local v0, locale:Ljava/util/Locale;
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "textservices"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    .line 9620
    .local v2, textServicesManager:Landroid/view/textservice/TextServicesManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 9621
    .local v1, subtype:Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_1f

    .line 9622
    new-instance v0, Ljava/util/Locale;

    .end local v0           #locale:Ljava/util/Locale;
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 9624
    .restart local v0       #locale:Ljava/util/Locale;
    :cond_1f
    return-object v0
.end method

.method public getTextSize()F
    .registers 2

    .prologue
    .line 2317
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .registers 4

    .prologue
    .line 4742
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .registers 3

    .prologue
    .line 1790
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .registers 2

    .prologue
    .line 1772
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .registers 2

    .prologue
    .line 1744
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .registers 2

    .prologue
    .line 1752
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .registers 2

    .prologue
    .line 1762
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .registers 3

    .prologue
    .line 1781
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .registers 2

    .prologue
    .line 1539
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 2422
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2577
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1a

    .line 2578
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 2580
    :goto_19
    return-object v0

    :cond_1a
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_19
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .registers 3

    .prologue
    .line 9636
    iget-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_f

    .line 9637
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    .line 9639
    :cond_f
    iget-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 8100
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 8101
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_8

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_b

    .line 8102
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 8104
    :cond_b
    if-eqz v0, :cond_21

    .line 8105
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 8106
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_28

    .line 8107
    iput p2, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 8108
    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 8113
    :goto_1a
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 8116
    :cond_21
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 8117
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 8118
    return-void

    .line 8110
    :cond_28
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 8111
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    goto :goto_1a
.end method

.method hasInsertionController()Z
    .registers 2

    .prologue
    .line 13230
    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    return v0
.end method

.method public hasSelection()Z
    .registers 4

    .prologue
    .line 7587
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7588
    .local v1, selectionStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7590
    .local v0, selectionEnd:I
    if-ltz v1, :cond_e

    if-eq v1, v0, :cond_e

    const/4 v2, 0x1

    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method

.method hasSelectionController()Z
    .registers 2

    .prologue
    .line 13237
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    return v0
.end method

.method public hideControllers()V
    .registers 1

    .prologue
    .line 13030
    invoke-direct {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 13031
    invoke-direct {p0}, Landroid/widget/TextView;->hideSpanControllers()V

    .line 13032
    return-void
.end method

.method public hideErrorIfUnchanged()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5755
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v0, :cond_c

    .line 5756
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 5758
    :cond_c
    return-void
.end method

.method public hideSuggestions()V
    .registers 2

    .prologue
    .line 11098
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-eqz v0, :cond_9

    .line 11099
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->hide()V

    .line 11101
    :cond_9
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 16
    .parameter "drawable"

    .prologue
    .line 4794
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 4795
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 4796
    .local v4, dirty:Landroid/graphics/Rect;
    iget v7, p0, Landroid/widget/TextView;->mScrollX:I

    .line 4797
    .local v7, scrollX:I
    iget v8, p0, Landroid/widget/TextView;->mScrollY:I

    .line 4802
    .local v8, scrollY:I
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4803
    .local v5, drawables:Landroid/widget/TextView$Drawables;
    if-eqz v5, :cond_31

    .line 4804
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_41

    .line 4805
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 4806
    .local v3, compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 4807
    .local v0, compoundPaddingBottom:I
    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 4809
    .local v9, vspace:I
    iget v10, p0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v7, v10

    .line 4810
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 4835
    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_31
    :goto_31
    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iget v11, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v7

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v8

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4838
    .end local v4           #dirty:Landroid/graphics/Rect;
    .end local v5           #drawables:Landroid/widget/TextView$Drawables;
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    :cond_40
    return-void

    .line 4811
    .restart local v4       #dirty:Landroid/graphics/Rect;
    .restart local v5       #drawables:Landroid/widget/TextView$Drawables;
    .restart local v7       #scrollX:I
    .restart local v8       #scrollY:I
    :cond_41
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_6a

    .line 4812
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 4813
    .restart local v3       #compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 4814
    .restart local v0       #compoundPaddingBottom:I
    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 4816
    .restart local v9       #vspace:I
    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 4817
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 4818
    goto :goto_31

    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_6a
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_8a

    .line 4819
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4820
    .local v1, compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 4821
    .local v2, compoundPaddingRight:I
    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 4823
    .local v6, hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 4824
    iget v10, p0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v8, v10

    .line 4825
    goto :goto_31

    .end local v1           #compoundPaddingLeft:I
    .end local v2           #compoundPaddingRight:I
    .end local v6           #hspace:I
    :cond_8a
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_31

    .line 4826
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4827
    .restart local v1       #compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 4828
    .restart local v2       #compoundPaddingRight:I
    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 4830
    .restart local v6       #hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 4831
    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v10, v11

    add-int/2addr v8, v10

    goto/16 :goto_31
.end method

.method invalidateRegion(IIZ)V
    .registers 20
    .parameter "start"
    .parameter "end"
    .parameter "invalidateCursor"

    .prologue
    .line 4517
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v12, :cond_a

    .line 4518
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 4568
    :goto_9
    return-void

    .line 4520
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 4521
    .local v8, lineStart:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 4529
    .local v10, top:I
    if-lez v8, :cond_29

    .line 4530
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v12

    sub-int/2addr v10, v12

    .line 4535
    :cond_29
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_5a

    .line 4536
    move v7, v8

    .line 4540
    .local v7, lineEnd:I
    :goto_30
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 4542
    .local v2, bottom:I
    if-eqz p3, :cond_65

    .line 4543
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3b
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v5, v12, :cond_65

    .line 4544
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 4545
    .local v3, bounds:Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 4546
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4543
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 4538
    .end local v2           #bottom:I
    .end local v3           #bounds:Landroid/graphics/Rect;
    .end local v5           #i:I
    .end local v7           #lineEnd:I
    :cond_5a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .restart local v7       #lineEnd:I
    goto :goto_30

    .line 4550
    .restart local v2       #bottom:I
    :cond_65
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 4551
    .local v4, compoundPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v13

    add-int v11, v12, v13

    .line 4554
    .local v11, verticalPadding:I
    if-ne v8, v7, :cond_ab

    if-nez p3, :cond_ab

    .line 4555
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v6, v12

    .line 4556
    .local v6, left:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0

    add-double/2addr v12, v14

    double-to-int v9, v12

    .line 4557
    .local v9, right:I
    add-int/2addr v6, v4

    .line 4558
    add-int/2addr v9, v4

    .line 4565
    :goto_96
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v12, v6

    add-int v13, v11, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v14, v9

    add-int v15, v11, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    goto/16 :goto_9

    .line 4561
    .end local v6           #left:I
    .end local v9           #right:I
    :cond_ab
    move v6, v4

    .line 4562
    .restart local v6       #left:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .restart local v9       #right:I
    goto :goto_96
.end method

.method isInBatchEditMode()Z
    .registers 3

    .prologue
    .line 13271
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 13272
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_c

    .line 13273
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-lez v1, :cond_a

    const/4 v1, 0x1

    .line 13275
    :goto_9
    return v1

    .line 13273
    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    .line 13275
    :cond_c
    iget-boolean v1, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    goto :goto_9
.end method

.method public isInputMethodTarget()Z
    .registers 3

    .prologue
    .line 9799
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 9800
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 3

    .prologue
    .line 4731
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isSuggestionsEnabled()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 11126
    iget v4, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v4, v4, 0xf

    if-eq v4, v2, :cond_9

    .line 11132
    :cond_8
    :goto_8
    return v3

    .line 11127
    :cond_9
    iget v4, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    if-gtz v4, :cond_8

    .line 11130
    iget v4, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v5, 0x80

    and-int/2addr v4, v5

    if-lez v4, :cond_30

    move v0, v2

    .line 11131
    .local v0, ps_flag:Z
    :goto_18
    iget v4, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v1, v4, 0xff0

    .line 11132
    .local v1, variation:I
    if-nez v0, :cond_2e

    const/16 v4, 0x30

    if-eq v1, v4, :cond_2e

    const/16 v4, 0x50

    if-eq v1, v4, :cond_2e

    const/16 v4, 0x40

    if-eq v1, v4, :cond_2e

    const/16 v4, 0xa0

    if-ne v1, v4, :cond_8

    :cond_2e
    move v3, v2

    goto :goto_8

    .end local v0           #ps_flag:Z
    .end local v1           #variation:I
    :cond_30
    move v0, v3

    .line 11130
    goto :goto_18
.end method

.method public isTextSelectable()Z
    .registers 2

    .prologue
    .line 4897
    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 4769
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 4770
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_55

    .line 4771
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 4772
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4774
    :cond_14
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    .line 4775
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4777
    :cond_21
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    .line 4778
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4780
    :cond_2e
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    .line 4781
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4783
    :cond_3b
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_48

    .line 4784
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4786
    :cond_48
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_55

    .line 4787
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4790
    :cond_55
    return-void
.end method

.method public length()I
    .registers 2

    .prologue
    .line 1387
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .registers 39
    .parameter "wantWidth"
    .parameter "hintWidth"
    .parameter "boring"
    .parameter "hintBoring"
    .parameter "ellipsisWidth"
    .parameter "bringIntoView"

    .prologue
    .line 6580
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 6583
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaximum:I

    .line 6584
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaxMode:I

    .line 6586
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6588
    if-gez p1, :cond_1c

    .line 6589
    const/16 p1, 0x0

    .line 6591
    :cond_1c
    if-gez p2, :cond_20

    .line 6592
    const/16 p2, 0x0

    .line 6595
    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .line 6596
    .local v6, alignment:Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_157

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v2, :cond_157

    const/4 v7, 0x1

    .line 6597
    .local v7, shouldEllipsize:Z
    :goto_31
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_15a

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_15a

    const/16 v31, 0x1

    .line 6599
    .local v31, switchEllipsize:Z
    :goto_41
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 6600
    .local v8, effectiveEllipsize:Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_56

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_56

    .line 6602
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 6605
    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_5f

    .line 6606
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->resolveTextDirection()V

    .line 6609
    :cond_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_15e

    const/4 v9, 0x1

    :goto_66
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v2 .. v9}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 6611
    if-eqz v31, :cond_98

    .line 6612
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_161

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 6614
    .local v15, oppositeEllipsize:Landroid/text/TextUtils$TruncateAt;
    :goto_7e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v2, :cond_165

    const/16 v16, 0x1

    :goto_86
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-object v13, v6

    move v14, v7

    invoke-direct/range {v9 .. v16}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 6618
    .end local v15           #oppositeEllipsize:Landroid/text/TextUtils$TruncateAt;
    :cond_98
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_169

    const/4 v7, 0x1

    .line 6619
    :goto_9f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6621
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_126

    .line 6622
    if-eqz v7, :cond_ae

    move/from16 p2, p1

    .line 6624
    :cond_ae
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_d0

    .line 6625
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    .line 6627
    if-eqz p4, :cond_d0

    .line 6628
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 6632
    :cond_d0
    if-eqz p4, :cond_2aa

    .line 6633
    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_199

    if-eqz v7, :cond_e4

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p5

    if-gt v2, v0, :cond_199

    .line 6635
    :cond_e4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_16c

    .line 6636
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6646
    :goto_11c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 6684
    :cond_126
    :goto_126
    if-eqz p6, :cond_12b

    .line 6685
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6688
    :cond_12b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_153

    .line 6689
    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_153

    .line 6690
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    .line 6693
    .local v30, height:I
    const/4 v2, -0x2

    move/from16 v0, v30

    if-eq v0, v2, :cond_339

    const/4 v2, -0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_339

    .line 6694
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .line 6703
    .end local v30           #height:I
    :cond_153
    :goto_153
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 6704
    return-void

    .line 6596
    .end local v7           #shouldEllipsize:Z
    .end local v8           #effectiveEllipsize:Landroid/text/TextUtils$TruncateAt;
    .end local v31           #switchEllipsize:Z
    :cond_157
    const/4 v7, 0x0

    goto/16 :goto_31

    .line 6597
    .restart local v7       #shouldEllipsize:Z
    :cond_15a
    const/16 v31, 0x0

    goto/16 :goto_41

    .line 6609
    .restart local v8       #effectiveEllipsize:Landroid/text/TextUtils$TruncateAt;
    .restart local v31       #switchEllipsize:Z
    :cond_15e
    const/4 v9, 0x0

    goto/16 :goto_66

    .line 6612
    :cond_161
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_7e

    .line 6614
    .restart local v15       #oppositeEllipsize:Landroid/text/TextUtils$TruncateAt;
    :cond_165
    const/16 v16, 0x0

    goto/16 :goto_86

    .line 6618
    .end local v15           #oppositeEllipsize:Landroid/text/TextUtils$TruncateAt;
    :cond_169
    const/4 v7, 0x0

    goto/16 :goto_9f

    .line 6641
    :cond_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_11c

    .line 6647
    :cond_199
    if-eqz v7, :cond_21b

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_21b

    .line 6648
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_1e5

    .line 6649
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v25, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    move/from16 v26, p5

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_126

    .line 6655
    :cond_1e5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v24, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    move/from16 v25, p5

    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_126

    .line 6660
    :cond_21b
    if-eqz v7, :cond_275

    .line 6661
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_271

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_260
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_126

    :cond_271
    const v29, 0x7fffffff

    goto :goto_260

    .line 6667
    :cond_275
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_126

    .line 6671
    :cond_2aa
    if-eqz v7, :cond_304

    .line 6672
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_300

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_2ef
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_126

    :cond_300
    const v29, 0x7fffffff

    goto :goto_2ef

    .line 6678
    :cond_304
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_126

    .line 6697
    .restart local v30       #height:I
    :cond_339
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_153
.end method

.method public moveCursorToVisibleOffset()Z
    .registers 21

    .prologue
    .line 7448
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v17, v0

    if-nez v17, :cond_11

    .line 7449
    const/16 v17, 0x0

    .line 7498
    :goto_10
    return v17

    .line 7451
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .line 7452
    .local v12, start:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 7453
    .local v3, end:I
    if-eq v12, v3, :cond_1e

    .line 7454
    const/16 v17, 0x0

    goto :goto_10

    .line 7459
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 7461
    .local v8, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .line 7462
    .local v13, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 7463
    .local v2, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v18

    sub-int v16, v17, v18

    .line 7464
    .local v16, vspace:I
    sub-int v17, v2, v13

    div-int/lit8 v15, v17, 0x2

    .line 7465
    .local v15, vslack:I
    div-int/lit8 v17, v16, 0x4

    move/from16 v0, v17

    if-le v15, v0, :cond_68

    .line 7466
    div-int/lit8 v15, v16, 0x4

    .line 7467
    :cond_68
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollY:I

    .line 7469
    .local v14, vs:I
    add-int v17, v14, v15

    move/from16 v0, v17

    if-ge v13, v0, :cond_e3

    .line 7470
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v14, v15

    sub-int v19, v2, v13

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 7477
    :cond_82
    :goto_82
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v18

    sub-int v6, v17, v18

    .line 7478
    .local v6, hspace:I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    .line 7479
    .local v5, hs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .line 7480
    .local v7, leftChar:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v6, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v11

    .line 7483
    .local v11, rightChar:I
    if-ge v7, v11, :cond_fe

    move v9, v7

    .line 7484
    .local v9, lowChar:I
    :goto_c9
    if-le v7, v11, :cond_100

    move v4, v7

    .line 7486
    .local v4, highChar:I
    :goto_cc
    move v10, v12

    .line 7487
    .local v10, newStart:I
    if-ge v10, v9, :cond_102

    .line 7488
    move v10, v9

    .line 7493
    :cond_d0
    :goto_d0
    if-eq v10, v12, :cond_106

    .line 7494
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7495
    const/16 v17, 0x1

    goto/16 :goto_10

    .line 7471
    .end local v4           #highChar:I
    .end local v5           #hs:I
    .end local v6           #hspace:I
    .end local v7           #leftChar:I
    .end local v9           #lowChar:I
    .end local v10           #newStart:I
    .end local v11           #rightChar:I
    :cond_e3
    add-int v17, v16, v14

    sub-int v17, v17, v15

    move/from16 v0, v17

    if-le v2, v0, :cond_82

    .line 7472
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v16, v14

    sub-int v18, v18, v15

    sub-int v19, v2, v13

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_82

    .restart local v5       #hs:I
    .restart local v6       #hspace:I
    .restart local v7       #leftChar:I
    .restart local v11       #rightChar:I
    :cond_fe
    move v9, v11

    .line 7483
    goto :goto_c9

    .restart local v9       #lowChar:I
    :cond_100
    move v4, v11

    .line 7484
    goto :goto_cc

    .line 7489
    .restart local v4       #highChar:I
    .restart local v10       #newStart:I
    :cond_102
    if-le v10, v4, :cond_d0

    .line 7490
    move v10, v4

    goto :goto_d0

    .line 7498
    :cond_106
    const/16 v17, 0x0

    goto/16 :goto_10
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4656
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4658
    iput-boolean v3, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 4660
    iget-boolean v1, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_f

    .line 4661
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 4662
    iput-boolean v3, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 4665
    :cond_f
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4668
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_1c

    .line 4669
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4671
    :cond_1c
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_25

    .line 4672
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4676
    :cond_25
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 4678
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/TextView;->updateSpellCheckSpans(IIZ)V

    .line 4679
    return-void
.end method

.method public onBeginBatchEdit()V
    .registers 1

    .prologue
    .line 6361
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 5904
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 6173
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 6184
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    if-nez v0, :cond_11

    .line 6185
    new-instance v0, Landroid/widget/TextView$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/TextView$CorrectionHighlighter;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    .line 6190
    :goto_b
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 6191
    return-void

    .line 6187
    :cond_11
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    const/4 v1, 0x0

    #calls: Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V
    invoke-static {v0, v1}, Landroid/widget/TextView$CorrectionHighlighter;->access$300(Landroid/widget/TextView$CorrectionHighlighter;Z)V

    goto :goto_b
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 10424
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    if-eqz v0, :cond_9

    .line 10425
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->onScrollChanged()V

    .line 10427
    :cond_9
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 12
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    .line 9751
    invoke-super {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 9752
    const/4 v0, 0x0

    .line 9753
    .local v0, added:Z
    iget-boolean v7, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    if-nez v7, :cond_d

    iget-boolean v7, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    if-eqz v7, :cond_72

    :cond_d
    const/4 v7, 0x1

    :goto_e
    iput-boolean v7, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    .line 9761
    iput-boolean v8, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    iput-boolean v8, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 9763
    new-instance v1, Landroid/widget/TextView$MenuHandler;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Landroid/widget/TextView$MenuHandler;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    .line 9765
    .local v1, handler:Landroid/widget/TextView$MenuHandler;
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v7

    if-nez v7, :cond_55

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v7, v7, Landroid/text/Spanned;

    if-eqz v7, :cond_55

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v7

    if-eqz v7, :cond_55

    .line 9766
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTouchOffsets()J

    move-result-wide v2

    .line 9767
    .local v2, lastTouchOffset:J
    invoke-static {v2, v3}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v5

    .line 9768
    .local v5, selStart:I
    invoke-static {v2, v3}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v4

    .line 9770
    .local v4, selEnd:I
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spanned;

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v7, v5, v4, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    .line 9771
    .local v6, urls:[Landroid/text/style/URLSpan;
    array-length v7, v6

    if-lez v7, :cond_55

    .line 9772
    const v7, 0x1020023

    const v9, 0x1040002

    invoke-interface {p1, v8, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 9775
    const/4 v0, 0x1

    .line 9783
    .end local v2           #lastTouchOffset:J
    .end local v4           #selEnd:I
    .end local v5           #selStart:I
    .end local v6           #urls:[Landroid/text/style/URLSpan;
    :cond_55
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v7

    if-lez v7, :cond_69

    .line 9784
    const v7, 0x102002d

    const v9, 0x1040016

    invoke-interface {p1, v8, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 9786
    const/4 v0, 0x1

    .line 9789
    :cond_69
    if-eqz v0, :cond_71

    .line 9790
    const v7, 0x10403ae

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 9792
    :cond_71
    return-void

    .end local v1           #handler:Landroid/widget/TextView$MenuHandler;
    :cond_72
    move v7, v8

    .line 9753
    goto :goto_e
.end method

.method protected onCreateDrawableState(I)[I
    .registers 9
    .parameter "extraSpace"

    .prologue
    const/4 v6, 0x0

    .line 4942
    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v4, :cond_29

    .line 4943
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 4949
    .local v0, drawableState:[I
    :goto_9
    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v4, :cond_38

    .line 4954
    array-length v2, v0

    .line 4955
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v2, :cond_38

    .line 4956
    aget v4, v0, v1

    const v5, 0x10100a7

    if-ne v4, v5, :cond_35

    .line 4957
    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [I

    .line 4958
    .local v3, nonPressedState:[I
    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4959
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4965
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #nonPressedState:[I
    :goto_28
    return-object v3

    .line 4945
    .end local v0           #drawableState:[I
    :cond_29
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 4946
    .restart local v0       #drawableState:[I
    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    goto :goto_9

    .line 4955
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .end local v1           #i:I
    .end local v2           #length:I
    :cond_38
    move-object v3, v0

    .line 4965
    goto :goto_28
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 7
    .parameter "outAttrs"

    .prologue
    const/high16 v4, 0x4000

    const/high16 v3, 0x800

    .line 5908
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 5909
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-nez v1, :cond_1b

    .line 5910
    new-instance v1, Landroid/widget/TextView$InputMethodState;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InputMethodState;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5920
    :cond_1b
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 5921
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v1, :cond_aa

    .line 5922
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5923
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 5924
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 5925
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 5926
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 5930
    :goto_41
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 5931
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5933
    :cond_4e
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 5934
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x400

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5936
    :cond_5d
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_79

    .line 5938
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_ae

    .line 5941
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5947
    :goto_6e
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v1

    if-nez v1, :cond_79

    .line 5948
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5951
    :cond_79
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 5953
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5955
    :cond_86
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 5956
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_b5

    .line 5957
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 5958
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 5959
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 5960
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 5964
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_a9
    return-object v0

    .line 5928
    :cond_aa
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_41

    .line 5945
    :cond_ae
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_6e

    .line 5964
    :cond_b5
    const/4 v0, 0x0

    goto :goto_a9
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4683
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4685
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4686
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eqz v1, :cond_11

    .line 4687
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4688
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4691
    :cond_11
    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v1, :cond_18

    .line 4692
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 4695
    :cond_18
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v1, :cond_23

    .line 4696
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v2, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4699
    :cond_23
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_2c

    .line 4700
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$InsertionPointCursorController;->onDetached()V

    .line 4703
    :cond_2c
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_35

    .line 4704
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->onDetached()V

    .line 4707
    :cond_35
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 4709
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 4711
    iget-object v1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v1, :cond_47

    .line 4712
    iget-object v1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v1}, Landroid/widget/SpellChecker;->closeSession()V

    .line 4715
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 4719
    :cond_47
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v1

    if-eqz v1, :cond_58

    iget-boolean v1, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    if-eqz v1, :cond_58

    .line 4720
    iput-boolean v3, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    .line 4721
    iput-boolean v3, p0, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    .line 4722
    invoke-direct {p0, v3}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    .line 4726
    :cond_58
    invoke-virtual {p0}, Landroid/widget/TextView;->SCATDStop()V

    .line 4727
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 13143
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    :pswitch_8
    move v1, v2

    .line 13163
    :goto_9
    return v1

    .line 13145
    :pswitch_a
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v1

    goto :goto_9

    .line 13148
    :pswitch_f
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move v1, v2

    .line 13149
    goto :goto_9

    .line 13152
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 13153
    .local v0, offset:I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v1, v2

    .line 13154
    goto :goto_9

    .line 13157
    .end local v0           #offset:I
    :pswitch_29
    invoke-direct {p0, p1}, Landroid/widget/TextView;->onDrop(Landroid/view/DragEvent;)V

    move v1, v2

    .line 13158
    goto :goto_9

    .line 13143
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_14
        :pswitch_29
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 55
    .parameter "canvas"

    .prologue
    .line 4970
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mPreDrawState:I

    const/4 v11, 0x2

    if-ne v6, v11, :cond_17

    .line 4971
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v40

    .line 4972
    .local v40, observer:Landroid/view/ViewTreeObserver;
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4973
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4976
    .end local v40           #observer:Landroid/view/ViewTreeObserver;
    :cond_17
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v6, v6

    const v11, 0x40a95555

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_24

    .line 5288
    :goto_23
    return-void

    .line 4978
    :cond_24
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 4981
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4983
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v25

    .line 4984
    .local v25, compoundPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v27

    .line 4985
    .local v27, compoundPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    .line 4986
    .local v26, compoundPaddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v24

    .line 4987
    .local v24, compoundPaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v44, v0

    .line 4988
    .local v44, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v45, v0

    .line 4989
    .local v45, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v43, v0

    .line 4990
    .local v43, right:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v39, v0

    .line 4991
    .local v39, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v18, v0

    .line 4992
    .local v18, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v47, v0

    .line 4994
    .local v47, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v30, v0

    .line 4995
    .local v30, dr:Landroid/widget/TextView$Drawables;
    if-eqz v30, :cond_136

    .line 5001
    sub-int v6, v18, v47

    sub-int v6, v6, v24

    sub-int v50, v6, v27

    .line 5002
    .local v50, vspace:I
    sub-int v6, v43, v39

    sub-int v6, v6, v26

    sub-int v35, v6, v25

    .line 5006
    .local v35, hspace:I
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_9f

    .line 5007
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5008
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int v6, v6, v44

    int-to-float v6, v6

    add-int v11, v45, v27

    move-object/from16 v0, v30

    iget v12, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v12, v50, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5011
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5012
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5017
    :cond_9f
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_d4

    .line 5018
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5019
    add-int v6, v44, v43

    sub-int v6, v6, v39

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v6, v11

    move-object/from16 v0, v30

    iget v11, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v6, v11

    int-to-float v6, v6

    add-int v11, v45, v27

    move-object/from16 v0, v30

    iget v12, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v12, v50, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5021
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5022
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5027
    :cond_d4
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_101

    .line 5028
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5029
    add-int v6, v44, v25

    move-object/from16 v0, v30

    iget v11, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v11, v35, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v6, v11

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int v11, v11, v45

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5031
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5032
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5037
    :cond_101
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_136

    .line 5038
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5039
    add-int v6, v44, v25

    move-object/from16 v0, v30

    iget v11, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v11, v35, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v6, v11

    int-to-float v6, v6

    add-int v11, v45, v18

    sub-int v11, v11, v47

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v11, v12

    move-object/from16 v0, v30

    iget v12, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5042
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5043
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5047
    .end local v35           #hspace:I
    .end local v50           #vspace:I
    :cond_136
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurTextColor:I

    move/from16 v23, v0

    .line 5049
    .local v23, color:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v6, :cond_145

    .line 5050
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 5053
    :cond_145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v37, v0

    .line 5054
    .local v37, layout:Landroid/text/Layout;
    move/from16 v29, v23

    .line 5056
    .local v29, cursorcolor:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v6, :cond_16f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_16f

    .line 5057
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_169

    .line 5058
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    move/from16 v23, v0

    .line 5061
    :cond_169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v37, v0

    .line 5064
    :cond_16f
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 5065
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    const/16 v11, 0xff

    if-eq v6, v11, :cond_192

    .line 5067
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit16 v11, v11, 0xff

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 5069
    :cond_192
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v11

    iput-object v11, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 5071
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5076
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v33

    .line 5077
    .local v33, extendedPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v32

    .line 5079
    .local v32, extendedPaddingBottom:I
    add-int v6, v25, v44

    int-to-float v0, v6

    move/from16 v20, v0

    .line 5080
    .local v20, clipLeft:F
    add-int v6, v33, v45

    int-to-float v0, v6

    move/from16 v22, v0

    .line 5081
    .local v22, clipTop:F
    sub-int v6, v43, v39

    sub-int v6, v6, v26

    add-int v6, v6, v44

    int-to-float v0, v6

    move/from16 v21, v0

    .line 5082
    .local v21, clipRight:F
    sub-int v6, v18, v47

    sub-int v6, v6, v32

    add-int v6, v6, v45

    int-to-float v0, v6

    move/from16 v19, v0

    .line 5084
    .local v19, clipBottom:F
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v11, 0x0

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_20c

    .line 5085
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v20, v20, v6

    .line 5086
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v21, v21, v6

    .line 5088
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v22, v22, v6

    .line 5089
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v19, v19, v6

    .line 5092
    :cond_20c
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 5094
    const/16 v49, 0x0

    .line 5095
    .local v49, voffsetText:I
    const/16 v48, 0x0

    .line 5100
    .local v48, voffsetCursor:I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v6, v6, 0x70

    const/16 v11, 0x30

    if-eq v6, v11, :cond_235

    .line 5101
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v49

    .line 5102
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v48

    .line 5104
    :cond_235
    move/from16 v0, v25

    int-to-float v6, v0

    add-int v11, v33, v49

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5107
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v38

    .line 5108
    .local v38, layoutDirection:I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mGravity:I

    move/from16 v0, v38

    invoke-static {v6, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v17

    .line 5109
    .local v17, absoluteGravity:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v11, :cond_2b6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v11, 0x1

    if-eq v6, v11, :cond_2b6

    .line 5111
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v6, :cond_299

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_299

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v6

    if-eqz v6, :cond_299

    and-int/lit8 v6, v17, 0x7

    const/4 v11, 0x3

    if-eq v6, v11, :cond_299

    .line 5113
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    sub-float/2addr v6, v11

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5117
    :cond_299
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_2b6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2b6

    .line 5118
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v6, v6, Landroid/widget/TextView$Marquee;->mScroll:F

    neg-float v6, v6

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5122
    :cond_2b6
    const/16 v34, 0x0

    .line 5123
    .local v34, highlight:Landroid/graphics/Path;
    const/4 v7, -0x1

    .local v7, selStart:I
    const/4 v8, -0x1

    .line 5124
    .local v8, selEnd:I
    const/16 v31, 0x0

    .line 5132
    .local v31, drawCursor:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v6, :cond_376

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_2d4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v6

    if-nez v6, :cond_2d4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v6, :cond_376

    .line 5134
    :cond_2d4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 5135
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 5137
    if-ltz v7, :cond_376

    .line 5138
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v6, :cond_2ed

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5140
    :cond_2ed
    if-ne v7, v8, :cond_4c7

    .line 5141
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_4c2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/widget/TextView;->mShowCursor:J

    sub-long/2addr v11, v13

    sget v6, Landroid/widget/TextView;->BLINK_BLACK:I

    sget v13, Landroid/widget/TextView;->BLINK_WHITE:I

    add-int/2addr v6, v13

    int-to-long v13, v6

    rem-long/2addr v11, v13

    sget v6, Landroid/widget/TextView;->BLINK_BLACK:I

    int-to-long v13, v6

    cmp-long v6, v11, v13

    if-gez v6, :cond_4c2

    .line 5145
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v6, :cond_330

    .line 5146
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 5147
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v11, v12}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 5148
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->updateCursorsPositions()V

    .line 5149
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5153
    :cond_330
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5154
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    const/16 v11, 0xff

    if-eq v6, v11, :cond_353

    .line 5155
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit16 v11, v11, 0xff

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5158
    :cond_353
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5160
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v11, 0x4000

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    .line 5163
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCursorCount:I

    if-lez v6, :cond_4be

    const/16 v31, 0x1

    .line 5165
    :goto_373
    const/4 v6, 0x1

    sput-boolean v6, Landroid/widget/TextView;->mCurBlinkBlack:Z

    .line 5199
    :cond_376
    :goto_376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    move-object/from16 v36, v0

    .line 5200
    .local v36, ims:Landroid/widget/TextView$InputMethodState;
    sub-int v28, v48, v49

    .line 5201
    .local v28, cursorOffsetVertical:I
    if-eqz v36, :cond_45d

    move-object/from16 v0, v36

    iget v6, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_45d

    .line 5202
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 5203
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_45d

    .line 5204
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3c9

    .line 5205
    const/16 v42, 0x0

    .line 5206
    .local v42, reported:Z
    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v6, :cond_3a2

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v6, :cond_3a6

    .line 5210
    :cond_3a2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->reportExtractedText()Z

    move-result v42

    .line 5212
    :cond_3a6
    if-nez v42, :cond_3c9

    if-eqz v34, :cond_3c9

    .line 5213
    const/4 v9, -0x1

    .line 5214
    .local v9, candStart:I
    const/4 v10, -0x1

    .line 5215
    .local v10, candEnd:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_3c4

    .line 5216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v46, v0

    check-cast v46, Landroid/text/Spannable;

    .line 5217
    .local v46, sp:Landroid/text/Spannable;
    invoke-static/range {v46 .. v46}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    .line 5218
    invoke-static/range {v46 .. v46}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v10

    .end local v46           #sp:Landroid/text/Spannable;
    :cond_3c4
    move-object/from16 v6, p0

    .line 5220
    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 5226
    .end local v9           #candStart:I
    .end local v10           #candEnd:I
    .end local v42           #reported:Z
    :cond_3c9
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_45d

    if-eqz v34, :cond_45d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->disableUpdateCursorPositionByExtras()Z

    move-result v6

    if-nez v6, :cond_45d

    .line 5227
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5233
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v41, v0

    .line 5234
    .local v41, onScreenOffset:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 5235
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x0

    aget v11, v41, v11

    int-to-float v11, v11

    const/4 v12, 0x1

    aget v12, v41, v12

    int-to-float v12, v12

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 5238
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x0

    move/from16 v0, v28

    int-to-float v12, v0

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 5240
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object/from16 v0, v36

    iget-object v11, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    float-to-double v11, v11

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v11, v11

    move-object/from16 v0, v36

    iget-object v12, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0

    add-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, v36

    iget-object v13, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, v36

    iget-object v14, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    const-wide/high16 v51, 0x3fe0

    add-double v14, v14, v51

    double-to-int v14, v14

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 5245
    :try_start_43d
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v15, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object v11, v5

    move-object/from16 v12, p0

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V
    :try_end_45d
    .catch Ljava/lang/Exception; {:try_start_43d .. :try_end_45d} :catch_524

    .line 5255
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v41           #onScreenOffset:[I
    :cond_45d
    :goto_45d
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    if-eqz v6, :cond_46e

    .line 5256
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 5259
    :cond_46e
    if-eqz v31, :cond_47b

    .line 5260
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 5263
    const/16 v34, 0x0

    .line 5270
    :cond_47b
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 5273
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_4b9

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v6

    if-eqz v6, :cond_4b9

    .line 5274
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5276
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 5286
    :cond_4b9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_23

    .line 5163
    .end local v28           #cursorOffsetVertical:I
    .end local v36           #ims:Landroid/widget/TextView$InputMethodState;
    :cond_4be
    const/16 v31, 0x0

    goto/16 :goto_373

    .line 5167
    :cond_4c2
    const/4 v6, 0x0

    sput-boolean v6, Landroid/widget/TextView;->mCurBlinkBlack:Z

    goto/16 :goto_376

    .line 5168
    :cond_4c7
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v6

    if-eqz v6, :cond_376

    .line 5169
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v6, :cond_4ea

    .line 5170
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 5171
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v8, v11}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5172
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5176
    :cond_4ea
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 5177
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    const/16 v11, 0xff

    if-eq v6, v11, :cond_513

    .line 5178
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit16 v11, v11, 0xff

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5181
    :cond_513
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    goto/16 :goto_376

    .line 5248
    .restart local v5       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v28       #cursorOffsetVertical:I
    .restart local v36       #ims:Landroid/widget/TextView$InputMethodState;
    .restart local v41       #onScreenOffset:[I
    :catch_524
    move-exception v6

    goto/16 :goto_45d
.end method

.method public onEditorAction(I)V
    .registers 23
    .parameter "actionCode"

    .prologue
    .line 3956
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v18, v0

    .line 3957
    .local v18, ict:Landroid/widget/TextView$InputContentType;
    if-eqz v18, :cond_7c

    .line 3958
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_1e

    .line 3959
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v2, v0, v1, v5}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4015
    :cond_1d
    :goto_1d
    return-void

    .line 3970
    :cond_1e
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_3d

    .line 3971
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 3972
    .local v20, v:Landroid/view/View;
    if-eqz v20, :cond_1d

    .line 3973
    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 3974
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3980
    .end local v20           #v:Landroid/view/View;
    :cond_3d
    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_5c

    .line 3981
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 3982
    .restart local v20       #v:Landroid/view/View;
    if-eqz v20, :cond_1d

    .line 3983
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 3984
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3990
    .end local v20           #v:Landroid/view/View;
    :cond_5c
    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v0, v2, :cond_7c

    .line 3991
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .line 3992
    .local v19, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v19, :cond_1d

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3993
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1d

    .line 3999
    .end local v19           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_7c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    .line 4000
    .local v17, h:Landroid/os/Handler;
    if-eqz v17, :cond_1d

    .line 4001
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 4002
    .local v3, eventTime:J
    const/16 v14, 0x3f3

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4008
    const/16 v2, 0x3f3

    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1d
.end method

.method public onEndBatchEdit()V
    .registers 1

    .prologue
    .line 6369
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 2

    .prologue
    .line 8573
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 8576
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 8577
    :cond_a
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 15
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8581
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_a

    .line 8583
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 8705
    :goto_9
    return-void

    .line 8587
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 8589
    invoke-virtual {p0}, Landroid/widget/TextView;->ensureEndedBatchEdit()V

    .line 8591
    if-eqz p1, :cond_cc

    .line 8592
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 8593
    .local v9, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 8597
    .local v8, selEnd:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_c6

    if-nez v9, :cond_c6

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v8, v0, :cond_c6

    move v6, v1

    .line 8599
    .local v6, isFocusHighlighted:Z
    :goto_2c
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_c9

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_c9

    if-nez v6, :cond_c9

    move v0, v1

    :goto_39
    iput-boolean v0, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 8601
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_43

    if-ltz v9, :cond_43

    if-gez v8, :cond_79

    .line 8604
    :cond_43
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTapPosition()I

    move-result v7

    .line 8605
    .local v7, lastTapPosition:I
    if-ltz v7, :cond_50

    .line 8606
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8609
    :cond_50
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_5d

    .line 8610
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v3, p0, v0, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 8618
    :cond_5d
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_65

    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    if-eqz v0, :cond_70

    :cond_65
    if-ltz v9, :cond_70

    if-ltz v8, :cond_70

    .line 8629
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8632
    :cond_70
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_77

    .line 8633
    invoke-direct {p0}, Landroid/widget/TextView;->selectAll()Z

    .line 8636
    :cond_77
    iput-boolean v1, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 8639
    .end local v7           #lastTapPosition:I
    :cond_79
    iput-boolean v2, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    .line 8640
    iput-boolean v2, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 8642
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_8a

    .line 8643
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    .line 8644
    .local v10, sp:Landroid/text/Spannable;
    invoke-static {v10}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 8647
    .end local v10           #sp:Landroid/text/Spannable;
    :cond_8a
    invoke-direct {p0}, Landroid/widget/TextView;->resetMetaStatus()V

    .line 8649
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 8651
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_97

    .line 8652
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 8656
    :cond_97
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 8657
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 8658
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 8659
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 8661
    :cond_aa
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 8696
    .end local v6           #isFocusHighlighted:Z
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_ac
    :goto_ac
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 8698
    invoke-direct {p0, p1}, Landroid/widget/TextView;->clearAndHook(Z)V

    .line 8700
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_c1

    .line 8701
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 8704
    :cond_c1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto/16 :goto_9

    .restart local v8       #selEnd:I
    .restart local v9       #selStart:I
    :cond_c6
    move v6, v2

    .line 8597
    goto/16 :goto_2c

    .restart local v6       #isFocusHighlighted:Z
    :cond_c9
    move v0, v2

    .line 8599
    goto/16 :goto_39

    .line 8664
    .end local v6           #isFocusHighlighted:Z
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_cc
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d3

    .line 8665
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 8668
    :cond_d3
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 8670
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_10b

    .line 8673
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 8674
    .restart local v9       #selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 8675
    .restart local v8       #selEnd:I
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8677
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 8678
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 8679
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 8680
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 8682
    :cond_f8
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 8684
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8691
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :goto_101
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v0, :cond_ac

    .line 8692
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_ac

    .line 8686
    :cond_10b
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8687
    invoke-direct {p0}, Landroid/widget/TextView;->downgradeEasyCorrectionSpans()V

    goto :goto_101
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 8992
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1d

    .line 8994
    :try_start_e
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_17
    .catch Ljava/lang/AbstractMethodError; {:try_start_e .. :try_end_17} :catch_1c

    move-result v0

    if-eqz v0, :cond_1d

    .line 8995
    const/4 v0, 0x1

    .line 9003
    :goto_1b
    return v0

    .line 8997
    :catch_1c
    move-exception v0

    .line 9003
    :cond_1d
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 9689
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9691
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9692
    .local v0, isPassword:Z
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 9694
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_2d

    .line 9695
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 9696
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 9697
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 9699
    :cond_2d
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 9703
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9705
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9706
    .local v0, isPassword:Z
    if-nez v0, :cond_10

    .line 9707
    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 9709
    :cond_10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 9710
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 5522
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    .line 5523
    .local v0, which:I
    if-nez v0, :cond_c

    .line 5525
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 5528
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 5533
    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 5535
    .local v0, down:Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 5536
    .local v2, which:I
    if-nez v2, :cond_11

    .line 5538
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    .line 5569
    :goto_10
    return v3

    .line 5540
    :cond_11
    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    move v3, v4

    .line 5542
    goto :goto_10

    .line 5545
    :cond_16
    add-int/lit8 p2, p2, -0x1

    .line 5552
    invoke-static {p3, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 5553
    .local v1, up:Landroid/view/KeyEvent;
    if-ne v2, v4, :cond_43

    .line 5554
    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 5555
    :goto_27
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3e

    .line 5556
    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 5557
    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_27

    .line 5559
    :cond_3e
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    :cond_41
    move v3, v4

    .line 5569
    goto :goto_10

    .line 5561
    :cond_43
    const/4 v3, 0x2

    if-ne v2, v3, :cond_41

    .line 5562
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 5563
    :goto_4f
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_41

    .line 5564
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 5565
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_4f
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 5493
    const/4 v3, 0x4

    if-ne p1, v3, :cond_44

    .line 5494
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_21

    move v0, v2

    .line 5496
    .local v0, isInSelectionMode:Z
    :goto_9
    if-eqz v0, :cond_44

    .line 5497
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_23

    .line 5498
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 5499
    .local v1, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_20

    .line 5500
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 5517
    .end local v0           #isInSelectionMode:Z
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_20
    :goto_20
    return v2

    .line 5494
    :cond_21
    const/4 v0, 0x0

    goto :goto_9

    .line 5503
    .restart local v0       #isInSelectionMode:Z
    :cond_23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_44

    .line 5504
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 5505
    .restart local v1       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_32

    .line 5506
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 5508
    :cond_32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_44

    .line 5509
    if-eqz v0, :cond_44

    .line 5510
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_20

    .line 5517
    .end local v0           #isInSelectionMode:Z
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_44
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_20
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 9337
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    .line 9338
    .local v0, filteredMetaState:I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 9339
    sparse-switch p1, :sswitch_data_4c

    .line 9362
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_13
    return v1

    .line 9341
    :sswitch_14
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 9342
    const v1, 0x102001f

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_13

    .line 9346
    :sswitch_22
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 9347
    const v1, 0x1020020

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_13

    .line 9351
    :sswitch_30
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 9352
    const v1, 0x1020021

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_13

    .line 9356
    :sswitch_3e
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 9357
    const v1, 0x1020022

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_13

    .line 9339
    :sswitch_data_4c
    .sparse-switch
        0x1d -> :sswitch_14
        0x1f -> :sswitch_30
        0x32 -> :sswitch_3e
        0x34 -> :sswitch_22
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x82

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5762
    const/4 v1, 0x0

    .line 5764
    .local v1, bDefOnClickListenerExist:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_10

    .line 5765
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 5900
    :goto_f
    return v5

    .line 5768
    :cond_10
    sparse-switch p1, :sswitch_data_10e

    .line 5887
    :cond_13
    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v5, :cond_f1

    .line 5891
    iget-object v7, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 5892
    .local v2, h:Z
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Landroid/widget/TextView;->checkMetaStatus(Ljava/lang/CharSequence;)V

    .line 5893
    if-eqz v2, :cond_f1

    move v5, v6

    goto :goto_f

    .line 5770
    .end local v2           #h:Z
    :sswitch_2a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 5788
    instance-of v5, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v5, :cond_68

    move-object v0, p0

    .line 5789
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 5790
    .local v0, atv:Landroid/widget/AutoCompleteTextView;
    iget-object v5, v0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->hasWrap()Z

    move-result v1

    .line 5796
    .end local v0           #atv:Landroid/widget/AutoCompleteTextView;
    :goto_3d
    if-nez v1, :cond_63

    .line 5800
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_63

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Editable;

    if-eqz v5, :cond_63

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_63

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 5802
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 5803
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 5804
    if-eqz v3, :cond_63

    iget-boolean v5, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    if-eqz v5, :cond_63

    .line 5805
    invoke-virtual {v3, p0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 5810
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_63
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_f

    .line 5793
    :cond_68
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v1

    goto :goto_3d

    .line 5813
    :sswitch_6d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 5814
    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v5, :cond_94

    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v5, v5, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v5, :cond_94

    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-boolean v5, v5, Landroid/widget/TextView$InputContentType;->enterDown:Z

    if-eqz v5, :cond_94

    .line 5817
    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v7, v5, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 5818
    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v5, v5, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v5, p0, v7, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_94

    move v5, v6

    .line 5820
    goto/16 :goto_f

    .line 5824
    :cond_94
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_a2

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 5843
    :cond_a2
    instance-of v5, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v5, :cond_c5

    move-object v0, p0

    .line 5844
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 5845
    .restart local v0       #atv:Landroid/widget/AutoCompleteTextView;
    iget-object v5, v0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->hasWrap()Z

    move-result v1

    .line 5851
    .end local v0           #atv:Landroid/widget/AutoCompleteTextView;
    :goto_af
    if-nez v1, :cond_eb

    .line 5855
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 5857
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_d0

    .line 5858
    invoke-virtual {v4, v8}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-nez v5, :cond_ca

    .line 5859
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5848
    .end local v4           #v:Landroid/view/View;
    :cond_c5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v1

    goto :goto_af

    .line 5869
    .restart local v4       #v:Landroid/view/View;
    :cond_ca
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v5, v6

    .line 5870
    goto/16 :goto_f

    .line 5871
    :cond_d0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_eb

    .line 5875
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 5876
    .restart local v3       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_eb

    invoke-virtual {v3, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 5877
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5882
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #v:Landroid/view/View;
    :cond_eb
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_f

    .line 5896
    :cond_f1
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_108

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_108

    .line 5897
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_108

    move v5, v6

    .line 5898
    goto/16 :goto_f

    .line 5900
    :cond_108
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_f

    .line 5768
    :sswitch_data_10e
    .sparse-switch
        0x17 -> :sswitch_2a
        0x42 -> :sswitch_6d
    .end sparse-switch
.end method

.method onLocaleChanged()V
    .registers 2

    .prologue
    .line 9629
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    .line 9630
    return-void
.end method

.method protected onMeasure(II)V
    .registers 31
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 6842
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 6843
    .local v25, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 6844
    .local v15, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 6845
    .local v26, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 6850
    .local v16, heightSize:I
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 6851
    .local v5, boring:Landroid/text/BoringLayout$Metrics;
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 6853
    .local v6, hintBoring:Landroid/text/BoringLayout$Metrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_1d

    .line 6854
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->resolveTextDirection()V

    .line 6857
    :cond_1d
    const/4 v9, -0x1

    .line 6858
    .local v9, des:I
    const/4 v13, 0x0

    .line 6860
    .local v13, fromexisting:Z
    const/high16 v2, 0x4000

    move/from16 v0, v25

    if-ne v0, v2, :cond_c9

    .line 6862
    move/from16 v23, v26

    .line 6946
    .local v23, width:I
    :cond_27
    :goto_27
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v23, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v3, v2, v7

    .line 6947
    .local v3, want:I
    move/from16 v22, v3

    .line 6950
    .local v22, unpaddedWidth:I
    sget-boolean v2, Landroid/widget/TextView;->bArabicDisplay:Z

    if-nez v2, :cond_1fc

    .line 6951
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v2, :cond_41

    const/high16 v3, 0x10

    .line 6952
    :cond_41
    move v4, v3

    .line 6958
    .local v4, hintWant:I
    :cond_42
    :goto_42
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_207

    move/from16 v18, v4

    .line 6960
    .local v18, hintWidth:I
    :goto_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_211

    .line 6961
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v23, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 6988
    :cond_62
    :goto_62
    const/high16 v2, 0x4000

    if-ne v15, v2, :cond_2a0

    .line 6990
    move/from16 v14, v16

    .line 6991
    .local v14, height:I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 7007
    :cond_6d
    :goto_6d
    :try_start_6d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int v2, v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int v21, v2, v7

    .line 7008
    .local v21, unpaddedHeight:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_a0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v7, :cond_a0

    .line 7009
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 7016
    :cond_a0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_be

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    move/from16 v0, v22

    if-gt v2, v0, :cond_be

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    move/from16 v0, v21

    if-le v2, v0, :cond_2b5

    .line 7019
    :cond_be
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V
    :try_end_c1
    .catch Ljava/lang/NullPointerException; {:try_start_6d .. :try_end_c1} :catch_2be

    .line 7028
    .end local v21           #unpaddedHeight:I
    :goto_c1
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 7029
    return-void

    .line 6864
    .end local v3           #want:I
    .end local v4           #hintWant:I
    .end local v14           #height:I
    .end local v18           #hintWidth:I
    .end local v22           #unpaddedWidth:I
    .end local v23           #width:I
    :cond_c9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_dd

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_dd

    .line 6865
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v9

    .line 6868
    :cond_dd
    if-gez v9, :cond_1d8

    .line 6869
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v5

    .line 6870
    if-eqz v5, :cond_fd

    .line 6871
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 6877
    :cond_fd
    :goto_fd
    if-eqz v5, :cond_103

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v5, v2, :cond_1db

    .line 6878
    :cond_103
    if-gez v9, :cond_116

    .line 6879
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v9, v2

    .line 6882
    :cond_116
    move/from16 v23, v9

    .line 6887
    .restart local v23       #width:I
    :goto_118
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 6888
    .local v11, dr:Landroid/widget/TextView$Drawables;
    if-eqz v11, :cond_12e

    .line 6889
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 6890
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 6893
    :cond_12e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_187

    .line 6894
    const/16 v17, -0x1

    .line 6897
    .local v17, hintDes:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v2, :cond_14a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_14a

    .line 6898
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v17

    .line 6901
    :cond_14a
    if-gez v17, :cond_162

    .line 6902
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v7, v8}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    .line 6903
    if-eqz v6, :cond_162

    .line 6904
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 6908
    :cond_162
    if-eqz v6, :cond_168

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v2, :cond_1e1

    .line 6909
    :cond_168
    if-gez v17, :cond_17d

    .line 6910
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    .line 6914
    :cond_17d
    move/from16 v18, v17

    .line 6919
    .restart local v18       #hintWidth:I
    :goto_17f
    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_187

    .line 6920
    move/from16 v23, v18

    .line 6924
    .end local v17           #hintDes:I
    .end local v18           #hintWidth:I
    :cond_187
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    add-int/2addr v2, v7

    add-int v23, v23, v2

    .line 6926
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1e6

    .line 6927
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 6932
    :goto_1a8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1f1

    .line 6933
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 6939
    :goto_1be
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 6941
    const/high16 v2, -0x8000

    move/from16 v0, v25

    if-ne v0, v2, :cond_27

    .line 6942
    move/from16 v0, v26

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v23

    goto/16 :goto_27

    .line 6874
    .end local v11           #dr:Landroid/widget/TextView$Drawables;
    .end local v23           #width:I
    :cond_1d8
    const/4 v13, 0x1

    goto/16 :goto_fd

    .line 6884
    :cond_1db
    iget v0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v23, v0

    .restart local v23       #width:I
    goto/16 :goto_118

    .line 6916
    .restart local v11       #dr:Landroid/widget/TextView$Drawables;
    .restart local v17       #hintDes:I
    :cond_1e1
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v18, v0

    .restart local v18       #hintWidth:I
    goto :goto_17f

    .line 6929
    .end local v17           #hintDes:I
    .end local v18           #hintWidth:I
    :cond_1e6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v23

    goto :goto_1a8

    .line 6935
    :cond_1f1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    goto :goto_1be

    .line 6954
    .end local v11           #dr:Landroid/widget/TextView$Drawables;
    .restart local v3       #want:I
    .restart local v22       #unpaddedWidth:I
    :cond_1fc
    move v4, v3

    .line 6955
    .restart local v4       #hintWant:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v2, :cond_42

    const/high16 v3, 0x10

    goto/16 :goto_42

    .line 6958
    :cond_207
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v18

    goto/16 :goto_4a

    .line 6964
    .restart local v18       #hintWidth:I
    :cond_211
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-ne v2, v3, :cond_234

    move/from16 v0, v18

    if-ne v0, v4, :cond_234

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int v7, v23, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-eq v2, v7, :cond_283

    :cond_234
    const/16 v19, 0x1

    .line 6969
    .local v19, layoutChanged:Z
    :goto_236
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v2, :cond_286

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_286

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_286

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v2, v2, Landroid/text/BoringLayout;

    if-nez v2, :cond_25a

    if-eqz v13, :cond_286

    if-ltz v9, :cond_286

    if-gt v9, v3, :cond_286

    :cond_25a
    const/16 v24, 0x1

    .line 6974
    .local v24, widthChanged:Z
    :goto_25c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v2, v7, :cond_270

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v2, v7, :cond_289

    :cond_270
    const/16 v20, 0x1

    .line 6976
    .local v20, maximumChanged:Z
    :goto_272
    if-nez v19, :cond_276

    if-eqz v20, :cond_62

    .line 6977
    :cond_276
    if-nez v20, :cond_28c

    if-eqz v24, :cond_28c

    .line 6978
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_62

    .line 6964
    .end local v19           #layoutChanged:Z
    .end local v20           #maximumChanged:Z
    .end local v24           #widthChanged:Z
    :cond_283
    const/16 v19, 0x0

    goto :goto_236

    .line 6969
    .restart local v19       #layoutChanged:Z
    :cond_286
    const/16 v24, 0x0

    goto :goto_25c

    .line 6974
    .restart local v24       #widthChanged:Z
    :cond_289
    const/16 v20, 0x0

    goto :goto_272

    .line 6980
    .restart local v20       #maximumChanged:Z
    :cond_28c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v23, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_62

    .line 6993
    .end local v19           #layoutChanged:Z
    .end local v20           #maximumChanged:Z
    .end local v24           #widthChanged:Z
    :cond_2a0
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v10

    .line 6995
    .local v10, desired:I
    move v14, v10

    .line 6996
    .restart local v14       #height:I
    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 6998
    const/high16 v2, -0x8000

    if-ne v15, v2, :cond_6d

    .line 6999
    move/from16 v0, v16

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto/16 :goto_6d

    .line 7021
    .end local v10           #desired:I
    .restart local v21       #unpaddedHeight:I
    :cond_2b5
    const/4 v2, 0x0

    const/4 v7, 0x0

    :try_start_2b7
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/widget/TextView;->scrollTo(II)V
    :try_end_2bc
    .catch Ljava/lang/NullPointerException; {:try_start_2b7 .. :try_end_2bc} :catch_2be

    goto/16 :goto_c1

    .line 7024
    .end local v21           #unpaddedHeight:I
    :catch_2be
    move-exception v12

    .line 7025
    .local v12, e:Ljava/lang/NullPointerException;
    const-string v2, "TextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mLayout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mText="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 9676
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9678
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9679
    .local v0, isPassword:Z
    if-nez v0, :cond_1a

    .line 9680
    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 9681
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 9682
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9685
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_1a
    return-void
.end method

.method public onPreDraw()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4587
    iget v4, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eq v4, v2, :cond_7

    .line 4651
    :cond_6
    :goto_6
    return v2

    .line 4591
    :cond_7
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v4, :cond_e

    .line 4592
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 4595
    :cond_e
    const/4 v0, 0x0

    .line 4597
    .local v0, changed:Z
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_5a

    .line 4602
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 4604
    .local v1, curs:I
    iget-object v4, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v4, :cond_27

    iget-object v4, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/TextView$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 4606
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 4614
    :cond_27
    if-gez v1, :cond_37

    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x50

    if-ne v4, v5, :cond_37

    .line 4616
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4628
    :cond_37
    if-ltz v1, :cond_3d

    .line 4629
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    move-result v0

    .line 4638
    .end local v1           #curs:I
    :cond_3d
    :goto_3d
    iget-boolean v4, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    if-eqz v4, :cond_46

    .line 4639
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    .line 4640
    iput-boolean v3, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 4646
    :cond_46
    instance-of v4, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v4, :cond_53

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 4647
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    .line 4650
    :cond_53
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4651
    if-eqz v0, :cond_6

    move v2, v3

    goto :goto_6

    .line 4632
    :cond_5a
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    move-result v0

    goto :goto_3d
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 21
    .parameter "action"
    .parameter "data"

    .prologue
    .line 6384
    :try_start_0
    const-string v4, "com.htc.android.htcime.adjustMetaState"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 6385
    if-eqz p2, :cond_20

    .line 6386
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 6389
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/TextView;->checkMetaStatus(Ljava/lang/CharSequence;)V

    .line 6390
    const/4 v4, 0x1

    .line 6451
    :goto_1f
    return v4

    .line 6388
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_15

    .line 6446
    :catch_2a
    move-exception v13

    .line 6447
    .local v13, e:Ljava/lang/Exception;
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPrivateIMECommand, "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6451
    .end local v13           #e:Ljava/lang/Exception;
    :cond_44
    :goto_44
    const/4 v4, 0x0

    goto :goto_1f

    .line 6391
    :cond_46
    :try_start_46
    const-string v4, "com.htc.android.htcime.touchPoint"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_109

    .line 6392
    if-eqz p2, :cond_44

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mTpHWRdebug:Z

    if-eqz v4, :cond_44

    .line 6393
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 6394
    .local v2, now:J
    const-string v4, "POINT_X"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    .line 6395
    .local v7, x:F
    const-string v4, "POINT_Y"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    .line 6396
    .local v8, y:F
    const-string v4, "MOTION"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 6397
    .local v6, motion:I
    const-string v4, "LONG_PRESS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 6398
    .local v10, bLongClick:Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getOwnerViewRoot()Landroid/view/ViewRootImpl;

    move-result-object v15

    .line 6400
    .local v15, root:Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_ff

    .line 6401
    if-eqz v10, :cond_89

    .line 6402
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->performLongClick()Z

    .line 6416
    :goto_87
    const/4 v4, 0x1

    goto :goto_1f

    .line 6404
    :cond_89
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mTpHWRdebug:Z

    if-eqz v4, :cond_dc

    .line 6405
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rootView="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", this="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", x="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", y="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", motion="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", LongClick="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6407
    :cond_dc
    const/4 v9, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 6411
    .local v14, evt:Landroid/view/MotionEvent;
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_ef

    .line 6412
    const/16 v4, 0x1002

    invoke-virtual {v14, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 6414
    :cond_ef
    const/16 v4, 0x3ee

    invoke-static {v15, v4, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v15, v4, v0, v1}, Landroid/view/ViewRootImpl;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_87

    .line 6419
    .end local v14           #evt:Landroid/view/MotionEvent;
    :cond_ff
    const-string v4, "TextView"

    const-string/jumbo v5, "onPrivateIMECommand, touchPoint, rootView is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 6421
    .end local v2           #now:J
    .end local v6           #motion:I
    .end local v7           #x:F
    .end local v8           #y:F
    .end local v10           #bLongClick:Z
    .end local v15           #root:Landroid/view/ViewRootImpl;
    :cond_109
    const-string v4, "com.htc.android.htcime.rescanword"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_123

    .line 6423
    const-string/jumbo v4, "word"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->SCATDPostScan_internal(Ljava/lang/String;)V

    goto/16 :goto_44

    .line 6425
    :cond_123
    const-string v4, "com.htc.android.htcime.movecursor"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 6426
    if-eqz p2, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_44

    .line 6427
    const-string v4, "DIRECTION"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 6428
    .local v12, direction:I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spannable;

    .line 6430
    .local v11, buffer:Landroid/text/Spannable;
    packed-switch v12, :pswitch_data_172

    goto/16 :goto_44

    .line 6432
    :pswitch_14a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 6433
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 6435
    :pswitch_154
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 6436
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 6438
    :pswitch_15e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 6439
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 6441
    :pswitch_168
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_16f} :catch_2a

    .line 6442
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 6430
    :pswitch_data_172
    .packed-switch 0x13
        :pswitch_14a
        :pswitch_154
        :pswitch_15e
        :pswitch_168
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 9
    .parameter "state"

    .prologue
    .line 3189
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    if-nez v4, :cond_8

    .line 3190
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3236
    :cond_7
    :goto_7
    return-void

    :cond_8
    move-object v3, p1

    .line 3194
    check-cast v3, Landroid/widget/TextView$SavedState;

    .line 3195
    .local v3, ss:Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3198
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1b

    .line 3199
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3202
    :cond_1b
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v4, :cond_7c

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v4, :cond_7c

    .line 3203
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_7c

    .line 3204
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3206
    .local v1, len:I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v4, v1, :cond_37

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v4, v1, :cond_8c

    .line 3207
    :cond_37
    const-string v2, ""

    .line 3209
    .local v2, restored:Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3f

    .line 3210
    const-string v2, "(restored) "

    .line 3213
    :cond_3f
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved cursor position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    .end local v1           #len:I
    .end local v2           #restored:Ljava/lang/String;
    :cond_7c
    :goto_7c
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 3228
    iget-object v0, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 3230
    .local v0, error:Ljava/lang/CharSequence;
    new-instance v4, Landroid/widget/TextView$1;

    invoke-direct {v4, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    .line 3217
    .end local v0           #error:Ljava/lang/CharSequence;
    .restart local v1       #len:I
    :cond_8c
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 3220
    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v4, :cond_7c

    .line 3221
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    goto :goto_7c
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 14

    .prologue
    .line 3118
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 3121
    .local v9, superState:Landroid/os/Parcelable;
    iget-boolean v5, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 3122
    .local v5, save:Z
    const/4 v8, 0x0

    .line 3123
    .local v8, start:I
    const/4 v2, 0x0

    .line 3125
    .local v2, end:I
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v10, :cond_19

    .line 3126
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 3127
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 3128
    if-gez v8, :cond_18

    if-ltz v2, :cond_19

    .line 3130
    :cond_18
    const/4 v5, 0x1

    .line 3134
    :cond_19
    if-eqz v5, :cond_6f

    .line 3135
    new-instance v7, Landroid/widget/TextView$SavedState;

    invoke-direct {v7, v9}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3137
    .local v7, ss:Landroid/widget/TextView$SavedState;
    iput v8, v7, Landroid/widget/TextView$SavedState;->selStart:I

    .line 3138
    iput v2, v7, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 3140
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v10, v10, Landroid/text/Spanned;

    if-eqz v10, :cond_66

    .line 3149
    new-instance v6, Landroid/text/SpannableString;

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3151
    .local v6, sp:Landroid/text/Spannable;
    const/4 v10, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v6, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$ChangeWatcher;

    .local v0, arr$:[Landroid/widget/TextView$ChangeWatcher;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_40
    if-ge v3, v4, :cond_4a

    aget-object v1, v0, v3

    .line 3152
    .local v1, cw:Landroid/widget/TextView$ChangeWatcher;
    invoke-interface {v6, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3151
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 3155
    .end local v1           #cw:Landroid/widget/TextView$ChangeWatcher;
    :cond_4a
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 3156
    iget-object v10, p0, Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v6, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3158
    iput-object v6, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 3163
    .end local v0           #arr$:[Landroid/widget/TextView$ChangeWatcher;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #sp:Landroid/text/Spannable;
    :goto_54
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_61

    if-ltz v8, :cond_61

    if-ltz v2, :cond_61

    .line 3164
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 3167
    :cond_61
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 3172
    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :goto_65
    return-object v7

    .line 3160
    .restart local v7       #ss:Landroid/widget/TextView$SavedState;
    :cond_66
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_54

    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :cond_6f
    move-object v7, v9

    .line 3172
    goto :goto_65
.end method

.method protected onScrollChanged(IIII)V
    .registers 6
    .parameter "horiz"
    .parameter "vert"
    .parameter "oldHoriz"
    .parameter "oldVert"

    .prologue
    .line 10415
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 10416
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    if-eqz v0, :cond_c

    .line 10417
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->onScrollChanged()V

    .line 10419
    :cond_c
    return-void
.end method

.method protected onSelectionChanged(II)V
    .registers 4
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 7990
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 7991
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 4
    .parameter "alpha"

    .prologue
    .line 4861
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_5c

    .line 4862
    iput p1, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    .line 4863
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4864
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_5a

    .line 4865
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4866
    :cond_19
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_26

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4867
    :cond_26
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_33

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4868
    :cond_33
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_40

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4869
    :cond_40
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4d

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4870
    :cond_4d
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5a

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4872
    :cond_5a
    const/4 v1, 0x1

    .line 4876
    .end local v0           #dr:Landroid/widget/TextView$Drawables;
    :goto_5b
    return v1

    .line 4875
    :cond_5c
    const/16 v1, 0xff

    iput v1, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    .line 4876
    const/4 v1, 0x0

    goto :goto_5b
.end method

.method public onStartTemporaryDetach()V
    .registers 2

    .prologue
    .line 8559
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 8562
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 8567
    :cond_a
    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_13

    .line 8568
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8569
    :cond_13
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "text"
    .parameter "start"
    .parameter "lengthBefore"
    .parameter "lengthAfter"

    .prologue
    .line 7980
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .registers 16
    .parameter "id"

    .prologue
    .line 9833
    const/4 v4, 0x0

    .line 9834
    .local v4, min:I
    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 9843
    .local v3, max:I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v11

    if-nez v11, :cond_11

    iget-boolean v11, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v11, :cond_2b

    .line 9845
    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 9846
    .local v6, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 9848
    .local v5, selEnd:I
    const/4 v11, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 9849
    const/4 v11, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 9852
    .end local v5           #selEnd:I
    .end local v6           #selStart:I
    :cond_2b
    sparse-switch p1, :sswitch_data_19a

    .line 9963
    const/4 v11, 0x0

    :goto_2f
    return v11

    .line 9854
    :sswitch_30
    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    const-class v12, Landroid/text/style/URLSpan;

    invoke-interface {v11, v4, v3, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/URLSpan;

    .line 9855
    .local v10, urls:[Landroid/text/style/URLSpan;
    array-length v11, v10

    const/4 v12, 0x1

    if-lt v11, v12, :cond_68

    .line 9856
    const/4 v0, 0x0

    .line 9857
    .local v0, clip:Landroid/content/ClipData;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_42
    array-length v11, v10

    if-ge v2, v11, :cond_63

    .line 9858
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v11}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 9859
    .local v9, uri:Landroid/net/Uri;
    if-nez v0, :cond_5a

    .line 9860
    const/4 v11, 0x0

    invoke-static {v11, v9}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    .line 9857
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 9862
    :cond_5a
    new-instance v11, Landroid/content/ClipData$Item;

    invoke-direct {v11, v9}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v11}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_57

    .line 9865
    .end local v9           #uri:Landroid/net/Uri;
    :cond_63
    if-eqz v0, :cond_68

    .line 9866
    invoke-direct {p0, v0}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9869
    .end local v0           #clip:Landroid/content/ClipData;
    .end local v2           #i:I
    :cond_68
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9870
    const/4 v11, 0x1

    goto :goto_2f

    .line 9874
    .end local v10           #urls:[Landroid/text/style/URLSpan;
    :sswitch_6d
    iget-object v11, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v11, :cond_7d

    .line 9876
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    .line 9878
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 9882
    :goto_7b
    const/4 v11, 0x1

    goto :goto_2f

    .line 9880
    :cond_7d
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    goto :goto_7b

    .line 9886
    :sswitch_81
    iget-object v11, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v11, :cond_8a

    .line 9888
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    .line 9892
    :goto_88
    const/4 v11, 0x1

    goto :goto_2f

    .line 9890
    :cond_8a
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    goto :goto_88

    .line 9897
    :sswitch_8e
    invoke-direct {p0}, Landroid/widget/TextView;->selectAll()Z

    .line 9899
    iget-object v11, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v11, :cond_a2

    iget v11, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_9f

    iget-boolean v11, p0, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    if-eqz v11, :cond_a2

    .line 9900
    :cond_9f
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    .line 9902
    :cond_a2
    const/4 v11, 0x1

    goto :goto_2f

    .line 9905
    :sswitch_a4
    invoke-direct {p0, v4, v3}, Landroid/widget/TextView;->paste(II)V

    .line 9906
    const/4 v11, 0x1

    goto :goto_2f

    .line 9911
    :sswitch_a9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v3}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/widget/TextView;->removeStyledAnnotationSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/widget/TextView;->removeReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9914
    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 9915
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9916
    const/4 v11, 0x1

    goto/16 :goto_2f

    .line 9921
    :sswitch_dc
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v3}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/widget/TextView;->removeStyledAnnotationSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/widget/TextView;->removeReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9924
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9925
    const/4 v11, 0x1

    goto/16 :goto_2f

    .line 9929
    :sswitch_10c
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 9930
    .local v7, str:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9931
    if-eqz v7, :cond_13f

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_13f

    .line 9933
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9935
    .local v2, i:Landroid/content/Intent;
    const/high16 v11, 0x1000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9936
    const-string/jumbo v11, "new_search"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9937
    const-string/jumbo v11, "query"

    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9939
    :try_start_13a
    iget-object v11, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_13f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13a .. :try_end_13f} :catch_142

    .line 9945
    .end local v2           #i:Landroid/content/Intent;
    :cond_13f
    :goto_13f
    const/4 v11, 0x1

    goto/16 :goto_2f

    .line 9940
    .restart local v2       #i:Landroid/content/Intent;
    :catch_142
    move-exception v1

    .line 9941
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v11, "HtcTextSelection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f

    .line 9948
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #i:Landroid/content/Intent;
    .end local v7           #str:Ljava/lang/String;
    :sswitch_15c
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 9949
    .local v8, strContent:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9951
    :try_start_169
    new-instance v2, Landroid/content/Intent;

    const-string v11, "com.htc.app.SHARE"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9952
    .restart local v2       #i:Landroid/content/Intent;
    const/high16 v11, 0x1000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9953
    const-string v11, "SHARED_CONTENT"

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9954
    const-string v11, "ORIGINAL_URL"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9955
    const-string v11, "LONG_URL"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9956
    iget-object v11, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_191} :catch_194

    .line 9960
    .end local v2           #i:Landroid/content/Intent;
    :goto_191
    const/4 v11, 0x1

    goto/16 :goto_2f

    .line 9957
    :catch_194
    move-exception v1

    .line 9958
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_191

    .line 9852
    nop

    :sswitch_data_19a
    .sparse-switch
        0x54d -> :sswitch_10c
        0x54e -> :sswitch_15c
        0x102001f -> :sswitch_8e
        0x1020020 -> :sswitch_a9
        0x1020021 -> :sswitch_dc
        0x1020022 -> :sswitch_a4
        0x1020023 -> :sswitch_30
        0x1020028 -> :sswitch_6d
        0x102002d -> :sswitch_81
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25
    .parameter "event"

    .prologue
    .line 8789
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 8791
    .local v4, action:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v19

    if-eqz v19, :cond_15

    .line 8792
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 8795
    :cond_15
    if-nez v4, :cond_53

    .line 8796
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastDownPositionX:F

    .line 8797
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastDownPositionY:F

    .line 8801
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 8802
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    .line 8804
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsLongPressed:Z

    .line 8805
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mScrolled:Z

    .line 8806
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    .line 8810
    :cond_53
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 8817
    .local v17, superResult:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    move/from16 v19, v0

    if-eqz v19, :cond_127

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_127

    .line 8819
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIsLongPressed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11e

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v19

    if-eqz v19, :cond_11e

    .line 8820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 8822
    const/4 v7, 0x0

    .line 8823
    .local v7, composingToSelection:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v19

    if-eqz v19, :cond_bd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_bd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v19, v0

    if-eqz v19, :cond_bd

    .line 8824
    const/4 v6, -0x1

    .line 8825
    .local v6, candStart:I
    const/4 v5, -0x1

    .line 8826
    .local v5, candEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    check-cast v16, Landroid/text/Spannable;

    .line 8827
    .local v16, sp:Landroid/text/Spannable;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v6

    .line 8828
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 8829
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v0, v6, :cond_bd

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_bd

    .line 8830
    move-object/from16 v0, v16

    invoke-static {v0, v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8831
    const/4 v7, 0x1

    .line 8835
    .end local v5           #candEnd:I
    .end local v6           #candStart:I
    .end local v16           #sp:Landroid/text/Spannable;
    :cond_bd
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_cb

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v19

    if-nez v19, :cond_cd

    :cond_cb
    if-eqz v7, :cond_f9

    .line 8836
    :cond_cd
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 8837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spannable;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 8838
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v19

    if-eqz v19, :cond_f9

    .line 8839
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 8844
    :cond_f9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_104

    .line 8845
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    .line 8846
    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    .line 8847
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    .line 8849
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsLongPressed:Z

    .line 8852
    .end local v7           #composingToSelection:Z
    :cond_11e
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 8940
    .end local v17           #superResult:Z
    :cond_126
    :goto_126
    return v17

    .line 8856
    .restart local v17       #superResult:Z
    :cond_127
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_273

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->shouldIgnoreActionUpEvent()Z

    move-result v19

    if-nez v19, :cond_273

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v19

    if-eqz v19, :cond_273

    const/16 v18, 0x1

    .line 8859
    .local v18, touchIsFinished:Z
    :goto_13b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v19, v0

    if-nez v19, :cond_149

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v19

    if-eqz v19, :cond_126

    :cond_149
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_126

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v19, v0

    if-eqz v19, :cond_126

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_126

    .line 8861
    const/4 v8, 0x0

    .line 8864
    .local v8, handled:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    .line 8865
    .local v13, oldSelStart:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    .line 8868
    .local v12, oldSelEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIsLongPressed:Z

    move/from16 v19, v0

    if-nez v19, :cond_19a

    .line 8869
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spannable;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v8, v8, v19

    .line 8872
    :cond_19a
    if-eqz v18, :cond_1dd

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mLinksClickable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1dd

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move/from16 v19, v0

    if-eqz v19, :cond_1dd

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1dd

    .line 8876
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spannable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v21

    const-class v22, Landroid/text/style/ClickableSpan;

    invoke-interface/range {v19 .. v22}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/ClickableSpan;

    .line 8879
    .local v10, links:[Landroid/text/style/ClickableSpan;
    array-length v0, v10

    move/from16 v19, v0

    if-eqz v19, :cond_1dd

    .line 8880
    const/16 v19, 0x0

    aget-object v19, v10, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 8881
    const/4 v8, 0x1

    .line 8885
    .end local v10           #links:[Landroid/text/style/ClickableSpan;
    :cond_1dd
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v19

    if-eqz v19, :cond_2b0

    .line 8886
    if-eqz v18, :cond_26d

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v19

    if-nez v19, :cond_1f3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_26d

    :cond_1f3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mScrolled:Z

    move/from16 v19, v0

    if-nez v19, :cond_26d

    .line 8888
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    .line 8889
    .local v9, imm:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 8891
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-nez v19, :cond_22c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_22c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v19

    if-eqz v19, :cond_22c

    .line 8893
    if-eqz v9, :cond_277

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_277

    const/16 v19, 0x1

    :goto_22a
    or-int v8, v8, v19

    .line 8896
    :cond_22c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_27a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v19

    if-eqz v19, :cond_27a

    const/4 v14, 0x1

    .line 8897
    .local v14, selectAllGotFocus:Z
    :goto_23b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8898
    if-nez v14, :cond_28a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_28a

    .line 8899
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_25d

    .line 8901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 8903
    :cond_25d
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->extractedTextModeWillBeStarted()Z

    move-result v19

    if-nez v19, :cond_26c

    .line 8904
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isCursorInsideEasyCorrectionSpan()Z

    move-result v19

    if-eqz v19, :cond_27c

    .line 8905
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->showSuggestions()V

    .line 8914
    :cond_26c
    :goto_26c
    const/4 v8, 0x1

    .line 8935
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v14           #selectAllGotFocus:Z
    :cond_26d
    :goto_26d
    if-eqz v8, :cond_126

    .line 8936
    const/16 v17, 0x1

    goto/16 :goto_126

    .line 8856
    .end local v8           #handled:Z
    .end local v12           #oldSelEnd:I
    .end local v13           #oldSelStart:I
    .end local v18           #touchIsFinished:Z
    :cond_273
    const/16 v18, 0x0

    goto/16 :goto_13b

    .line 8893
    .restart local v8       #handled:Z
    .restart local v9       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v12       #oldSelEnd:I
    .restart local v13       #oldSelStart:I
    .restart local v18       #touchIsFinished:Z
    :cond_277
    const/16 v19, 0x0

    goto :goto_22a

    .line 8896
    :cond_27a
    const/4 v14, 0x0

    goto :goto_23b

    .line 8906
    .restart local v14       #selectAllGotFocus:Z
    :cond_27c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v19

    if-eqz v19, :cond_26c

    .line 8907
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView$InsertionPointCursorController;->show()V

    goto :goto_26c

    .line 8911
    :cond_28a
    if-nez v14, :cond_26c

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v19

    if-eqz v19, :cond_26c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-nez v19, :cond_26c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v19

    if-eqz v19, :cond_26c

    .line 8912
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v19

    #calls: Landroid/widget/TextView$InsertionPointCursorController;->getHandle()Landroid/widget/TextView$InsertionHandleView;
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView$InsertionPointCursorController;->access$2100(Landroid/widget/TextView$InsertionPointCursorController;)Landroid/widget/TextView$InsertionHandleView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView$InsertionHandleView;->showPasteWithoutInsertionHandle()V

    goto :goto_26c

    .line 8918
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v14           #selectAllGotFocus:Z
    :cond_2b0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_26d

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_26d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mScrolled:Z

    move/from16 v19, v0

    if-nez v19, :cond_26d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v19

    if-eqz v19, :cond_26d

    if-ltz v13, :cond_26d

    if-eq v13, v12, :cond_26d

    .line 8921
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    .line 8922
    .local v15, smcc:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-virtual {v15}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v11

    .line 8923
    .local v11, offset:I
    if-lt v11, v13, :cond_2ed

    if-ge v11, v12, :cond_2ed

    .line 8924
    invoke-virtual {v15}, Landroid/widget/TextView$SelectionModifierCursorController;->isShowing()Z

    move-result v19

    if-nez v19, :cond_2e9

    .line 8926
    invoke-virtual {v15}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 8927
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    goto :goto_26d

    .line 8929
    :cond_2e9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_26d

    .line 8931
    :cond_2ed
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto/16 :goto_26d
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 9082
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1c

    .line 9084
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 9085
    const/4 v0, 0x1

    .line 9089
    :goto_1b
    return v0

    :cond_1c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 8755
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 8756
    if-eqz p2, :cond_8

    .line 8757
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8759
    :cond_8
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasWindowFocus"

    .prologue
    .line 8727
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 8729
    if-eqz p1, :cond_15

    .line 8730
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_11

    .line 8731
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->uncancel()V

    .line 8732
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 8750
    :cond_11
    :goto_11
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 8751
    return-void

    .line 8735
    :cond_15
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_1e

    .line 8736
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->cancel()V

    .line 8739
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 8740
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_2a

    .line 8741
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 8744
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8745
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-eqz v0, :cond_11

    .line 8746
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->onParentLostFocus()V

    goto :goto_11
.end method

.method public performLongClick()Z
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v5, 0x0

    .line 10064
    const/4 v8, 0x0

    .line 10065
    .local v8, handled:Z
    const/4 v13, 0x1

    .line 10067
    .local v13, vibrate:Z
    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_13

    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 10068
    iput-boolean v14, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 10069
    const/4 v8, 0x1

    .line 10078
    :cond_13
    if-nez v8, :cond_ee

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_ee

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_ee

    .line 10079
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    .line 10081
    .local v4, hasClipData:Z
    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_b8

    .line 10082
    if-eqz v4, :cond_43

    .line 10088
    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 10089
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 10090
    :cond_3c
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->showWithActionPopupDelay()V

    .line 10092
    :cond_43
    const/4 v8, 0x1

    .line 10093
    const/4 v13, 0x0

    .line 10094
    iput-boolean v14, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 10133
    .end local v4           #hasClipData:Z
    :cond_47
    :goto_47
    if-nez v8, :cond_84

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_51

    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_84

    .line 10134
    :cond_51
    invoke-direct {p0}, Landroid/widget/TextView;->touchPositionIsInSelection()Z

    move-result v0

    if-eqz v0, :cond_121

    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_121

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_121

    .line 10137
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .line 10138
    .local v12, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .line 10139
    .local v7, end:I
    invoke-direct {p0, v12, v7}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 10140
    .local v11, selectedText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    invoke-static {v0, v11}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v6

    .line 10141
    .local v6, data:Landroid/content/ClipData;
    new-instance v9, Landroid/widget/TextView$DragLocalState;

    invoke-direct {v9, p0, v12, v7}, Landroid/widget/TextView$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 10142
    .local v9, localState:Landroid/widget/TextView$DragLocalState;
    invoke-direct {p0, v11}, Landroid/widget/TextView;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v0

    invoke-virtual {p0, v6, v0, v9, v5}, Landroid/widget/TextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 10143
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 10144
    const/4 v8, 0x1

    .line 10160
    .end local v6           #data:Landroid/content/ClipData;
    .end local v7           #end:I
    .end local v9           #localState:Landroid/widget/TextView$DragLocalState;
    .end local v11           #selectedText:Ljava/lang/CharSequence;
    .end local v12           #start:I
    :cond_84
    :goto_84
    if-nez v8, :cond_14e

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_14e

    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v0, :cond_14e

    .line 10171
    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_99

    .line 10172
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 10174
    :cond_99
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setPressed(Z)V

    .line 10176
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 10177
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 10179
    invoke-direct {p0, v14}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    .line 10180
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, p0}, Lcom/htc/textselection/HtcTextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    .line 10181
    iput-boolean v14, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    .line 10182
    const/4 v8, 0x1

    .line 10183
    const/4 v13, 0x0

    .line 10209
    :cond_ae
    :goto_ae
    if-eqz v13, :cond_b3

    .line 10210
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 10213
    :cond_b3
    if-eqz v8, :cond_b7

    .line 10214
    iput-boolean v14, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 10217
    :cond_b7
    return v8

    .line 10095
    .restart local v4       #hasClipData:Z
    :cond_b8
    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_47

    .line 10096
    if-eqz v4, :cond_e8

    .line 10102
    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_c9

    .line 10103
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 10104
    :cond_c9
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v2, p0, Landroid/widget/TextView;->mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareHtcPasteWindow(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZ)V

    .line 10105
    invoke-direct {p0}, Landroid/widget/TextView;->showQuickAction()V

    .line 10106
    iget-object v0, p0, Landroid/widget/TextView;->mPasteWindowHider:Ljava/lang/Runnable;

    if-nez v0, :cond_e1

    .line 10107
    new-instance v0, Landroid/widget/TextView$4;

    invoke-direct {v0, p0}, Landroid/widget/TextView$4;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mPasteWindowHider:Ljava/lang/Runnable;

    .line 10114
    :cond_e1
    iget-object v0, p0, Landroid/widget/TextView;->mPasteWindowHider:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10116
    :cond_e8
    const/4 v8, 0x1

    .line 10117
    const/4 v13, 0x0

    .line 10118
    iput-boolean v14, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    goto/16 :goto_47

    .line 10123
    .end local v4           #hasClipData:Z
    :cond_ee
    if-nez v8, :cond_47

    iget v0, p0, Landroid/widget/TextView;->mLastDownPositionX:F

    iget v1, p0, Landroid/widget/TextView;->mLastDownPositionY:F

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->isPositionOnText(FF)Z

    move-result v0

    if-nez v0, :cond_47

    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_47

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-nez v0, :cond_47

    .line 10125
    iget v0, p0, Landroid/widget/TextView;->mLastDownPositionX:F

    iget v1, p0, Landroid/widget/TextView;->mLastDownPositionY:F

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v10

    .line 10126
    .local v10, offset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 10127
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10128
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->showWithActionPopup()V

    .line 10129
    const/4 v8, 0x1

    .line 10130
    const/4 v13, 0x0

    goto/16 :goto_47

    .line 10148
    .end local v10           #offset:I
    :cond_121
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v0, :cond_137

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_13a

    invoke-direct {p0}, Landroid/widget/TextView;->canReplaceActionMode()Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 10149
    :cond_137
    const/4 v8, 0x0

    goto/16 :goto_84

    .line 10151
    :cond_13a
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 10152
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    .line 10153
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 10154
    const/4 v8, 0x1

    goto/16 :goto_84

    .line 10189
    :cond_14e
    if-nez v8, :cond_ae

    .line 10190
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_16c

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 10193
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setPressed(Z)V

    .line 10194
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 10195
    invoke-direct {p0, v5}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    .line 10196
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, p0}, Lcom/htc/textselection/HtcTextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    .line 10197
    iput-boolean v5, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    .line 10201
    :cond_16c
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    move-result v8

    move v13, v8

    .line 10203
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 10204
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    .line 10205
    invoke-direct {p0, v5}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    goto/16 :goto_ae
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .registers 8
    .parameter "spannable"

    .prologue
    .line 3176
    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 3178
    .local v2, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    array-length v3, v2

    if-ge v1, v3, :cond_27

    .line 3179
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 3180
    .local v0, flags:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_24

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_24

    .line 3182
    aget-object v3, v2, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3178
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3185
    .end local v0           #flags:I
    :cond_27
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .parameter "text"

    .prologue
    .line 11066
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_2b

    .line 11068
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_24

    move-object v1, p1

    .line 11069
    check-cast v1, Landroid/text/Spannable;

    .line 11075
    .local v1, spannable:Landroid/text/Spannable;
    :goto_b
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 11076
    .local v2, spans:[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    array-length v3, v2

    if-ge v0, v3, :cond_2b

    .line 11077
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 11076
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 11071
    .end local v0           #i:I
    .end local v1           #spannable:Landroid/text/Spannable;
    .end local v2           #spans:[Landroid/text/style/SuggestionSpan;
    :cond_24
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 11072
    .restart local v1       #spannable:Landroid/text/Spannable;
    move-object p1, v1

    goto :goto_b

    .line 11080
    .end local v1           #spannable:Landroid/text/Spannable;
    :cond_2b
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 4
    .parameter "watcher"

    .prologue
    .line 8016
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 8017
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 8019
    .local v0, i:I
    if-ltz v0, :cond_11

    .line 8020
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8023
    .end local v0           #i:I
    :cond_11
    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .registers 5
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 13400
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 13401
    return-void
.end method

.method reportExtractedText()Z
    .registers 12

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 6052
    iget-object v8, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6053
    .local v8, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v8, :cond_49

    .line 6054
    iget-boolean v6, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 6055
    .local v6, contentChanged:Z
    if-nez v6, :cond_e

    iget-boolean v0, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_49

    .line 6056
    :cond_e
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 6057
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 6058
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 6059
    .local v1, req:Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_49

    .line 6060
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 6061
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_49

    .line 6065
    iget v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_27

    if-nez v6, :cond_27

    .line 6066
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6068
    :cond_27
    iget v2, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 6074
    iget v0, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v2, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v2, v2, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 6076
    iput v10, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6077
    iput v10, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 6078
    iput v9, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 6079
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 6080
    const/4 v0, 0x1

    .line 6086
    .end local v1           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6           #contentChanged:Z
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_48
    return v0

    :cond_49
    move v0, v9

    goto :goto_48
.end method

.method public resetErrorChangedFlag()V
    .registers 2

    .prologue
    .line 5748
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 5749
    return-void
.end method

.method protected resetResolvedDrawables()V
    .registers 2

    .prologue
    .line 13375
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    .line 13376
    return-void
.end method

.method protected resetResolvedLayoutDirection()V
    .registers 3

    .prologue
    .line 6506
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 6508
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    sget-object v1, Landroid/widget/TextView$TextAlign;->VIEW_START:Landroid/widget/TextView$TextAlign;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    sget-object v1, Landroid/widget/TextView$TextAlign;->VIEW_END:Landroid/widget/TextView$TextAlign;

    if-ne v0, v1, :cond_16

    .line 6511
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    .line 6513
    :cond_16
    return-void
.end method

.method protected resolveDrawables()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 13325
    iget-boolean v1, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    if-eqz v1, :cond_6

    .line 13372
    :cond_5
    :goto_5
    return-void

    .line 13329
    :cond_6
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_5

    .line 13333
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_19

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_19

    .line 13334
    iput-boolean v2, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    goto :goto_5

    .line 13338
    :cond_19
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 13339
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_66

    .line 13357
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_32

    .line 13358
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 13360
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 13361
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 13363
    :cond_32
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_42

    .line 13364
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 13366
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 13367
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 13371
    :cond_42
    :goto_42
    iput-boolean v2, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    goto :goto_5

    .line 13341
    :pswitch_45
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_55

    .line 13342
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 13344
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 13345
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 13347
    :cond_55
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_42

    .line 13348
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 13350
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 13351
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_42

    .line 13339
    :pswitch_data_66
    .packed-switch 0x40000000
        :pswitch_45
    .end packed-switch
.end method

.method protected resolveTextDirection()V
    .registers 5

    .prologue
    .line 13282
    sget-boolean v2, Landroid/widget/TextView;->bArabicDisplay:Z

    if-nez v2, :cond_f

    .line 13284
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 13285
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 13314
    :goto_e
    return-void

    .line 13291
    :cond_f
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v2

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_29

    const/4 v0, 0x1

    .line 13294
    .local v0, defaultIsRtl:Z
    :goto_18
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()V

    .line 13297
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedTextDirection()I

    move-result v1

    .line 13298
    .local v1, textDir:I
    packed-switch v1, :pswitch_data_3e

    .line 13301
    if-eqz v0, :cond_2b

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    :goto_26
    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_e

    .line 13291
    .end local v0           #defaultIsRtl:Z
    .end local v1           #textDir:I
    :cond_29
    const/4 v0, 0x0

    goto :goto_18

    .line 13301
    .restart local v0       #defaultIsRtl:Z
    .restart local v1       #textDir:I
    :cond_2b
    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_26

    .line 13305
    :pswitch_2e
    sget-object v2, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_e

    .line 13308
    :pswitch_33
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_e

    .line 13311
    :pswitch_38
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_e

    .line 13298
    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_33
        :pswitch_38
    .end packed-switch
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .parameter "eventType"

    .prologue
    .line 9717
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_5

    .line 9721
    :goto_4
    return-void

    .line 9720
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_4
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "beforeText"
    .parameter "fromIndex"
    .parameter "removedCount"
    .parameter "addedCount"

    .prologue
    .line 9739
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 9741
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 9742
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 9743
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 9744
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 9745
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9746
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .parameter "text"

    .prologue
    .line 8086
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 8087
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8088
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8089
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 8090
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 8089
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 8093
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_19
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 8062
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 8063
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 8065
    :cond_9
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_22

    .line 8066
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8067
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8068
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v0, :cond_22

    .line 8069
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 8068
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 8073
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_22
    add-int v3, p2, p4

    const/4 v4, 0x0

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->updateSpellCheckSpans(IIZ)V

    .line 8078
    invoke-direct {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 8079
    return-void
.end method

.method public setAllCaps(Z)V
    .registers 4
    .parameter "allCaps"

    .prologue
    .line 7616
    if-eqz p1, :cond_f

    .line 7617
    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 7621
    :goto_e
    return-void

    .line 7619
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_e
.end method

.method public final setAutoLinkMask(I)V
    .registers 2
    .parameter "mask"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2518
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 2519
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .registers 3
    .parameter "pad"

    .prologue
    .line 2177
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2178
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_f

    .line 2179
    if-eqz v0, :cond_8

    .line 2180
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 2189
    :cond_8
    :goto_8
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2190
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2191
    return-void

    .line 2183
    :cond_f
    if-nez v0, :cond_18

    .line 2184
    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v0}, Landroid/widget/TextView$Drawables;-><init>()V

    .restart local v0       #dr:Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2186
    :cond_18
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_8
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1806
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1808
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    if-nez p3, :cond_c

    if-eqz p4, :cond_1e

    :cond_c
    const/4 v2, 0x1

    .line 1811
    .local v2, drawables:Z
    :goto_d
    if-nez v2, :cond_5d

    .line 1813
    if-eqz v1, :cond_17

    .line 1814
    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_20

    .line 1815
    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1904
    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1905
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1906
    return-void

    .end local v2           #drawables:Z
    :cond_1e
    move v2, v4

    .line 1808
    goto :goto_d

    .line 1819
    .restart local v2       #drawables:Z
    :cond_20
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_29

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1820
    :cond_29
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1821
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_34

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1822
    :cond_34
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1823
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3f

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1824
    :cond_3f
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1825
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1826
    :cond_4a
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1827
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1828
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1829
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1830
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_17

    .line 1834
    :cond_5d
    if-nez v1, :cond_66

    .line 1835
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1}, Landroid/widget/TextView$Drawables;-><init>()V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1838
    :cond_66
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_73

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_73

    .line 1839
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1841
    :cond_73
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1843
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_82

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_82

    .line 1844
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1846
    :cond_82
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1848
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_91

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_91

    .line 1849
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1851
    :cond_91
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1853
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_a0

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a0

    .line 1854
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1856
    :cond_a0
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1858
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1861
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1863
    .local v3, state:[I
    if-eqz p1, :cond_106

    .line 1864
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1865
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1866
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1867
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1868
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 1873
    :goto_bf
    if-eqz p3, :cond_10b

    .line 1874
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1875
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1876
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1877
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1878
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 1883
    :goto_d6
    if-eqz p2, :cond_110

    .line 1884
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1885
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1886
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1887
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1888
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 1893
    :goto_ed
    if-eqz p4, :cond_115

    .line 1894
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1895
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1896
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1897
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 1898
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_17

    .line 1870
    :cond_106
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_bf

    .line 1880
    :cond_10b
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_d6

    .line 1890
    :cond_110
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_ed

    .line 1900
    :cond_115
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_17
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 12
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1976
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1978
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    if-nez p3, :cond_c

    if-eqz p4, :cond_21

    :cond_c
    const/4 v2, 0x1

    .line 1981
    .local v2, drawables:Z
    :goto_d
    if-nez v2, :cond_60

    .line 1983
    if-eqz v1, :cond_17

    .line 1984
    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_23

    .line 1985
    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2074
    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2075
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2076
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2077
    return-void

    .end local v2           #drawables:Z
    :cond_21
    move v2, v4

    .line 1978
    goto :goto_d

    .line 1989
    .restart local v2       #drawables:Z
    :cond_23
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1990
    :cond_2c
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 1991
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_37

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1992
    :cond_37
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1993
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_42

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1994
    :cond_42
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 1995
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1996
    :cond_4d
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1997
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 1998
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 1999
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2000
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_17

    .line 2004
    :cond_60
    if-nez v1, :cond_69

    .line 2005
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1}, Landroid/widget/TextView$Drawables;-><init>()V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2008
    :cond_69
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_76

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_76

    .line 2009
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2011
    :cond_76
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2013
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_85

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_85

    .line 2014
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2016
    :cond_85
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 2018
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_94

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_94

    .line 2019
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2021
    :cond_94
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2023
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_a3

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a3

    .line 2024
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2026
    :cond_a3
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 2028
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2031
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 2033
    .local v3, state:[I
    if-eqz p1, :cond_109

    .line 2034
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2035
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2036
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2037
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2038
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 2043
    :goto_c2
    if-eqz p3, :cond_10e

    .line 2044
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2045
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2046
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2047
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2048
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 2053
    :goto_d9
    if-eqz p2, :cond_113

    .line 2054
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2055
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2056
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2057
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2058
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 2063
    :goto_f0
    if-eqz p4, :cond_118

    .line 2064
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2065
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2066
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2067
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2068
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_17

    .line 2040
    :cond_109
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_c2

    .line 2050
    :cond_10e
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_d9

    .line 2060
    :cond_113
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_f0

    .line 2070
    :cond_118
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_17
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .registers 10
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 2099
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2100
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2101
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_2a

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_13
    if-eqz p2, :cond_2c

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1a
    if-eqz p3, :cond_2e

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_20
    if-eqz p4, :cond_26

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_26
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2106
    return-void

    :cond_2a
    move-object v4, v1

    .line 2101
    goto :goto_13

    :cond_2c
    move-object v3, v1

    goto :goto_1a

    :cond_2e
    move-object v2, v1

    goto :goto_20
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 2124
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2125
    if-eqz p1, :cond_11

    .line 2126
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2128
    :cond_11
    if-eqz p3, :cond_1e

    .line 2129
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2131
    :cond_1e
    if-eqz p2, :cond_2b

    .line 2132
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2134
    :cond_2b
    if-eqz p4, :cond_38

    .line 2135
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2137
    :cond_38
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2138
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 10
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 1925
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1926
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_27

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_10
    if-eqz p2, :cond_29

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_17
    if-eqz p3, :cond_2b

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1d
    if-eqz p4, :cond_23

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_23
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1930
    return-void

    :cond_27
    move-object v4, v1

    .line 1926
    goto :goto_10

    :cond_29
    move-object v3, v1

    goto :goto_17

    :cond_2b
    move-object v2, v1

    goto :goto_1d
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 1946
    if-eqz p1, :cond_e

    .line 1947
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1949
    :cond_e
    if-eqz p3, :cond_1b

    .line 1950
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1952
    :cond_1b
    if-eqz p2, :cond_28

    .line 1953
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1955
    :cond_28
    if-eqz p4, :cond_35

    .line 1956
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1958
    :cond_35
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1959
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 13416
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 13417
    return-void
.end method

.method public setCursorVisible(Z)V
    .registers 3
    .parameter "visible"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7743
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eq v0, p1, :cond_f

    .line 7744
    iput-boolean p1, p0, Landroid/widget/TextView;->mCursorVisible:Z

    .line 7745
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7747
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 7750
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 7752
    :cond_f
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2
    .parameter "actionModeCallback"

    .prologue
    .line 11165
    iput-object p1, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 11166
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .registers 3
    .parameter "factory"

    .prologue
    .line 3274
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 3275
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3276
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 3
    .parameter "where"

    .prologue
    .line 7691
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_13

    .line 7692
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 7694
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_13

    .line 7695
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 7696
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7697
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7700
    :cond_13
    return-void
.end method

.method public setEms(I)V
    .registers 3
    .parameter "ems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2924
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2925
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2927
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2928
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2929
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 1297
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_7

    .line 1318
    :goto_6
    return-void

    .line 1301
    :cond_7
    if-nez p1, :cond_1d

    .line 1303
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1304
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1d

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1305
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1308
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1d
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1309
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1310
    if-eqz p1, :cond_2e

    .line 1312
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1313
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2e

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1317
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2e
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    goto :goto_6
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "error"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4114
    if-nez p1, :cond_8

    .line 4115
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 4123
    :goto_7
    return-void

    .line 4117
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080360

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4120
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4121
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "error"
    .parameter "icon"

    .prologue
    const/4 v4, 0x0

    .line 4135
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 4137
    iput-object p1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    .line 4138
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 4139
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4140
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_3e

    .line 4141
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_4c

    .line 4144
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v2, p2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4156
    :goto_1e
    if-nez p1, :cond_42

    .line 4157
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v1, :cond_33

    .line 4158
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4159
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 4162
    :cond_31
    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 4169
    :cond_33
    :goto_33
    return-void

    .line 4148
    :pswitch_34
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 4153
    :cond_3e
    invoke-virtual {p0, v4, v4, p2, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 4165
    :cond_42
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 4166
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    goto :goto_33

    .line 4141
    :pswitch_data_4c
    .packed-switch 0x40000000
        :pswitch_34
    .end packed-switch
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .registers 10
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 6108
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 6109
    .local v1, content:Landroid/text/Editable;
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_12

    .line 6110
    if-nez v1, :cond_33

    .line 6111
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6130
    :cond_12
    :goto_12
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 6131
    .local v3, sp:Landroid/text/Spannable;
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 6132
    .local v0, N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 6133
    .local v4, start:I
    if-gez v4, :cond_5f

    const/4 v4, 0x0

    .line 6135
    :cond_21
    :goto_21
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 6136
    .local v2, end:I
    if-gez v2, :cond_63

    const/4 v2, 0x0

    .line 6138
    :cond_26
    :goto_26
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6141
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_67

    .line 6142
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 6146
    :goto_32
    return-void

    .line 6112
    .end local v0           #N:I
    .end local v2           #end:I
    .end local v3           #sp:Landroid/text/Spannable;
    .end local v4           #start:I
    :cond_33
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v5, :cond_48

    .line 6113
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v7, v5}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 6114
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_12

    .line 6116
    :cond_48
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 6117
    .restart local v0       #N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 6118
    .restart local v4       #start:I
    if-le v4, v0, :cond_51

    move v4, v0

    .line 6119
    :cond_51
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 6120
    .restart local v2       #end:I
    if-le v2, v0, :cond_56

    move v2, v0

    .line 6121
    :cond_56
    invoke-static {v1, v4, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 6122
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_12

    .line 6134
    .end local v2           #end:I
    .restart local v3       #sp:Landroid/text/Spannable;
    :cond_5f
    if-le v4, v0, :cond_21

    move v4, v0

    goto :goto_21

    .line 6137
    .restart local v2       #end:I
    :cond_63
    if-le v2, v0, :cond_26

    move v2, v0

    goto :goto_26

    .line 6144
    :cond_67
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_32
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .registers 3
    .parameter "req"

    .prologue
    .line 6152
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_8

    .line 6153
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iput-object p1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 6158
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6159
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .parameter "filters"

    .prologue
    .line 4355
    if-nez p1, :cond_8

    .line 4356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4359
    :cond_8
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 4361
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_17

    .line 4362
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 4364
    :cond_17
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 13
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4327
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v6

    .line 4329
    .local v6, result:Z
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_31

    .line 4330
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 4331
    .local v7, tv:Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v7}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 4332
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v3

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getHeight()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 4336
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_31
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 4338
    return v6
.end method

.method public setFreezesText(Z)V
    .registers 2
    .parameter "freezesText"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3253
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 3254
    return-void
.end method

.method public setGravity(I)V
    .registers 10
    .parameter "gravity"

    .prologue
    const v4, 0x800007

    .line 2662
    and-int v0, p1, v4

    if-nez v0, :cond_b

    .line 2663
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 2665
    :cond_b
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_11

    .line 2666
    or-int/lit8 p1, p1, 0x30

    .line 2669
    :cond_11
    const/4 v7, 0x0

    .line 2671
    .local v7, newLayout:Z
    and-int v0, p1, v4

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v3, v4

    if-eq v0, v3, :cond_1a

    .line 2673
    const/4 v7, 0x1

    .line 2676
    :cond_1a
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_24

    .line 2677
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2678
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    .line 2681
    :cond_24
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 2683
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_50

    if-eqz v7, :cond_50

    .line 2685
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 2686
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_51

    const/4 v2, 0x0

    .line 2688
    .local v2, hintWant:I
    :goto_37
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 2692
    .end local v1           #want:I
    .end local v2           #hintWant:I
    :cond_50
    return-void

    .line 2686
    .restart local v1       #want:I
    :cond_51
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_37
.end method

.method public setHeight(I)V
    .registers 3
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2854
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2855
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2857
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2858
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2859
    return-void
.end method

.method public setHighlightColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2476
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_9

    .line 2477
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 2478
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2480
    :cond_9
    return-void
.end method

.method public final setHint(I)V
    .registers 3
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3676
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3677
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "hint"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3657
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 3659
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_d

    .line 3660
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 3663
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_18

    .line 3664
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3666
    :cond_18
    return-void
.end method

.method public final setHintTextColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2591
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 2592
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2593
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .parameter "colors"

    .prologue
    .line 2601
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 2602
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2603
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .registers 3
    .parameter "whether"

    .prologue
    .line 2737
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_13

    .line 2738
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 2740
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_13

    .line 2741
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2742
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2743
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2746
    :cond_13
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "label"
    .parameter "actionId"

    .prologue
    .line 3891
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    .line 3892
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3894
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 3895
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p2, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    .line 3896
    return-void
.end method

.method public setImeOptions(I)V
    .registers 3
    .parameter "imeOptions"

    .prologue
    .line 3863
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    .line 3864
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3866
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p1, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    .line 3867
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .registers 3
    .parameter "includepad"

    .prologue
    .line 6827
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_13

    .line 6828
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 6830
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_13

    .line 6831
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 6832
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 6833
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6836
    :cond_13
    return-void
.end method

.method public setInputExtras(I)V
    .registers 5
    .parameter "xmlResId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4067
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 4068
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v1, :cond_13

    new-instance v1, Landroid/widget/TextView$InputContentType;

    invoke-direct {v1}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 4069
    :cond_13
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 4070
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 4071
    return-void
.end method

.method public setInputType(I)V
    .registers 14
    .parameter "type"

    .prologue
    const/4 v11, 0x3

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3711
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    invoke-static {v9}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .line 3712
    .local v5, wasPassword:Z
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    invoke-static {v9}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .line 3713
    .local v6, wasVisiblePassword:Z
    invoke-direct {p0, p1, v8}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 3714
    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .line 3715
    .local v2, isPassword:Z
    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .line 3716
    .local v3, isVisiblePassword:Z
    const/4 v0, 0x0

    .line 3717
    .local v0, forceUpdate:Z
    if-eqz v2, :cond_53

    .line 3718
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3719
    invoke-direct {p0, v11, v8}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3734
    :cond_28
    :goto_28
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v9

    if-nez v9, :cond_73

    move v4, v7

    .line 3738
    .local v4, singleLine:Z
    :goto_2f
    iget-boolean v9, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v9, v4, :cond_35

    if-eqz v0, :cond_3b

    .line 3741
    :cond_35
    if-nez v2, :cond_38

    move v8, v7

    :cond_38
    invoke-direct {p0, v4, v8, v7}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 3744
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v7

    if-nez v7, :cond_49

    .line 3745
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 3748
    :cond_49
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3749
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_52

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3750
    :cond_52
    return-void

    .line 3720
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #singleLine:Z
    :cond_53
    if-eqz v3, :cond_62

    .line 3721
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_5e

    .line 3722
    const/4 v0, 0x1

    .line 3725
    :cond_5e
    invoke-direct {p0, v11, v8}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    goto :goto_28

    .line 3726
    :cond_62
    if-nez v5, :cond_66

    if-eqz v6, :cond_28

    .line 3728
    :cond_66
    invoke-direct {p0, v10, v10}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3729
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_28

    .line 3730
    const/4 v0, 0x1

    goto :goto_28

    :cond_73
    move v4, v8

    .line 3734
    goto :goto_2f
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .registers 6
    .parameter "input"

    .prologue
    .line 1449
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 1450
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1452
    if-eqz p1, :cond_3a

    .line 1454
    :try_start_8
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView;->mInputType:I
    :try_end_10
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_8 .. :try_end_10} :catch_35

    .line 1460
    :goto_10
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1466
    :goto_15
    iget-object v2, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v2, :cond_2b

    .line 1467
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3e

    .line 1468
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v2, v2, -0xff1

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1474
    :cond_2b
    :goto_2b
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1475
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_34

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1476
    :cond_34
    return-void

    .line 1455
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_35
    move-exception v0

    .line 1456
    .local v0, e:Ljava/lang/IncompatibleClassChangeError;
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_10

    .line 1462
    .end local v0           #e:Ljava/lang/IncompatibleClassChangeError;
    :cond_3a
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_15

    .line 1470
    :cond_3e
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v2, v2, -0xff1

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_2b
.end method

.method public setLineSpacing(FF)V
    .registers 4
    .parameter "add"
    .parameter "mult"

    .prologue
    .line 2956
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_c

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1d

    .line 2957
    :cond_c
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 2958
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 2960
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1d

    .line 2961
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2962
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2963
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2966
    :cond_1d
    return-void
.end method

.method public setLines(I)V
    .registers 3
    .parameter "lines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2835
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2836
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2838
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2839
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2840
    return-void
.end method

.method public final setLinkTextColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2630
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2631
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2632
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .parameter "colors"

    .prologue
    .line 2640
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2641
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2642
    return-void
.end method

.method public final setLinksClickable(Z)V
    .registers 2
    .parameter "whether"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2531
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 2532
    return-void
.end method

.method public setMarqueeControlledAp(Z)V
    .registers 2
    .parameter "controlled"

    .prologue
    .line 14219
    iput-boolean p1, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    .line 14220
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .registers 2
    .parameter "marqueeLimit"

    .prologue
    .line 7709
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 7710
    return-void
.end method

.method public setMaxEms(I)V
    .registers 3
    .parameter "maxems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2896
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2897
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2899
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2900
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2901
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3
    .parameter "maxHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2818
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2819
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2821
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2822
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2823
    return-void
.end method

.method public setMaxLines(I)V
    .registers 3
    .parameter "maxlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2801
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2802
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2804
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2805
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2806
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3
    .parameter "maxpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2910
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2911
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2913
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2914
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2915
    return-void
.end method

.method public setMinEms(I)V
    .registers 3
    .parameter "minems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2868
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2869
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2871
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2872
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2873
    return-void
.end method

.method public setMinHeight(I)V
    .registers 3
    .parameter "minHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2785
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2786
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2788
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2789
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2790
    return-void
.end method

.method public setMinLines(I)V
    .registers 3
    .parameter "minlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2769
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2770
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2772
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2773
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2774
    return-void
.end method

.method public setMinWidth(I)V
    .registers 3
    .parameter "minpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2882
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2883
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2885
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2886
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2887
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .registers 3
    .parameter "movement"

    .prologue
    .line 1506
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 1508
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_11

    .line 1509
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1511
    :cond_11
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1514
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1516
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_21

    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v0, :cond_2b

    :cond_21
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_2b

    .line 1517
    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstance()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 1519
    :cond_2b
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 3929
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    .line 3930
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3932
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 3933
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2203
    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    if-ne p1, v0, :cond_10

    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    if-ne p3, v0, :cond_10

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_10

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_13

    .line 2207
    :cond_10
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2211
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 2212
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2213
    return-void
.end method

.method public setPaintFlags(I)V
    .registers 3
    .parameter "flags"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2719
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 2720
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 2722
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    .line 2723
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2724
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2725
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2728
    :cond_1a
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .registers 4
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 4029
    const-string v0, "com.htc.textselection:enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4030
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    .line 4041
    :goto_d
    return-void

    .line 4033
    :cond_e
    const-string v0, "com.htc.textselection:enabled_longClickable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4034
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    goto :goto_d

    .line 4039
    :cond_1b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_26

    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 4040
    :cond_26
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    goto :goto_d
.end method

.method public setRawInputType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 3797
    iput p1, p0, Landroid/widget/TextView;->mInputType:I

    .line 3798
    return-void
.end method

.method setSCtimeout()V
    .registers 5

    .prologue
    const/4 v2, 0x4

    .line 14177
    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    if-nez v0, :cond_d

    .line 14178
    new-instance v0, Landroid/widget/TextView$SCATDHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TextView$SCATDHandler;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    .line 14179
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    invoke-virtual {v0, v2}, Landroid/widget/TextView$SCATDHandler;->removeMessages(I)V

    .line 14180
    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$SCATDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 14181
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 9093
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 9094
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .registers 4
    .parameter "selectAllOnFocus"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7729
    iput-boolean p1, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 7731
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_11

    .line 7732
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 7734
    :cond_11
    return-void
.end method

.method public setSelected(Z)V
    .registers 5
    .parameter "selected"

    .prologue
    .line 8774
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 8776
    .local v0, wasSelected:Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 8778
    if-eq p1, v0, :cond_14

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_14

    .line 8779
    if-eqz p1, :cond_15

    .line 8780
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 8785
    :cond_14
    :goto_14
    return-void

    .line 8782
    :cond_15
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_14
.end method

.method public setShadowLayer(FFFI)V
    .registers 6
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 2492
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 2494
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 2495
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 2496
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 2498
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2499
    return-void
.end method

.method public setSingleLine()V
    .registers 2

    .prologue
    .line 7600
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 7601
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 3
    .parameter "singleLine"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 7637
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 7638
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 7639
    return-void
.end method

.method public final setSoftInputShownOnFocus(Z)V
    .registers 2
    .parameter "show"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2555
    iput-boolean p1, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    .line 2556
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .registers 6
    .parameter "span"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    .line 13408
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 13409
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .registers 3
    .parameter "factory"

    .prologue
    .line 3282
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 3283
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3284
    return-void
.end method

.method public final setText(I)V
    .registers 3
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3641
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3642
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .registers 4
    .parameter "resid"
    .parameter "type"

    .prologue
    .line 3645
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3646
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3299
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3300
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 5
    .parameter "text"
    .parameter "type"

    .prologue
    .line 3324
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 3326
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_f

    .line 3327
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 3329
    :cond_f
    return-void
.end method

.method public final setText([CII)V
    .registers 8
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 3496
    const/4 v0, 0x0

    .line 3498
    .local v0, oldlen:I
    if-ltz p2, :cond_b

    if-ltz p3, :cond_b

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_28

    .line 3499
    :cond_b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3507
    :cond_28
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4a

    .line 3508
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3509
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 3514
    :goto_37
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_50

    .line 3515
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 3520
    :goto_42
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 3521
    return-void

    .line 3511
    :cond_4a
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_37

    .line 3517
    :cond_50
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_42
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 14
    .parameter "context"
    .parameter "resid"

    .prologue
    .line 2231
    sget-object v9, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2239
    .local v0, appearance:Landroid/content/res/TypedArray;
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 2240
    .local v1, color:I
    if-eqz v1, :cond_3a

    .line 2242
    sget-boolean v9, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v9, :cond_37

    .line 2243
    invoke-direct {p0}, Landroid/widget/TextView;->getSkinPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2244
    .local v4, skinPackage:Ljava/lang/String;
    sget-object v9, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8b

    const/4 v3, 0x1

    .line 2246
    .local v3, skinChange:Z
    :goto_1f
    if-eqz v3, :cond_a5

    .line 2247
    sput-object v4, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    .line 2249
    if-eqz v4, :cond_35

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_35

    const-string v9, "default"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2264
    :cond_35
    :goto_35
    sput v1, Landroid/widget/TextView;->mTextColorHighlight:I

    .line 2269
    .end local v3           #skinChange:Z
    .end local v4           #skinPackage:Ljava/lang/String;
    :cond_37
    :goto_37
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 2272
    :cond_3a
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 2274
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_44

    .line 2275
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2278
    :cond_44
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 2280
    .local v7, ts:I
    if-eqz v7, :cond_50

    .line 2281
    int-to-float v9, v7

    invoke-direct {p0, v9}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 2284
    :cond_50
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 2286
    if-eqz v2, :cond_5a

    .line 2287
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 2290
    :cond_5a
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 2292
    if-eqz v2, :cond_64

    .line 2293
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 2298
    :cond_64
    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 2300
    .local v8, typefaceIndex:I
    const/4 v9, 0x2

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 2303
    .local v5, styleIndex:I
    invoke-direct {p0, v8, v5}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 2305
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_87

    .line 2307
    new-instance v9, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2310
    :cond_87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2311
    return-void

    .line 2244
    .end local v2           #colors:Landroid/content/res/ColorStateList;
    .end local v5           #styleIndex:I
    .end local v7           #ts:I
    .end local v8           #typefaceIndex:I
    .restart local v4       #skinPackage:Ljava/lang/String;
    :cond_8b
    const/4 v3, 0x0

    goto :goto_1f

    .line 2254
    .restart local v3       #skinChange:Z
    :cond_8d
    :try_start_8d
    iget-object v9, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 2255
    .local v6, themeres:Landroid/content/res/Resources;
    const-string/jumbo v9, "input_text_selection_highlight"

    const-string v10, "color"

    invoke-virtual {v6, v9, v10, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_a3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8d .. :try_end_a3} :catch_aa
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8d .. :try_end_a3} :catch_a8

    move-result v1

    goto :goto_35

    .line 2266
    .end local v6           #themeres:Landroid/content/res/Resources;
    :cond_a5
    sget v1, Landroid/widget/TextView;->mTextColorHighlight:I

    goto :goto_37

    .line 2260
    :catch_a8
    move-exception v9

    goto :goto_35

    .line 2257
    :catch_aa
    move-exception v9

    goto :goto_35
.end method

.method public setTextColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2433
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 2434
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2435
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .parameter "colors"

    .prologue
    .line 2443
    if-nez p1, :cond_8

    .line 2444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2447
    :cond_8
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 2448
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2449
    return-void
.end method

.method protected setTextCursorDrawableToNull()V
    .registers 2

    .prologue
    .line 14228
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    .line 14229
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .registers 4
    .parameter "selectable"

    .prologue
    .line 4913
    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-ne v0, p1, :cond_5

    .line 4936
    :goto_4
    return-void

    .line 4915
    :cond_5
    iput-boolean p1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    .line 4918
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_16

    .line 4919
    :cond_13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 4920
    :cond_16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 4921
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4922
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 4926
    if-eqz p1, :cond_3b

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :goto_25
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 4928
    iget-boolean v0, p0, Landroid/widget/TextView;->mIgnoreSetText:Z

    if-nez v0, :cond_37

    .line 4931
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz p1, :cond_3d

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_34
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4935
    :cond_37
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    goto :goto_4

    .line 4926
    :cond_3b
    const/4 v0, 0x0

    goto :goto_25

    .line 4931
    :cond_3d
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_34
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3312
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3313
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 10
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 3624
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 3625
    .local v2, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 3626
    .local v0, end:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3628
    .local v1, len:I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3630
    if-gez v2, :cond_14

    if-ltz v0, :cond_31

    .line 3631
    :cond_14
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_31

    .line 3632
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 3637
    :cond_31
    return-void
.end method

.method public setTextScaleX(F)V
    .registers 3
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2383
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1f

    .line 2384
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 2385
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 2387
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1f

    .line 2388
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2389
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2390
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2393
    :cond_1f
    return-void
.end method

.method public setTextSize(F)V
    .registers 3
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2331
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2332
    return-void
.end method

.method public setTextSize(IF)V
    .registers 6
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 2344
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2347
    .local v0, c:Landroid/content/Context;
    if-nez v0, :cond_16

    .line 2348
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2352
    .local v1, r:Landroid/content/res/Resources;
    :goto_a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 2354
    return-void

    .line 2350
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1       #r:Landroid/content/res/Resources;
    goto :goto_a
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .registers 6
    .parameter "method"

    .prologue
    const/4 v2, 0x0

    .line 1550
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v1, :cond_6

    .line 1581
    :goto_5
    return-void

    .line 1555
    :cond_6
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_19

    .line 1556
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_19

    .line 1557
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1561
    :cond_19
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 1564
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v1, :cond_31

    .line 1565
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v1, v1, 0xf

    const/4 v3, 0x2

    if-ne v1, v3, :cond_50

    .line 1566
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v1, v1, -0xff1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1572
    :cond_31
    :goto_31
    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    if-eqz v1, :cond_5c

    move-object v0, p1

    .line 1573
    check-cast v0, Landroid/text/method/TransformationMethod2;

    .line 1574
    .local v0, method2:Landroid/text/method/TransformationMethod2;
    iget-boolean v1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v1, :cond_5a

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-nez v1, :cond_5a

    const/4 v1, 0x1

    :goto_43
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    .line 1575
    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 1580
    .end local v0           #method2:Landroid/text/method/TransformationMethod2;
    :goto_4a
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1568
    :cond_50
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v1, v1, -0xff1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_31

    .restart local v0       #method2:Landroid/text/method/TransformationMethod2;
    :cond_5a
    move v1, v2

    .line 1574
    goto :goto_43

    .line 1577
    .end local v0           #method2:Landroid/text/method/TransformationMethod2;
    :cond_5c
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    goto :goto_4a
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .parameter "tf"

    .prologue
    .line 2406
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_1a

    .line 2407
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2409
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    .line 2410
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2411
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2412
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2415
    :cond_1a
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 9
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1330
    if-lez p2, :cond_36

    .line 1331
    if-nez p1, :cond_2d

    .line 1332
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1337
    :goto_a
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1339
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 1340
    .local v1, typefaceStyle:I
    :goto_13
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 1341
    .local v0, need:I
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1342
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_34

    const/high16 v2, -0x4180

    :goto_29
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1348
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_2c
    return-void

    .line 1334
    :cond_2d
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_a

    :cond_32
    move v1, v2

    .line 1339
    goto :goto_13

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_34
    move v2, v3

    .line 1342
    goto :goto_29

    .line 1344
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_36
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1345
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1346
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2c
.end method

.method public setWidth(I)V
    .registers 3
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2940
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2941
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2943
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2944
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2945
    return-void
.end method

.method public shouldIgnoreActionUpEvent()Z
    .registers 2

    .prologue
    .line 9077
    iget-boolean v0, p0, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    return v0
.end method

.method showSuggestions()V
    .registers 2

    .prologue
    .line 11084
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-nez v0, :cond_b

    .line 11085
    new-instance v0, Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/TextView$SuggestionsPopupWindow;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    .line 11087
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 11088
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->show()V

    .line 11089
    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .registers 14
    .parameter "buf"
    .parameter "what"
    .parameter "oldStart"
    .parameter "newStart"
    .parameter "oldEnd"
    .parameter "newEnd"

    .prologue
    const/4 v6, 0x1

    .line 8128
    const/4 v4, 0x0

    .line 8129
    .local v4, selChanged:Z
    const/4 v3, -0x1

    .local v3, newSelStart:I
    const/4 v2, -0x1

    .line 8131
    .local v2, newSelEnd:I
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 8133
    .local v1, ims:Landroid/widget/TextView$InputMethodState;
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_27

    .line 8134
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8135
    const/4 v4, 0x1

    .line 8136
    move v2, p4

    .line 8138
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_16

    .line 8139
    iput-boolean v6, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 8142
    :cond_16
    if-gez p3, :cond_1a

    if-ltz p4, :cond_27

    .line 8143
    :cond_1a
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 8144
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 8145
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 8149
    :cond_27
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_42

    .line 8150
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8151
    const/4 v4, 0x1

    .line 8152
    move v3, p4

    .line 8154
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_37

    .line 8155
    iput-boolean v6, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 8158
    :cond_37
    if-gez p3, :cond_3b

    if-ltz p4, :cond_42

    .line 8159
    :cond_3b
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 8160
    .local v0, end:I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 8164
    .end local v0           #end:I
    :cond_42
    if-eqz v4, :cond_5b

    .line 8165
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_5b

    .line 8166
    if-gez v3, :cond_52

    .line 8167
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 8169
    :cond_52
    if-gez v2, :cond_58

    .line 8170
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 8172
    :cond_58
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 8176
    :cond_5b
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_63

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-eqz v5, :cond_71

    .line 8177
    :cond_63
    if-eqz v1, :cond_69

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_ce

    .line 8178
    :cond_69
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8179
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8180
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 8186
    :cond_71
    :goto_71
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 8187
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8188
    if-eqz v1, :cond_83

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 8189
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 8192
    :cond_83
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_92

    .line 8193
    if-eqz v1, :cond_8f

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_d1

    .line 8194
    :cond_8f
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 8201
    :cond_92
    :goto_92
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_bc

    .line 8204
    if-eqz v1, :cond_bc

    iget-object v5, v1, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_bc

    .line 8205
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_d4

    .line 8206
    if-ltz p3, :cond_ae

    .line 8207
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_a8

    .line 8208
    iput p3, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 8210
    :cond_a8
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_ae

    .line 8211
    iput p5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 8214
    :cond_ae
    if-ltz p4, :cond_bc

    .line 8215
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_b6

    .line 8216
    iput p4, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 8218
    :cond_b6
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_bc

    .line 8219
    iput p6, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 8231
    :cond_bc
    :goto_bc
    iget-object v5, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v5, :cond_cd

    if-gez p4, :cond_cd

    instance-of v5, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz v5, :cond_cd

    .line 8232
    iget-object v5, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    check-cast p2, Landroid/text/style/SpellCheckSpan;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/widget/SpellChecker;->removeSpellCheckSpan(Landroid/text/style/SpellCheckSpan;)V

    .line 8234
    :cond_cd
    return-void

    .line 8182
    .restart local p2
    :cond_ce
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_71

    .line 8196
    :cond_d1
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    goto :goto_92

    .line 8226
    :cond_d4
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_bc
.end method

.method public stopSelectionActionMode()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 11263
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_44

    .line 11264
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_e

    .line 11266
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 11270
    :cond_e
    invoke-virtual {p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_38

    .line 11271
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 11275
    :goto_21
    invoke-direct {p0}, Landroid/widget/TextView;->hideSelectionModifierCursorController()V

    .line 11277
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 11278
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 11279
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {v1, p0, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->onEndSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 11282
    :cond_35
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    .line 11286
    :cond_37
    :goto_37
    return-void

    .line 11273
    :cond_38
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_21

    .line 11284
    :cond_44
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_37

    .line 11285
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    goto :goto_37
.end method

.method public stopTextSelectionMode()V
    .registers 1

    .prologue
    .line 11258
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 11259
    return-void
.end method

.method updateAfterEdit()V
    .registers 4

    .prologue
    .line 6339
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6340
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 6342
    .local v0, curs:I
    if-gez v0, :cond_11

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_14

    .line 6343
    :cond_11
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6346
    :cond_14
    if-ltz v0, :cond_1f

    .line 6347
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6348
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6349
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 6352
    :cond_1f
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 6353
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 4
    .parameter "who"

    .prologue
    .line 4758
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 4759
    .local v0, verified:Z
    if-nez v0, :cond_32

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_32

    .line 4760
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_2e

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_2e

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_2e

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_2e

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_2e

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_30

    :cond_2e
    const/4 v1, 0x1

    .line 4764
    :goto_2f
    return v1

    .line 4760
    :cond_30
    const/4 v1, 0x0

    goto :goto_2f

    :cond_32
    move v1, v0

    .line 4764
    goto :goto_2f
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 2
    .parameter "imm"

    .prologue
    .line 13382
    if-eqz p1, :cond_5

    .line 13383
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 13385
    :cond_5
    return-void
.end method
