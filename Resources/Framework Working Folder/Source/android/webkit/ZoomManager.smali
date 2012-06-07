.class Landroid/webkit/ZoomManager;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ZoomManager$1;,
        Landroid/webkit/ZoomManager$HTCMultiTouch;,
        Landroid/webkit/ZoomManager$HTCSmartZoom;,
        Landroid/webkit/ZoomManager$PostScale;,
        Landroid/webkit/ZoomManager$ScaleDetectorListener;,
        Landroid/webkit/ZoomManager$FocusMovementQueue;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final DEFAULT_MAX_ZOOM_SCALE_FACTOR:F = 4.0f

.field protected static final DEFAULT_MIN_ZOOM_SCALE_FACTOR:F = 0.25f

.field private static final ENABLE_DEBUG_FLAG:Z = false

.field static final LOGTAG:Ljava/lang/String; = "webviewZoom"

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static MINIMUM_SCALE_WITHOUT_JITTER:F = 0.0f

.field private static MIN_DOUBLE_TAP_SCALE_INCREMENT:F = 0.0f

.field private static final ZOOM_ANIMATION_LENGTH:I = 0xaf

.field private static mLastTrimMemory:D


# instance fields
.field isMTing:Z

.field private m720pScreen:Z

.field private mActualScale:F

.field private mAllowPanAndScale:Z

.field private mAnchorX:I

.field private mAnchorY:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCanvasBitmap:Landroid/graphics/Bitmap;

.field private mCustomizeMaxZoomScale:F

.field private mCustomizeMinZoomScale:F

.field private mDefaultMaxZoomScale:F

.field private mDefaultMinZoomScale:F

.field private mDefaultScale:F

.field private mDisplayDensity:F

.field private mDoubleTapZoomFactor:F

.field private mDrawCanvas:Landroid/graphics/Canvas;

.field private mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

.field mEndzoomRatio:F

.field private mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

.field public mFocusAnchorX:I

.field public mFocusAnchorY:I

.field private mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

.field public mFocusNodeScale:I

.field public mFocusNodeScaleBegin:I

.field private mFocusX:F

.field public mFocusXratio:F

.field private mFocusY:F

.field public mFocusYratio:F

.field private mHardwareAccelerated:Z

.field private mInHWAcceleratedZoom:Z

.field private mInZoomOverview:Z

.field private mInitialScale:F

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInitialZoomOverview:Z

.field private mInvActualScale:F

.field private mInvDefaultScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mInvZoomOverviewWidth:F

.field protected mMatrixValues:[F

.field private mMaxZoomScale:F

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field public mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

.field private mPinchDistance:D

.field private mPinchToZoomAnimating:Z

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mSmartZoom:Landroid/webkit/ZoomManager$HTCSmartZoom;

.field mStartZoomRatio:F

.field private mSupportMultiTouch:Z

.field private mTextWrapScale:F

.field private mTitleBarHeight:I

.field mTranslateOffset:Landroid/graphics/Point;

.field private final mWebView:Landroid/webkit/WebView;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J

.field private m_bIsBrowserApp:Z

.field private m_nZoomType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const v1, 0x3be56042

    .line 59
    const-class v0, Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_c
    sput-boolean v0, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    .line 175
    const/high16 v0, 0x3f00

    sput v0, Landroid/webkit/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    .line 187
    sput v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    .line 193
    sput v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    .line 612
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/webkit/ZoomManager;->mLastTrimMemory:D

    return-void

    .line 59
    :cond_1b
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public constructor <init>(Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;)V
    .registers 8
    .parameter "webView"
    .parameter "callbackProxy"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 268
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    .line 97
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 107
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 169
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    .line 214
    iput v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    .line 215
    iput v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    .line 261
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    .line 263
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    .line 264
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 266
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->m720pScreen:Z

    .line 1475
    iput-object v3, p0, Landroid/webkit/ZoomManager;->mSmartZoom:Landroid/webkit/ZoomManager$HTCSmartZoom;

    .line 2155
    iput v1, p0, Landroid/webkit/ZoomManager;->m_nZoomType:I

    .line 2223
    iput-object v3, p0, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    .line 2225
    iput-object v3, p0, Landroid/webkit/ZoomManager;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 2226
    iput-object v3, p0, Landroid/webkit/ZoomManager;->mDrawCanvas:Landroid/graphics/Canvas;

    .line 2227
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mMatrixValues:[F

    .line 2228
    iput v1, p0, Landroid/webkit/ZoomManager;->mTitleBarHeight:I

    .line 2229
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->m_bIsBrowserApp:Z

    .line 2261
    iput v2, p0, Landroid/webkit/ZoomManager;->mStartZoomRatio:F

    iput v2, p0, Landroid/webkit/ZoomManager;->mEndzoomRatio:F

    .line 2262
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->isMTing:Z

    .line 2276
    iput v1, p0, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    .line 2280
    iput v1, p0, Landroid/webkit/ZoomManager;->mFocusNodeScale:I

    .line 2281
    iput v4, p0, Landroid/webkit/ZoomManager;->mFocusXratio:F

    .line 2282
    iput v4, p0, Landroid/webkit/ZoomManager;->mFocusYratio:F

    .line 2283
    iput v1, p0, Landroid/webkit/ZoomManager;->mFocusAnchorX:I

    .line 2284
    iput v1, p0, Landroid/webkit/ZoomManager;->mFocusAnchorY:I

    .line 2287
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mTranslateOffset:Landroid/graphics/Point;

    .line 269
    iput-object p1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    .line 270
    iput-object p2, p0, Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 277
    const/16 v0, 0x3d4

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->setZoomOverviewWidth(I)V

    .line 279
    new-instance v0, Landroid/webkit/ZoomManager$FocusMovementQueue;

    invoke-direct {v0, p0}, Landroid/webkit/ZoomManager$FocusMovementQueue;-><init>(Landroid/webkit/ZoomManager;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

    .line 280
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/ZoomManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/webkit/ZoomManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    return p1
.end method

.method static synthetic access$1300()F
    .registers 1

    .prologue
    .line 59
    sget v0, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    return v0
.end method

.method static synthetic access$1402(Landroid/webkit/ZoomManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    return p1
.end method

.method static synthetic access$1500(Landroid/webkit/ZoomManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$1502(Landroid/webkit/ZoomManager;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    return p1
.end method

.method static synthetic access$1602(Landroid/webkit/ZoomManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    return p1
.end method

.method static synthetic access$1700(Landroid/webkit/ZoomManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$1702(Landroid/webkit/ZoomManager;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    return p1
.end method

.method static synthetic access$1800(Landroid/webkit/ZoomManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method static synthetic access$1802(Landroid/webkit/ZoomManager;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return p1
.end method

.method static synthetic access$1900(Landroid/webkit/ZoomManager;FZZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/ZoomManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->m_bIsBrowserApp:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/webkit/ZoomManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    return v0
.end method

.method static synthetic access$2202(Landroid/webkit/ZoomManager;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    return p1
.end method

.method static synthetic access$2300(Landroid/webkit/ZoomManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    return v0
.end method

.method static synthetic access$2400(Landroid/webkit/ZoomManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    return v0
.end method

.method static synthetic access$2500(Landroid/webkit/ZoomManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    return v0
.end method

.method static synthetic access$2502(Landroid/webkit/ZoomManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    return p1
.end method

.method static synthetic access$2600(Landroid/webkit/ZoomManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    return v0
.end method

.method static synthetic access$2602(Landroid/webkit/ZoomManager;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    return p1
.end method

.method static synthetic access$2700(Landroid/webkit/ZoomManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    return v0
.end method

.method static synthetic access$2800(Landroid/webkit/ZoomManager;)Landroid/webkit/CallbackProxy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/webkit/ZoomManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    return v0
.end method

.method static synthetic access$2902(Landroid/webkit/ZoomManager;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    return p1
.end method

.method static synthetic access$300(Landroid/webkit/ZoomManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    return v0
.end method

.method static synthetic access$3000()F
    .registers 1

    .prologue
    .line 59
    sget v0, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    return v0
.end method

.method static synthetic access$302(Landroid/webkit/ZoomManager;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    return p1
.end method

.method static synthetic access$3102(Landroid/webkit/ZoomManager;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-wide p1, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    return-wide p1
.end method

.method static synthetic access$3202(Landroid/webkit/ZoomManager;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    return p1
.end method

.method static synthetic access$3302(Landroid/webkit/ZoomManager;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    return p1
.end method

.method static synthetic access$402(Landroid/webkit/ZoomManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->m_nZoomType:I

    return p1
.end method

.method static synthetic access$502(Landroid/webkit/ZoomManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    return p1
.end method

.method static synthetic access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

    return-object v0
.end method

.method static synthetic access$800(Landroid/webkit/ZoomManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/webkit/ZoomManager;->mFocusX:F

    return v0
.end method

.method static synthetic access$802(Landroid/webkit/ZoomManager;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->mFocusX:F

    return p1
.end method

.method static synthetic access$900(Landroid/webkit/ZoomManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/webkit/ZoomManager;->mFocusY:F

    return v0
.end method

.method static synthetic access$902(Landroid/webkit/ZoomManager;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/webkit/ZoomManager;->mFocusY:F

    return p1
.end method

.method public static final exceedsMinScaleIncrement(FF)Z
    .registers 4
    .parameter "scaleA"
    .parameter "scaleB"

    .prologue
    .line 442
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private getCurrentZoomControl()Landroid/webkit/ZoomControlBase;
    .registers 3

    .prologue
    .line 1390
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1391
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1392
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    if-nez v0, :cond_39

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDisplayZoomControls()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1394
    new-instance v0, Landroid/webkit/ZoomControlEmbedded;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1}, Landroid/webkit/ZoomControlEmbedded;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    .line 1396
    :cond_39
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    .line 1404
    :goto_3b
    return-object v0

    .line 1398
    :cond_3c
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-nez v0, :cond_49

    .line 1399
    new-instance v0, Landroid/webkit/ZoomControlExternal;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/ZoomControlExternal;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    .line 1401
    :cond_49
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    goto :goto_3b

    .line 1404
    :cond_4c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private setDefaultZoomScale(F)V
    .registers 8
    .parameter "defaultScale"

    .prologue
    const/4 v2, 0x1

    const/high16 v5, -0x4080

    const-wide/16 v3, 0x0

    .line 332
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 333
    .local v0, originalDefault:F
    iput p1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 334
    const/high16 v1, 0x3f80

    div-float/2addr v1, p1

    iput v1, p0, Landroid/webkit/ZoomManager;->mInvDefaultScale:F

    .line 335
    const/high16 v1, 0x4080

    mul-float/2addr v1, p1

    iput v1, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    .line 336
    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->m720pScreen:Z

    if-ne v1, v2, :cond_20

    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->m_bIsBrowserApp:Z

    if-ne v1, v2, :cond_20

    .line 337
    const/high16 v1, 0x4020

    mul-float/2addr v1, p1

    iput v1, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    .line 338
    :cond_20
    const/high16 v1, 0x3e80

    mul-float/2addr v1, p1

    iput v1, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    .line 339
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6e

    iget v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6e

    .line 341
    div-float v1, p1, v0

    iget v2, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 345
    :goto_38
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_73

    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_73

    .line 347
    div-float v1, p1, v0

    iget v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 351
    :goto_4b
    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v2, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    invoke-static {v1, v2}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    if-nez v1, :cond_59

    .line 352
    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 355
    :cond_59
    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_63

    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 356
    :cond_63
    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_6d

    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 358
    :cond_6d
    return-void

    .line 343
    :cond_6e
    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_38

    .line 349
    :cond_73
    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_4b
.end method

.method private setZoomOverviewWidth(I)V
    .registers 4
    .parameter "width"

    .prologue
    .line 813
    if-nez p1, :cond_d

    .line 814
    const/16 v0, 0x3d4

    iput v0, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    .line 818
    :goto_6
    const/high16 v0, 0x3f80

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvZoomOverviewWidth:F

    .line 819
    return-void

    .line 816
    :cond_d
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_6
.end method

.method private setZoomScale(FZZ)V
    .registers 22
    .parameter "scale"
    .parameter "reflowText"
    .parameter "force"

    .prologue
    .line 615
    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v14, p1, v14

    if-gez v14, :cond_115

    const/4 v4, 0x1

    .line 616
    .local v4, isScaleLessThanMinZoom:Z
    :goto_9
    invoke-virtual/range {p0 .. p1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result p1

    .line 619
    if-eqz v4, :cond_118

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_118

    .line 620
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 626
    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v14

    if-eqz v14, :cond_12d

    .line 627
    if-eqz p2, :cond_2e

    .line 628
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 636
    :cond_2e
    :goto_2e
    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v14, p1, v14

    if-nez v14, :cond_38

    if-eqz p3, :cond_114

    .line 639
    :cond_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-double v2, v14

    .line 640
    .local v2, currentTime:D
    sget-wide v14, Landroid/webkit/ZoomManager;->mLastTrimMemory:D

    sub-double v14, v2, v14

    const-wide v16, 0x40c3880000000000L

    cmpl-double v14, v14, v16

    if-lez v14, :cond_55

    .line 641
    sput-wide v2, Landroid/webkit/ZoomManager;->mLastTrimMemory:D

    .line 643
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    const/16 v14, 0x14

    invoke-static {v14}, Landroid/webkit/WebView;->nativeOnTrimMemory(I)V

    .line 646
    :cond_55
    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 647
    .local v6, oldScale:F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 649
    .local v5, oldInvScale:F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v14, p1, v14

    if-eqz v14, :cond_78

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    if-nez v14, :cond_78

    .line 650
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    move/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 653
    :cond_78
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 654
    const/high16 v14, 0x3f80

    div-float v14, v14, p1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 656
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->drawHistory()Z

    move-result v14

    if-nez v14, :cond_10b

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    if-nez v14, :cond_10b

    .line 664
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getScrollX()I

    move-result v7

    .line 665
    .local v7, oldX:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    .line 666
    .local v8, oldY:I
    mul-float v9, p1, v5

    .line 667
    .local v9, ratio:F
    int-to-float v14, v7

    mul-float/2addr v14, v9

    const/high16 v15, 0x3f80

    sub-float v15, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float v12, v14, v15

    .line 668
    .local v12, sx:F
    int-to-float v14, v8

    mul-float/2addr v14, v9

    const/high16 v15, 0x3f80

    sub-float v15, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    add-float v13, v14, v15

    .line 672
    .local v13, sy:F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v14, v14, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v14}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v10

    .line 677
    .local v10, scrollX:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v11

    .line 678
    .local v11, scrollY:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14, v10, v11}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    move-result v14

    if-nez v14, :cond_10b

    .line 682
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 688
    .end local v7           #oldX:I
    .end local v8           #oldY:I
    .end local v9           #ratio:F
    .end local v10           #scrollX:I
    .end local v11           #scrollY:I
    .end local v12           #sx:F
    .end local v13           #sy:F
    :cond_10b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    .line 690
    .end local v2           #currentTime:D
    .end local v5           #oldInvScale:F
    .end local v6           #oldScale:F
    :cond_114
    return-void

    .line 615
    .end local v4           #isScaleLessThanMinZoom:Z
    :cond_115
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 622
    .restart local v4       #isScaleLessThanMinZoom:Z
    :cond_118
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v14

    move/from16 v0, p1

    invoke-static {v0, v14}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v14

    if-nez v14, :cond_12b

    const/4 v14, 0x1

    :goto_125
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    goto/16 :goto_20

    :cond_12b
    const/4 v14, 0x0

    goto :goto_125

    .line 632
    :cond_12d
    if-eqz p2, :cond_2e

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v14

    invoke-virtual {v14}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v14

    if-nez v14, :cond_2e

    .line 633
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_2e
.end method

.method private setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z
    .registers 7
    .parameter "drawData"
    .parameter "viewWidth"

    .prologue
    .line 1284
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1285
    .local v1, settings:Landroid/webkit/WebSettings;
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    .line 1286
    .local v0, newZoomOverviewWidth:I
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1287
    iget-object v2, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_1e

    .line 1290
    sget v2, Landroid/webkit/WebView;->sMaxViewportWidth:I

    iget-object v3, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1297
    :cond_1e
    :goto_1e
    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    if-eq v0, v2, :cond_30

    .line 1298
    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->setZoomOverviewWidth(I)V

    .line 1299
    const/4 v2, 0x1

    .line 1301
    :goto_26
    return v2

    .line 1295
    :cond_27
    int-to-float v2, p2

    iget v3, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1e

    .line 1301
    :cond_30
    const/4 v2, 0x0

    goto :goto_26
.end method

.method private zoom(F)Z
    .registers 6
    .parameter "zoomMultiplier"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f00

    .line 467
    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 469
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 471
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 472
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 473
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 474
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 475
    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v2

    if-nez v2, :cond_52

    const/4 v0, 0x1

    :cond_52
    invoke-virtual {p0, v1, v0}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    move-result v0

    return v0
.end method

.method private zoomToOverview()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 831
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    .line 832
    .local v0, scrollY:I
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v3

    if-ge v0, v3, :cond_1b

    .line 833
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    .line 836
    :cond_1b
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v3

    if-ne v1, v3, :cond_29

    .line 837
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    .line 842
    :goto_28
    return-void

    .line 840
    :cond_29
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_3d

    :goto_39
    invoke-virtual {p0, v3, v1}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    goto :goto_28

    :cond_3d
    move v1, v2

    goto :goto_39
.end method

.method private zoomToReadingLevelOrMore()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 845
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iget v6, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sget v7, Landroid/webkit/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    add-float/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 848
    .local v2, zoomScale:F
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v6, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iget v7, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    iget v8, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {v3, v6, v7, v8}, Landroid/webkit/WebView;->nativeGetBlockLeftEdge(IIF)I

    move-result v0

    .line 850
    .local v0, left:I
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v3

    if-eq v5, v3, :cond_41

    .line 852
    const/4 v3, -0x1

    if-eq v0, v3, :cond_41

    .line 854
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x5

    if-ge v0, v3, :cond_4b

    move v3, v4

    :goto_2a
    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    sub-int v1, v3, v6

    .line 858
    .local v1, viewLeft:I
    if-lez v1, :cond_4e

    .line 859
    int-to-float v3, v1

    mul-float/2addr v3, v2

    iget v6, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float v6, v2, v6

    div-float/2addr v3, v6

    iput v3, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 866
    .end local v1           #viewLeft:I
    :cond_41
    :goto_41
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v3

    if-ne v5, v3, :cond_57

    .line 867
    invoke-virtual {p0, v2, v5}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    .line 872
    :goto_4a
    return-void

    .line 854
    :cond_4b
    add-int/lit8 v3, v0, -0x5

    goto :goto_2a

    .line 861
    .restart local v1       #viewLeft:I
    :cond_4e
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v1, v4}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 862
    const/4 v3, 0x0

    iput v3, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    goto :goto_41

    .line 870
    .end local v1           #viewLeft:I
    :cond_57
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v3

    if-nez v3, :cond_64

    move v4, v5

    :cond_64
    invoke-virtual {p0, v2, v4}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    goto :goto_4a
.end method


# virtual methods
.method public RecoveryDefaultZoomLowerBound()V
    .registers 4

    .prologue
    const/high16 v2, -0x4080

    .line 227
    const-string/jumbo v0, "webviewZoom"

    const-string v1, "[ZoomManager.RecoveryDefaultZoomLowerBound] >>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_11

    .line 233
    :goto_10
    return-void

    .line 231
    :cond_11
    iput v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    .line 232
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_10
.end method

.method public RecoveryDefaultZoomUpperBound()V
    .registers 4

    .prologue
    const/high16 v2, -0x4080

    .line 218
    const-string/jumbo v0, "webviewZoom"

    const-string v1, "[ZoomManager.RecoveryDefaultZoomUpperBound] >>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_11

    .line 224
    :goto_10
    return-void

    .line 222
    :cond_11
    iput v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    .line 223
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_10
.end method

.method public animateZoom(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 529
    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 530
    iget v7, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_13

    .line 531
    const-string/jumbo v7, "webviewZoom"

    const-string v8, "A WebView is attempting to perform a fixed length zoom animation when no zoom is in progress"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_12
    :goto_12
    return-void

    .line 537
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    sub-long/2addr v7, v9

    long-to-int v0, v7

    .line 538
    .local v0, interval:I
    const/16 v7, 0xaf

    if-ge v0, v7, :cond_c1

    .line 539
    int-to-float v7, v0

    const/high16 v8, 0x432f

    div-float v1, v7, v8

    .line 540
    .local v1, ratio:F
    const/high16 v7, 0x3f80

    iget v8, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    iget v9, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    div-float v6, v7, v8

    .line 542
    .local v6, zoomScale:F
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->invalidate()V

    .line 551
    .end local v1           #ratio:F
    :goto_36
    iget v7, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    mul-float v2, v6, v7

    .line 552
    .local v2, scale:F
    iget v7, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v2

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 553
    .local v4, tx:I
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v4, v7, v8}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v7

    neg-int v7, v7

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollX()I

    move-result v8

    add-int v4, v7, v8

    .line 555
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v3

    .line 556
    .local v3, titleHeight:I
    iget v7, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    add-float/2addr v7, v8

    int-to-float v8, v3

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    int-to-float v9, v3

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 559
    .local v5, ty:I
    if-gt v5, v3, :cond_cc

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_85
    neg-int v7, v7

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    add-int v5, v7, v8

    .line 563
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mTranslateOffset:Landroid/graphics/Point;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 564
    iget-boolean v7, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v7, :cond_e6

    .line 565
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollX()I

    move-result v8

    sub-int/2addr v8, v4

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getScrollY()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    .line 568
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 569
    invoke-virtual {p0, v6, v11}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 571
    iget v7, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_12

    .line 573
    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 578
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7, v11}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto/16 :goto_12

    .line 544
    .end local v2           #scale:F
    .end local v3           #titleHeight:I
    .end local v4           #tx:I
    .end local v5           #ty:I
    .end local v6           #zoomScale:F
    :cond_c1
    iget v6, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 546
    .restart local v6       #zoomScale:F
    iput v12, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 547
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->onFixedLengthZoomAnimationEnd()V

    goto/16 :goto_36

    .line 559
    .restart local v2       #scale:F
    .restart local v3       #titleHeight:I
    .restart local v4       #tx:I
    .restart local v5       #ty:I
    :cond_cc
    sub-int v7, v5, v3

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v8

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v7

    add-int/2addr v7, v3

    goto :goto_85

    .line 581
    :cond_e6
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 582
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_12
.end method

.method public final canZoomIn()Z
    .registers 3

    .prologue
    .line 450
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final canZoomOut()Z
    .registers 3

    .prologue
    .line 454
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final clearDocumentAnchor()V
    .registers 2

    .prologue
    .line 412
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    iput v0, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 413
    return-void
.end method

.method public final computeScaleWithLimits(F)F
    .registers 3
    .parameter "scale"

    .prologue
    .line 425
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    .line 426
    iget p1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 430
    :cond_8
    :goto_8
    return p1

    .line 427
    :cond_9
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    .line 428
    iget p1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_8
.end method

.method public disableMultiTouch()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2255
    iput-object v0, p0, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    .line 2256
    iput-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 2257
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    .line 2258
    return-void
.end method

.method public dismissZoomPicker()V
    .registers 2

    .prologue
    .line 1415
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1416
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_9

    .line 1417
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->hide()V

    .line 1419
    :cond_9
    return-void
.end method

.method public enableHTCSoftwareZoomMethod(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 2159
    if-eqz p1, :cond_6

    const/4 v0, 0x2

    :goto_3
    iput v0, p0, Landroid/webkit/ZoomManager;->m_nZoomType:I

    .line 2170
    return-void

    .line 2159
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public enableHTCZoomMethod(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 2174
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Landroid/webkit/ZoomManager;->m_nZoomType:I

    .line 2185
    return-void

    .line 2174
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public enableMultiTouch()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2237
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    if-nez v0, :cond_39

    .line 2238
    new-instance v0, Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1}, Landroid/webkit/ZoomManager$HTCMultiTouch;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    .line 2240
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    if-eqz v0, :cond_39

    .line 2241
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    .line 2242
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_3a

    .line 2243
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/webkit/ZoomManager$ScaleDetectorListener;

    invoke-direct {v2, p0, v3}, Landroid/webkit/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/ZoomManager$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 2248
    :cond_2f
    :goto_2f
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseFixedViewport(Z)V

    .line 2251
    :cond_39
    return-void

    .line 2244
    :cond_3a
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_2f

    .line 2245
    iput-object v3, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    goto :goto_2f
.end method

.method public enableSmartZoom()V
    .registers 3

    .prologue
    .line 1477
    new-instance v0, Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1}, Landroid/webkit/ZoomManager$HTCSmartZoom;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mSmartZoom:Landroid/webkit/ZoomManager$HTCSmartZoom;

    .line 1479
    invoke-static {}, Landroid/webkit/WebView;->getDefaultTextWidth()I

    move-result v0

    if-nez v0, :cond_14

    .line 1480
    const/16 v0, 0xf0

    invoke-static {v0}, Landroid/webkit/WebView;->setDefaultTextWidth(I)V

    .line 1482
    :cond_14
    return-void
.end method

.method public final getDefaultMaxZoomScale()F
    .registers 2

    .prologue
    .line 396
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    return v0
.end method

.method public final getDefaultMinZoomScale()F
    .registers 2

    .prologue
    .line 400
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    return v0
.end method

.method public final getDefaultScale()F
    .registers 2

    .prologue
    .line 381
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    return v0
.end method

.method public final getDocumentAnchorX()I
    .registers 2

    .prologue
    .line 404
    iget v0, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    return v0
.end method

.method public final getDocumentAnchorY()I
    .registers 2

    .prologue
    .line 408
    iget v0, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    return v0
.end method

.method public getExternalZoomPicker()Landroid/view/View;
    .registers 3

    .prologue
    .line 1446
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1447
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_11

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-ne v0, v1, :cond_11

    .line 1448
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    invoke-virtual {v1}, Landroid/webkit/ZoomControlExternal;->getControls()Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    move-result-object v1

    .line 1450
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public final getInvDefaultScale()F
    .registers 2

    .prologue
    .line 392
    iget v0, p0, Landroid/webkit/ZoomManager;->mInvDefaultScale:F

    return v0
.end method

.method public final getInvScale()F
    .registers 2

    .prologue
    .line 365
    iget v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    return v0
.end method

.method getIsMTing()Z
    .registers 2

    .prologue
    .line 2268
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->isMTing:Z

    return v0
.end method

.method public final getMaxZoomScale()F
    .registers 2

    .prologue
    .line 373
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    return v0
.end method

.method public final getMinZoomScale()F
    .registers 2

    .prologue
    .line 377
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    return v0
.end method

.method public getMultiTouchGestureDetector()Landroid/view/ScaleGestureDetector;
    .registers 2

    .prologue
    .line 924
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public final getReadingLevelScale()F
    .registers 3

    .prologue
    .line 388
    iget v0, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getScale()F
    .registers 2

    .prologue
    .line 361
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    return v0
.end method

.method getSmartZoomInst()Landroid/webkit/ZoomManager$HTCSmartZoom;
    .registers 2

    .prologue
    .line 1485
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mSmartZoom:Landroid/webkit/ZoomManager$HTCSmartZoom;

    return-object v0
.end method

.method public final getTextWrapScale()F
    .registers 2

    .prologue
    .line 369
    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method getZoomOverviewScale()F
    .registers 3

    .prologue
    .line 822
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/ZoomManager;->mInvZoomOverviewWidth:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getZoomScale()F
    .registers 2

    .prologue
    .line 2271
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getZoomType()I
    .registers 2

    .prologue
    .line 2201
    iget v0, p0, Landroid/webkit/ZoomManager;->m_nZoomType:I

    return v0
.end method

.method gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;
    .registers 2

    .prologue
    .line 2232
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    return-object v0
.end method

.method public handleDoubleTap(FF)V
    .registers 14
    .parameter "lastTouchX"
    .parameter "lastTouchY"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 716
    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 717
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 718
    .local v4, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isDoubleTapEnabled()Z

    move-result v6

    if-nez v6, :cond_14

    .line 810
    :goto_13
    return-void

    .line 722
    :cond_14
    invoke-virtual {p0, p1, p2}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 723
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    float-to-int v7, p1

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollX()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 724
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    float-to-int v7, p2

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 725
    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 728
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v7, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iget v8, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebView;->nativeGetHitTestNodeSafely(II)I

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    .line 731
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->m_bIsBrowserApp:Z

    if-nez v6, :cond_aa

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v6

    if-ne v5, v6, :cond_aa

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    if-nez v6, :cond_aa

    .line 734
    iget v6, p0, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    iput v6, p0, Landroid/webkit/ZoomManager;->mFocusNodeScale:I

    .line 735
    iget v6, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iput v6, p0, Landroid/webkit/ZoomManager;->mFocusAnchorX:I

    .line 736
    iget v6, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    iput v6, p0, Landroid/webkit/ZoomManager;->mFocusAnchorY:I

    .line 737
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v6

    iget v7, p0, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    invoke-virtual {v6, v7, v5, v0}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v3

    .line 739
    .local v3, rect:Landroid/graphics/Rect;
    if-eqz v3, :cond_c6

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c6

    .line 740
    iget v6, p0, Landroid/webkit/ZoomManager;->mFocusAnchorX:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Landroid/webkit/ZoomManager;->mFocusXratio:F

    .line 741
    iget v6, p0, Landroid/webkit/ZoomManager;->mFocusAnchorY:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Landroid/webkit/ZoomManager;->mFocusYratio:F

    .line 746
    :goto_96
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v7, p0, Landroid/webkit/ZoomManager;->mFocusAnchorX:I

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mFocusAnchorX:I

    .line 747
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v7, p0, Landroid/webkit/ZoomManager;->mFocusAnchorY:I

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mFocusAnchorY:I

    .line 752
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_aa
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 758
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v7, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iget v8, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebView;->getPluginBounds(II)Landroid/graphics/Rect;

    move-result-object v2

    .line 759
    .local v2, pluginBounds:Landroid/graphics/Rect;
    if-eqz v2, :cond_d2

    .line 760
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v2}, Landroid/webkit/WebView;->isRectFitOnScreen(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 761
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToOverview()V

    goto/16 :goto_13

    .line 743
    .end local v2           #pluginBounds:Landroid/graphics/Rect;
    .restart local v3       #rect:Landroid/graphics/Rect;
    :cond_c6
    iput v9, p0, Landroid/webkit/ZoomManager;->mFocusXratio:F

    .line 744
    iput v9, p0, Landroid/webkit/ZoomManager;->mFocusYratio:F

    goto :goto_96

    .line 763
    .end local v3           #rect:Landroid/graphics/Rect;
    .restart local v2       #pluginBounds:Landroid/graphics/Rect;
    :cond_cb
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v2}, Landroid/webkit/WebView;->centerFitRect(Landroid/graphics/Rect;)V

    goto/16 :goto_13

    .line 769
    :cond_d2
    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_108

    .line 770
    iget v6, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 774
    .local v1, newTextWrapScale:F
    :goto_e2
    iget v6, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iget v7, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v7}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v6

    if-nez v6, :cond_ed

    move v0, v5

    .line 775
    .local v0, firstTimeReflow:Z
    :cond_ed
    if-nez v0, :cond_f3

    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v6, :cond_f5

    .line 778
    :cond_f3
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 781
    :cond_f5
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v6

    if-ne v5, v6, :cond_116

    .line 782
    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v5, :cond_10b

    .line 783
    iget v5, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iput v5, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 784
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToReadingLevelOrMore()V

    goto/16 :goto_13

    .line 772
    .end local v0           #firstTimeReflow:Z
    .end local v1           #newTextWrapScale:F
    :cond_108
    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .restart local v1       #newTextWrapScale:F
    goto :goto_e2

    .line 787
    .restart local v0       #firstTimeReflow:Z
    :cond_10b
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v5

    iput v5, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 788
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToOverview()V

    goto/16 :goto_13

    .line 793
    :cond_116
    invoke-virtual {v4}, Landroid/webkit/WebSettings;->isNarrowColumnLayout()Z

    move-result v6

    if-eqz v6, :cond_131

    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v1}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v6

    if-eqz v6, :cond_131

    if-nez v0, :cond_131

    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-nez v6, :cond_131

    .line 798
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 799
    invoke-virtual {p0, v5}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    goto/16 :goto_13

    .line 800
    :cond_131
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-nez v6, :cond_157

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v6

    if-eqz v6, :cond_157

    .line 802
    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_152

    .line 803
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 804
    invoke-virtual {p0, v5}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    .line 806
    :cond_152
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToOverview()V

    goto/16 :goto_13

    .line 808
    :cond_157
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToReadingLevelOrMore()V

    goto/16 :goto_13
.end method

.method public init(F)V
    .registers 9
    .parameter "density"

    .prologue
    const/16 v6, 0x500

    const/16 v5, 0x2d0

    .line 290
    sget-boolean v3, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v3, :cond_13

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_13

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 292
    :cond_13
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/webkit/ZoomManager;->m720pScreen:Z

    .line 293
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 294
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 295
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 296
    .local v2, nScreenWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 297
    .local v1, nScreenHeight:I
    if-ne v2, v5, :cond_41

    if-eq v1, v6, :cond_45

    :cond_41
    if-ne v2, v6, :cond_48

    if-ne v1, v5, :cond_48

    .line 298
    :cond_45
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/ZoomManager;->m720pScreen:Z

    .line 301
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #nScreenHeight:I
    .end local v2           #nScreenWidth:I
    :cond_48
    iput p1, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    .line 302
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->setDefaultZoomScale(F)V

    .line 303
    iput p1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 304
    const/high16 v3, 0x3f80

    div-float/2addr v3, p1

    iput v3, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 305
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 306
    return-void
.end method

.method public invokeZoomPicker()V
    .registers 2

    .prologue
    .line 1408
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1409
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_9

    .line 1410
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->show()V

    .line 1412
    :cond_9
    return-void
.end method

.method public isDoubleTapEnabled()Z
    .registers 3

    .prologue
    .line 693
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 695
    .local v0, settings:Landroid/webkit/WebSettings;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isPureZoomMode()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public isFixedLengthAnimationInProgress()Z
    .registers 3

    .prologue
    .line 591
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isHtcZoomingEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2191
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_7

    .line 2197
    :cond_6
    :goto_6
    return v1

    .line 2194
    :cond_7
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->fnIsHtcApplication()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2197
    iget v2, p0, Landroid/webkit/ZoomManager;->m_nZoomType:I

    if-ne v2, v0, :cond_15

    :goto_13
    move v1, v0

    goto :goto_6

    :cond_15
    move v0, v1

    goto :goto_13
.end method

.method public isInZoomOverview()Z
    .registers 2

    .prologue
    .line 826
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    return v0
.end method

.method public isPreventingWebkitUpdates()Z
    .registers 2

    .prologue
    .line 920
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v0

    return v0
.end method

.method public final isScaleOverLimits(F)Z
    .registers 3
    .parameter "scale"

    .prologue
    .line 434
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_c

    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isZoomAnimating()Z
    .registers 2

    .prologue
    .line 587
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isZoomPickerVisible()Z
    .registers 3

    .prologue
    .line 1422
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1423
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->isVisible()Z

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public final isZoomScaleFixed()Z
    .registers 3

    .prologue
    .line 438
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public keepZoomPickerVisible()V
    .registers 3

    .prologue
    .line 1439
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1440
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_d

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-ne v0, v1, :cond_d

    .line 1441
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->show()V

    .line 1443
    :cond_d
    return-void
.end method

.method public onFirstLayout(Landroid/webkit/WebViewCore$DrawData;)V
    .registers 12
    .parameter "drawData"

    .prologue
    const/high16 v9, -0x4080

    const/4 v8, 0x0

    .line 1313
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_f

    if-nez p1, :cond_f

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1314
    :cond_f
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1d

    iget-object v6, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    if-nez v6, :cond_1d

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1315
    :cond_1d
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_2f

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    if-nez v6, :cond_2f

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1317
    :cond_2f
    iget-object v5, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 1318
    .local v5, viewState:Landroid/webkit/WebViewCore$ViewState;
    iget-object v4, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 1319
    .local v4, viewSize:Landroid/graphics/Point;
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    .line 1320
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    invoke-direct {p0, p1, v6}, Landroid/webkit/ZoomManager;->setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z

    .line 1321
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    .line 1322
    .local v0, overviewScale:F
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 1323
    .local v3, settings:Landroid/webkit/WebSettings;
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v6, :cond_57

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_83

    .line 1324
    :cond_57
    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_c6

    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :goto_63
    iput v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1326
    iget v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v7, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1328
    iget v6, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_79

    iget v6, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1329
    :cond_79
    iget v6, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_83

    iget v6, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1333
    :cond_83
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->drawHistory()Z

    move-result v6

    if-nez v6, :cond_c5

    .line 1335
    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_c8

    .line 1336
    iget v2, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    .line 1355
    .local v2, scale:F
    :cond_93
    :goto_93
    const/4 v1, 0x0

    .line 1356
    .local v1, reflowText:Z
    iget-boolean v6, v5, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_b0

    .line 1357
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 1359
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1360
    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1362
    :cond_aa
    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v2}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    .line 1364
    :cond_b0
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v6

    if-eqz v6, :cond_112

    invoke-static {v2, v0}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v6

    if-nez v6, :cond_112

    const/4 v6, 0x1

    :goto_bd
    iput-boolean v6, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1366
    invoke-virtual {p0, v2, v1}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 1369
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->updateZoomPicker()V

    .line 1371
    .end local v1           #reflowText:Z
    .end local v2           #scale:F
    :cond_c5
    return-void

    :cond_c6
    move v6, v0

    .line 1324
    goto :goto_63

    .line 1337
    :cond_c8
    iget-boolean v6, v5, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_d2

    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_ec

    .line 1338
    :cond_d2
    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_e5

    iget v2, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 1340
    .restart local v2       #scale:F
    :goto_da
    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_e7

    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    :goto_e2
    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_93

    .end local v2           #scale:F
    :cond_e5
    move v2, v0

    .line 1338
    goto :goto_da

    .line 1340
    .restart local v2       #scale:F
    :cond_e7
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    goto :goto_e2

    .line 1343
    .end local v2           #scale:F
    :cond_ec
    move v2, v0

    .line 1344
    .restart local v2       #scale:F
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_f9

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v6

    if-nez v6, :cond_ff

    .line 1346
    :cond_f9
    iget v6, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1348
    :cond_ff
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->isNarrowColumnLayout()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 1352
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_93

    .line 1364
    .restart local v1       #reflowText:Z
    :cond_112
    const/4 v6, 0x0

    goto :goto_bd
.end method

.method public onNewPicture(Landroid/webkit/WebViewCore$DrawData;)V
    .registers 14
    .parameter "drawData"

    .prologue
    const/high16 v11, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1225
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    .line 1226
    .local v5, viewWidth:I
    invoke-direct {p0, p1, v5}, Landroid/webkit/ZoomManager;->setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z

    move-result v6

    .line 1227
    .local v6, zoomOverviewWidthChanged:Z
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v1

    .line 1228
    .local v1, newZoomOverviewScale:F
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 1229
    .local v4, settings:Landroid/webkit/WebSettings;
    if-eqz v6, :cond_46

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->isNarrowColumnLayout()Z

    move-result v9

    if-eqz v9, :cond_46

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v9

    if-eqz v9, :cond_46

    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_2e

    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_46

    .line 1234
    :cond_2e
    iget v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v9, v10}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_40

    iget v9, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 1236
    :cond_40
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1242
    :cond_46
    :goto_46
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v9, :cond_50

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v9

    if-eqz v9, :cond_70

    .line 1243
    :cond_50
    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1244
    iget v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1246
    iget v9, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_66

    iget v9, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1247
    :cond_66
    iget v9, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_70

    iget v9, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v9, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1252
    :cond_70
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v2

    .line 1254
    .local v2, scaleHasDiff:Z
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float v9, v1, v9

    sget v10, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_d4

    move v3, v7

    .line 1258
    .local v3, scaleLessThanOverview:Z
    :goto_81
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_d6

    iget v9, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_d6

    move v0, v7

    .line 1260
    .local v0, mobileSiteInOverview:Z
    :goto_8e
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->drawHistory()Z

    move-result v9

    if-nez v9, :cond_da

    if-eqz v3, :cond_9e

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v9

    if-nez v9, :cond_a8

    :cond_9e
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_a4

    if-eqz v0, :cond_da

    :cond_a4
    if-eqz v2, :cond_da

    if-eqz v6, :cond_da

    .line 1264
    :cond_a8
    iput-boolean v8, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1265
    iget v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0, v9}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v9

    if-nez v9, :cond_d8

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v9

    if-nez v9, :cond_d8

    :goto_be
    invoke-virtual {p0, v1, v7}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 1270
    :goto_c1
    iget-boolean v7, p1, Landroid/webkit/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v7, :cond_cf

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 1273
    iget-boolean v7, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    iput-boolean v7, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1275
    :cond_cf
    return-void

    .line 1238
    .end local v0           #mobileSiteInOverview:Z
    .end local v2           #scaleHasDiff:Z
    .end local v3           #scaleLessThanOverview:Z
    :cond_d0
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_46

    .restart local v2       #scaleHasDiff:Z
    :cond_d4
    move v3, v8

    .line 1254
    goto :goto_81

    .restart local v3       #scaleLessThanOverview:Z
    :cond_d6
    move v0, v8

    .line 1258
    goto :goto_8e

    .restart local v0       #mobileSiteInOverview:Z
    :cond_d8
    move v7, v8

    .line 1265
    goto :goto_be

    .line 1268
    :cond_da
    if-nez v2, :cond_df

    :goto_dc
    iput-boolean v7, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    goto :goto_c1

    :cond_df
    move v7, v8

    goto :goto_dc
.end method

.method onPageFinished(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 1463
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1464
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 13
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/high16 v6, -0x4080

    .line 1118
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_33

    .line 1119
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    .line 1120
    .local v0, visibleTitleHeight:I
    iput v7, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 1121
    int-to-float v1, v0

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 1122
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 1123
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 1127
    .end local v0           #visibleTitleHeight:I
    :cond_33
    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-nez v1, :cond_7d

    .line 1132
    const/high16 v4, 0x3f80

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->drawHistory()Z

    move-result v1

    if-eqz v1, :cond_9e

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHistoryPictureWidth()I

    move-result v1

    :goto_4e
    int-to-float v1, v1

    div-float v1, v5, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1136
    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_69

    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_69

    .line 1137
    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1140
    :cond_69
    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_73

    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1141
    :cond_73
    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_7d

    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1145
    :cond_7d
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 1152
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Landroid/webkit/ZoomManager$PostScale;

    if-eq p1, p3, :cond_a1

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v1

    if-nez v1, :cond_a1

    move v1, v2

    :goto_93
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-ge p1, p3, :cond_a3

    :goto_97
    invoke-direct {v5, p0, v1, v6, v2}, Landroid/webkit/ZoomManager$PostScale;-><init>(Landroid/webkit/ZoomManager;ZZZ)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 1154
    return-void

    .line 1132
    :cond_9e
    iget v1, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_4e

    :cond_a1
    move v1, v3

    .line 1152
    goto :goto_93

    :cond_a3
    move v2, v3

    goto :goto_97
.end method

.method public refreshZoomScale(Z)V
    .registers 4
    .parameter "reflowText"

    .prologue
    .line 604
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 605
    return-void
.end method

.method public restoreZoomState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "b"

    .prologue
    const/high16 v1, 0x3f80

    .line 1383
    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 1384
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    div-float v0, v1, v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 1385
    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1386
    const-string/jumbo v0, "overview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 1387
    return-void
.end method

.method public saveZoomState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "b"

    .prologue
    .line 1374
    const-string/jumbo v0, "scale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1375
    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1376
    const-string/jumbo v0, "overview"

    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1377
    return-void
.end method

.method public setHardwareAccelerated()V
    .registers 2

    .prologue
    .line 1455
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    .line 1456
    return-void
.end method

.method public final setInitialScaleInPercent(I)V
    .registers 4
    .parameter "scaleInPercent"

    .prologue
    .line 421
    int-to-float v0, p1

    const v1, 0x3c23d70a

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    .line 422
    return-void
.end method

.method public setIsBrowserApp(Z)V
    .registers 2
    .parameter "isBrowserApp"

    .prologue
    .line 2152
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->m_bIsBrowserApp:Z

    .line 2153
    return-void
.end method

.method setIsMTing(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 2264
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->isMTing:Z

    .line 2265
    return-void
.end method

.method public setTextWrapScale(F)V
    .registers 2
    .parameter "scale"

    .prologue
    .line 1471
    iput p1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1472
    return-void
.end method

.method public final setZoomCenter(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 416
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 417
    iput p2, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 418
    return-void
.end method

.method public setZoomLowerBound(F)V
    .registers 5
    .parameter "fLower"

    .prologue
    .line 245
    const-string/jumbo v0, "webviewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ZoomManager.setZoomLowerBound] >> fLower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_23

    .line 251
    :goto_22
    return-void

    .line 249
    :cond_23
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    .line 250
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_22
.end method

.method public setZoomScale(FZ)V
    .registers 4
    .parameter "scale"
    .parameter "reflowText"

    .prologue
    .line 608
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 609
    return-void
.end method

.method public setZoomType(I)V
    .registers 3
    .parameter "nType"

    .prologue
    .line 2205
    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    .line 2206
    const/4 p1, 0x0

    .line 2207
    :cond_7
    iput p1, p0, Landroid/webkit/ZoomManager;->m_nZoomType:I

    .line 2218
    return-void
.end method

.method public setZoomUpperBound(F)V
    .registers 5
    .parameter "fUpper"

    .prologue
    .line 236
    const-string/jumbo v0, "webviewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ZoomManager.setZoomUpperBound] >> fUpper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_23

    .line 242
    :goto_22
    return-void

    .line 240
    :cond_23
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    .line 241
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_22
.end method

.method public startZoomAnimation(FZ)Z
    .registers 8
    .parameter "scale"
    .parameter "reflowText"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    .line 485
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 486
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 487
    .local v0, oldScale:F
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    .line 488
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    .line 491
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    invoke-static {p1, v3}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v3

    if-nez v3, :cond_26

    .line 492
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result p1

    .line 495
    :cond_26
    iget-boolean v3, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v3, :cond_2c

    .line 496
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 499
    :cond_2c
    invoke-virtual {p0, p1, p2}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 501
    iget v3, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_54

    .line 503
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    .line 504
    div-float v2, v4, v0

    iput v2, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    .line 505
    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    div-float v2, v4, v2

    iput v2, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    .line 506
    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iput v2, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 507
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->onFixedLengthZoomAnimationStart()V

    .line 508
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 511
    :goto_53
    return v1

    :cond_54
    move v1, v2

    goto :goto_53
.end method

.method public supportsMultiTouchZoom()Z
    .registers 2

    .prologue
    .line 900
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    return v0
.end method

.method public supportsPanDuringZoom()Z
    .registers 2

    .prologue
    .line 904
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mAllowPanAndScale:Z

    return v0
.end method

.method public updateDefaultZoomDensity(F)V
    .registers 8
    .parameter "density"

    .prologue
    .line 318
    sget-boolean v2, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v2, :cond_f

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 320
    :cond_f
    iget v2, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_32

    .line 322
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 324
    .local v0, originalDefault:F
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->setDefaultZoomScale(F)V

    .line 325
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_33

    div-float v1, p1, v0

    .line 327
    .local v1, scaleChange:F
    :goto_2b
    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 329
    .end local v0           #originalDefault:F
    .end local v1           #scaleChange:F
    :cond_32
    return-void

    .line 325
    .restart local v0       #originalDefault:F
    :cond_33
    const/high16 v1, 0x3f80

    goto :goto_2b
.end method

.method public updateDoubleTapZoom(I)V
    .registers 7
    .parameter "doubleTapZoom"

    .prologue
    const/4 v2, 0x1

    .line 595
    iget v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v3, v4

    const v4, 0x3dcccccd

    cmpg-float v3, v3, v4

    if-gez v3, :cond_22

    move v1, v2

    .line 596
    .local v1, zoomIn:Z
    :goto_e
    int-to-float v3, p1

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    .line 597
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 598
    if-eqz v1, :cond_24

    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 600
    .local v0, newScale:F
    :goto_1e
    invoke-direct {p0, v0, v2, v2}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 601
    return-void

    .line 595
    .end local v0           #newScale:F
    .end local v1           #zoomIn:Z
    :cond_22
    const/4 v1, 0x0

    goto :goto_e

    .line 598
    .restart local v1       #zoomIn:Z
    :cond_24
    iget v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1e
.end method

.method public updateMultiTouchSupport(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 876
    sget-boolean v2, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v2, :cond_14

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    if-nez v2, :cond_14

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 878
    :cond_14
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 879
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 882
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-eqz v2, :cond_44

    move v2, v3

    :goto_2b
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    .line 883
    iput-boolean v3, p0, Landroid/webkit/ZoomManager;->mAllowPanAndScale:Z

    .line 892
    iget-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-eqz v2, :cond_46

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v2, :cond_46

    .line 893
    new-instance v2, Landroid/view/ScaleGestureDetector;

    new-instance v3, Landroid/webkit/ZoomManager$ScaleDetectorListener;

    invoke-direct {v3, p0, v4}, Landroid/webkit/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/ZoomManager$1;)V

    invoke-direct {v2, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 897
    :cond_43
    :goto_43
    return-void

    .line 882
    :cond_44
    const/4 v2, 0x0

    goto :goto_2b

    .line 894
    :cond_46
    iget-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-nez v2, :cond_43

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_43

    .line 895
    iput-object v4, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    goto :goto_43
.end method

.method public updateZoomPicker()V
    .registers 2

    .prologue
    .line 1427
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1428
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_9

    .line 1429
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->update()V

    .line 1431
    :cond_9
    return-void
.end method

.method public updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V
    .registers 9
    .parameter "viewState"
    .parameter "viewWidth"
    .parameter "minPrefWidth"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    const/4 v2, 0x0

    .line 1192
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_49

    .line 1193
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    if-eqz v0, :cond_42

    .line 1194
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p3, v0, :cond_3b

    .line 1195
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1196
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    .line 1209
    :goto_1c
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_50

    .line 1210
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1215
    :goto_26
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_30

    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1216
    :cond_30
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3a

    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1218
    :cond_3a
    return-void

    .line 1198
    :cond_3b
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1199
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_1c

    .line 1202
    :cond_42
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1203
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_1c

    .line 1206
    :cond_49
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1207
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_1c

    .line 1212
    :cond_50
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_26
.end method

.method public willScaleTriggerZoom(F)Z
    .registers 3
    .parameter "scale"

    .prologue
    .line 446
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {p1, v0}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .registers 2

    .prologue
    .line 458
    const/high16 v0, 0x3fa0

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .registers 2

    .prologue
    .line 462
    const v0, 0x3f4ccccd

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method
