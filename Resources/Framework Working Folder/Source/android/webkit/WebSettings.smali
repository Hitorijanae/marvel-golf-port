.class public Landroid/webkit/WebSettings;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSettings$1;,
        Landroid/webkit/WebSettings$WebSelectionType;,
        Landroid/webkit/WebSettings$EventHandler;,
        Landroid/webkit/WebSettings$AutoFillProfile;,
        Landroid/webkit/WebSettings$PluginState;,
        Landroid/webkit/WebSettings$RenderPriority;,
        Landroid/webkit/WebSettings$ZoomDensity;,
        Landroid/webkit/WebSettings$TextSize;,
        Landroid/webkit/WebSettings$LayoutAlgorithm;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field public static DEBUG_ZOOM_DENSITY:I = 0x0

.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0

.field public static final LOAD_NO_CACHE:I = 0x2

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "3.1"

.field private static mDoubleTapToastCount:I

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private mAcceptLanguage:Ljava/lang/String;

.field private mAllowContentAccess:Z

.field private mAllowFileAccess:Z

.field private mAppCacheEnabled:Z

.field private mAppCacheMaxSize:J

.field private mAppCachePath:Ljava/lang/String;

.field private mAutoFillEnabled:Z

.field private mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

.field private mBlockNetworkImage:Z

.field private mBlockNetworkLoads:Z

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mBuiltInZoomControls:Z

.field private mContext:Landroid/content/Context;

.field private mCursiveFontFamily:Ljava/lang/String;

.field private mDatabaseEnabled:Z

.field private mDatabasePath:Ljava/lang/String;

.field private mDatabasePathHasBeenSet:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultTextEncoding:Ljava/lang/String;

.field private mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

.field private mDeviceId:Ljava/lang/String;

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private mDoubleTapZoom:I

.field private mEnableDnsPrefetch:Z

.field private mEnableSmoothTransition:Z

.field private final mEventHandler:Landroid/webkit/WebSettings$EventHandler;

.field private mFantasyFontFamily:Ljava/lang/String;

.field private mFixedFontFamily:Ljava/lang/String;

.field private mForceUserScalable:Z

.field private mGeolocationDatabasePath:Ljava/lang/String;

.field private mGeolocationEnabled:Z

.field private mHardwareAccelSkia:Z

.field private mIsCacheDrawPlugin:Z

.field private mIsEnableQuickSelection:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field private mLightTouchEnabled:Z

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMaximumDecodedImageSize:J

.field private mMinimumFontSize:I

.field private mMinimumLogicalFontSize:I

.field private mNavDump:Z

.field private mNeedInitialFocus:Z

.field private mNetworkType:Ljava/lang/String;

.field private mOverrideCacheMode:I

.field private mPageCacheCapacity:I

.field private mPluginState:Landroid/webkit/WebSettings$PluginState;

.field private mPostponePlugin:Z

.field private mPrivateBrowsingEnabled:Z

.field private mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

.field private mSansSerifFontFamily:Ljava/lang/String;

.field private mSaveFormData:Z

.field private mSavePassword:Z

.field private mSerifFontFamily:Ljava/lang/String;

.field private mShowVisualIndicator:Z

.field private mShrinksStandaloneImagesToFit:Z

.field private mStandardFontFamily:Ljava/lang/String;

.field private mSupportMultipleWindows:Z

.field private mSupportZoom:Z

.field private mSyncPending:Z

.field private mSyntheticLinksEnabled:Z

.field private mTextSize:I

.field private mUAProfile:Ljava/lang/String;

.field private mUAStringModel:Ljava/lang/String;

.field private mUaStringID:Ljava/lang/String;

.field private mUseDefaultUserAgent:Z

.field private mUseDoubleTree:Z

.field private mUseWebViewBackgroundForOverscroll:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private mUserAgentAndroid:Ljava/lang/String;

.field private mWebSelectionType:I

.field private mWebView:Landroid/webkit/WebView;

.field private mWorkersEnabled:Z

.field private mXSSAuditorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 311
    const/4 v0, 0x3

    sput v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    .line 2128
    const/16 v0, 0x64

    sput v0, Landroid/webkit/WebSettings;->DEBUG_ZOOM_DENSITY:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 9
    .parameter "context"
    .parameter "webview"

    .prologue
    const/16 v5, 0x64

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    .line 167
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 169
    iput v5, p0, Landroid/webkit/WebSettings;->mTextSize:I

    .line 170
    const-string/jumbo v2, "sans-serif"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 171
    const-string/jumbo v2, "monospace"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 172
    const-string/jumbo v2, "sans-serif"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 173
    const-string/jumbo v2, "serif"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 174
    const-string v2, "cursive"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 175
    const-string v2, "fantasy"

    iput-object v2, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 180
    iput v3, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    .line 181
    iput v3, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    .line 182
    const/16 v2, 0x10

    iput v2, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    .line 183
    const/16 v2, 0xd

    iput v2, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    .line 184
    iput v1, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    .line 185
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    .line 186
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    .line 188
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    .line 189
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z

    .line 190
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z

    .line 191
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 193
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mPostponePlugin:Z

    .line 195
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 196
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDoubleTree:Z

    .line 197
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    .line 198
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    .line 199
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    .line 200
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/webkit/WebSettings;->mMaximumDecodedImageSize:J

    .line 201
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    .line 202
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSyntheticLinksEnabled:Z

    .line 204
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    .line 205
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    .line 206
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    .line 207
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    .line 208
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    .line 209
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mXSSAuditorEnabled:Z

    .line 211
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    .line 212
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    .line 213
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;

    .line 216
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    .line 217
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 221
    sget-object v2, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 222
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 223
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    .line 224
    iput v5, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    .line 225
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    .line 226
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    .line 227
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    .line 228
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    .line 229
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    .line 230
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    .line 231
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    .line 232
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    .line 233
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mDisplayZoomControls:Z

    .line 234
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    .line 235
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    .line 236
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    .line 237
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mEnableSmoothTransition:Z

    .line 238
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mForceUserScalable:Z

    .line 244
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mIsEnableQuickSelection:Z

    .line 245
    iput v1, p0, Landroid/webkit/WebSettings;->mWebSelectionType:I

    .line 247
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mIsCacheDrawPlugin:Z

    .line 249
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mEnableDnsPrefetch:Z

    .line 251
    iput-object v4, p0, Landroid/webkit/WebSettings;->mUAProfile:Ljava/lang/String;

    .line 252
    iput-object v4, p0, Landroid/webkit/WebSettings;->mDeviceId:Ljava/lang/String;

    .line 253
    iput-object v4, p0, Landroid/webkit/WebSettings;->mNetworkType:Ljava/lang/String;

    .line 308
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundForOverscroll:Z

    .line 2043
    iput-object v4, p0, Landroid/webkit/WebSettings;->mUAStringModel:Ljava/lang/String;

    .line 2116
    iput-object v4, p0, Landroid/webkit/WebSettings;->mUaStringID:Ljava/lang/String;

    .line 409
    new-instance v2, Landroid/webkit/WebSettings$EventHandler;

    invoke-direct {v2, p0, v4}, Landroid/webkit/WebSettings$EventHandler;-><init>(Landroid/webkit/WebSettings;Landroid/webkit/WebSettings$1;)V

    iput-object v2, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    .line 410
    iput-object p1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    .line 411
    iput-object p2, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    .line 412
    const v2, 0x10400c9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 415
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v2, :cond_e1

    .line 416
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 417
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 419
    :cond_e1
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 420
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 422
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mUserAgentAndroid:Ljava/lang/String;

    .line 424
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    .line 426
    iget-object v2, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_108

    :goto_105
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    .line 429
    return-void

    :cond_108
    move v0, v1

    .line 426
    goto :goto_105
.end method

.method static synthetic access$000(Landroid/webkit/WebSettings;)Landroid/webkit/BrowserFrame;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->nativeSync(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/webkit/WebSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/WebSettings;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .registers 1

    .prologue
    .line 43
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/WebSettings;)Landroid/webkit/WebSettings$RenderPriority;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .registers 5
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 478
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebSettings;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_1b

    .line 480
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 483
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .end local v0           #country:Ljava/lang/String;
    :cond_1b
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "langCode"

    .prologue
    .line 460
    if-nez p0, :cond_4

    .line 461
    const/4 p0, 0x0

    .line 473
    .end local p0
    :cond_3
    :goto_3
    return-object p0

    .line 463
    .restart local p0
    :cond_4
    const-string/jumbo v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 465
    const-string/jumbo p0, "he"

    goto :goto_3

    .line 466
    :cond_11
    const-string/jumbo v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 468
    const-string/jumbo p0, "id"

    goto :goto_3

    .line 469
    :cond_1e
    const-string/jumbo v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    const-string/jumbo p0, "yi"

    goto :goto_3
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 439
    sget-object v3, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3

    .line 440
    :try_start_3
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 441
    .local v1, locale:Ljava/util/Locale;
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2b

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Landroid/webkit/WebSettings;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 445
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_21

    .line 447
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_21
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 441
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #locale:Ljava/util/Locale;
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .registers 14

    .prologue
    const/16 v12, 0xd8

    .line 495
    monitor-enter p0

    :try_start_3
    sget-object v11, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v11
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_ca

    .line 496
    :try_start_6
    sget-object v5, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 497
    .local v5, locale:Ljava/util/Locale;
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_c7

    .line 498
    :try_start_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 500
    .local v1, buffer:Ljava/lang/StringBuffer;
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 501
    .local v9, version:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_d4

    .line 502
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_cd

    .line 504
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    :goto_24
    const-string v10, "; "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, language:Ljava/lang/String;
    if-eqz v4, :cond_db

    .line 517
    invoke-static {v4}, Landroid/webkit/WebSettings;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_48

    .line 520
    const-string v10, "-"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    .end local v2           #country:Ljava/lang/String;
    :cond_48
    :goto_48
    iget-object v10, p0, Landroid/webkit/WebSettings;->mUAStringModel:Ljava/lang/String;

    if-eqz v10, :cond_e2

    iget-object v10, p0, Landroid/webkit/WebSettings;->mUAStringModel:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_e2

    .line 541
    const-string v10, "; "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    iget-object v10, p0, Landroid/webkit/WebSettings;->mUAStringModel:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    :cond_5e
    :goto_5e
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v10, v12, :cond_fe

    .line 569
    :cond_62
    :goto_62
    iget-object v10, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x104032f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 575
    .local v6, mobile:Ljava/lang/String;
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v10, v12, :cond_110

    .line 576
    iget-object v10, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x104032e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 577
    .local v8, rawBase:Ljava/lang/String;
    const-string v10, "AppleWebKit"

    const-string v11, "AndroidWebKit"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "like"

    const-string v12, "Like"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .end local v8           #rawBase:Ljava/lang/String;
    .local v0, base:Ljava/lang/String;
    :goto_99
    iget-object v10, p0, Landroid/webkit/WebSettings;->mUaStringID:Ljava/lang/String;

    if-eqz v10, :cond_123

    iget-object v10, p0, Landroid/webkit/WebSettings;->mUaStringID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_123

    .line 587
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/WebSettings;->mUaStringID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c4
    .catchall {:try_start_9 .. :try_end_c4} :catchall_ca

    move-result-object v10

    .line 590
    :goto_c5
    monitor-exit p0

    return-object v10

    .line 497
    .end local v0           #base:Ljava/lang/String;
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #language:Ljava/lang/String;
    .end local v5           #locale:Ljava/util/Locale;
    .end local v6           #mobile:Ljava/lang/String;
    .end local v9           #version:Ljava/lang/String;
    :catchall_c7
    move-exception v10

    :try_start_c8
    monitor-exit v11
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw v10
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_ca

    .line 495
    :catchall_ca
    move-exception v10

    monitor-exit p0

    throw v10

    .line 508
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v5       #locale:Ljava/util/Locale;
    .restart local v9       #version:Ljava/lang/String;
    :cond_cd
    :try_start_cd
    const-string v10, "3.1"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_24

    .line 512
    :cond_d4
    const-string v10, "1.0"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_24

    .line 525
    .restart local v4       #language:Ljava/lang/String;
    :cond_db
    const-string v10, "en"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_48

    .line 546
    :cond_e2
    const-string v10, "REL"

    sget-object v11, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5e

    .line 547
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 548
    .local v7, model:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5e

    .line 549
    const-string v10, "; "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5e

    .line 561
    .end local v7           #model:Ljava/lang/String;
    :cond_fe
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 562
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_62

    .line 563
    const-string v10, " Build/"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_62

    .line 580
    .end local v3           #id:Ljava/lang/String;
    .restart local v6       #mobile:Ljava/lang/String;
    :cond_110
    iget-object v10, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x104032e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #base:Ljava/lang/String;
    goto/16 :goto_99

    .line 590
    :cond_123
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_12f
    .catchall {:try_start_cd .. :try_end_12f} :catchall_ca

    move-result-object v10

    goto :goto_c5
.end method

.method private native nativeSync(I)V
.end method

.method private pin(I)I
    .registers 4
    .parameter "size"

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 2011
    if-ge p1, v0, :cond_7

    move p1, v0

    .line 2016
    .end local p1
    :cond_6
    :goto_6
    return p1

    .line 2013
    .restart local p1
    :cond_7
    if-le p1, v1, :cond_6

    move p1, v1

    .line 2014
    goto :goto_6
.end method

.method private declared-synchronized postSync()V
    .registers 5

    .prologue
    .line 2022
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    if-nez v1, :cond_31

    .line 2024
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_36

    .line 2025
    :try_start_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2026
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 2027
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 2028
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 2029
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettings;->mUserAgentAndroid:Ljava/lang/String;

    .line 2031
    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_33

    .line 2034
    :try_start_23
    iget-object v1, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v1, v2}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_36

    .line 2037
    .end local v0           #currentLocale:Ljava/util/Locale;
    :cond_31
    monitor-exit p0

    return-void

    .line 2031
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 2022
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private verifyNetworkAccess()V
    .registers 5

    .prologue
    .line 1339
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    if-nez v0, :cond_1e

    .line 1340
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1343
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_1e
    return-void
.end method


# virtual methods
.method public declared-synchronized clearMobileProxySettings()V
    .registers 2

    .prologue
    .line 2160
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7

    if-eqz v0, :cond_5

    .line 2163
    :cond_5
    monitor-exit p0

    return-void

    .line 2160
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableSmoothTransition()Z
    .registers 2

    .prologue
    .line 738
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mEnableSmoothTransition:Z

    return v0
.end method

.method public forceUserScalable()Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mForceUserScalable:Z

    return v0
.end method

.method declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1754
    monitor-enter p0

    :try_start_1
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    .line 1755
    :try_start_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1756
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1757
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1758
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1760
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1d

    .line 1761
    :try_start_19
    iget-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_20

    monitor-exit p0

    return-object v1

    .line 1760
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    .line 1754
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAllowContentAccess()Z
    .registers 2

    .prologue
    .line 705
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    return v0
.end method

.method public getAllowFileAccess()Z
    .registers 2

    .prologue
    .line 689
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    return v0
.end method

.method public declared-synchronized getAutoFillEnabled()Z
    .registers 2

    .prologue
    .line 1931
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;
    .registers 2

    .prologue
    .line 1948
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .registers 2

    .prologue
    .line 1289
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .registers 2

    .prologue
    .line 1334
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .registers 2

    .prologue
    .line 654
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    return v0
.end method

.method public getCacheMode()I
    .registers 2

    .prologue
    .line 1819
    iget v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1128
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .registers 2

    .prologue
    .line 1572
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1564
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .registers 2

    .prologue
    .line 1231
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .registers 2

    .prologue
    .line 1210
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1689
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .registers 2

    .prologue
    .line 890
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public getDisplayZoomControls()Z
    .registers 2

    .prologue
    .line 672
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDisplayZoomControls:Z

    return v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .registers 2

    .prologue
    .line 1555
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDoubleTapToastCount()I
    .registers 2

    .prologue
    .line 1952
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return v0
.end method

.method public getDoubleTapZoom()I
    .registers 2

    .prologue
    .line 867
    iget v0, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    return v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1147
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1071
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHardwareAccelSkiaEnabled()Z
    .registers 2

    .prologue
    .line 1378
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .registers 2

    .prologue
    .line 1670
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .registers 2

    .prologue
    .line 1617
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .registers 2

    .prologue
    .line 1033
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .registers 2

    .prologue
    .line 904
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .registers 2

    .prologue
    .line 719
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .registers 2

    .prologue
    .line 1265
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .registers 2

    .prologue
    .line 1168
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .registers 2

    .prologue
    .line 1189
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 609
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    return v0
.end method

.method getNeedInitialFocus()Z
    .registers 2

    .prologue
    .line 1782
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    return v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkit/WebSettings$PluginState;
    .registers 2

    .prologue
    .line 1635
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1627
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1647
    monitor-enter p0

    :try_start_1
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 1977
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1090
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .registers 2

    .prologue
    .line 774
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getSavePassword()Z
    .registers 2

    .prologue
    .line 788
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    return v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1109
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShowVisualIndicator()Z
    .registers 2

    .prologue
    .line 1398
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1052
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextSize()Landroid/webkit/WebSettings$TextSize;
    .registers 10

    .prologue
    .line 834
    monitor-enter p0

    const/4 v1, 0x0

    .line 835
    .local v1, closestSize:Landroid/webkit/WebSettings$TextSize;
    const v6, 0x7fffffff

    .line 836
    .local v6, smallestDelta:I
    :try_start_5
    invoke-static {}, Landroid/webkit/WebSettings$TextSize;->values()[Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    .local v0, arr$:[Landroid/webkit/WebSettings$TextSize;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v4, :cond_23

    aget-object v5, v0, v3

    .line 837
    .local v5, size:Landroid/webkit/WebSettings$TextSize;
    iget v7, p0, Landroid/webkit/WebSettings;->mTextSize:I

    iget v8, v5, Landroid/webkit/WebSettings$TextSize;->value:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_2a

    move-result v2

    .line 838
    .local v2, delta:I
    if-nez v2, :cond_1c

    .line 846
    .end local v1           #closestSize:Landroid/webkit/WebSettings$TextSize;
    .end local v2           #delta:I
    .end local v5           #size:Landroid/webkit/WebSettings$TextSize;
    :goto_1a
    monitor-exit p0

    return-object v5

    .line 841
    .restart local v1       #closestSize:Landroid/webkit/WebSettings$TextSize;
    .restart local v2       #delta:I
    .restart local v5       #size:Landroid/webkit/WebSettings$TextSize;
    :cond_1c
    if-ge v2, v6, :cond_20

    .line 842
    move v6, v2

    .line 843
    move-object v1, v5

    .line 836
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 846
    .end local v2           #delta:I
    .end local v5           #size:Landroid/webkit/WebSettings$TextSize;
    :cond_23
    if-eqz v1, :cond_27

    .end local v1           #closestSize:Landroid/webkit/WebSettings$TextSize;
    :goto_25
    move-object v5, v1

    goto :goto_1a

    .restart local v1       #closestSize:Landroid/webkit/WebSettings$TextSize;
    :cond_27
    :try_start_27
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2a

    goto :goto_25

    .line 834
    .end local v0           #arr$:[Landroid/webkit/WebSettings$TextSize;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_2a
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized getTextZoom()I
    .registers 2

    .prologue
    .line 812
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/webkit/WebSettings;->mTextSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUAProfile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2170
    iget-object v0, p0, Landroid/webkit/WebSettings;->mUAProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getUAStringModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2174
    iget-object v0, p0, Landroid/webkit/WebSettings;->mUAStringModel:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 922
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method getUseFixedViewport()Z
    .registers 2

    .prologue
    .line 1854
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 759
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundForOverscroll:Z

    return v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .registers 2

    .prologue
    .line 987
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 963
    monitor-enter p0

    :try_start_1
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_22

    move-result v0

    if-eqz v0, :cond_e

    .line 964
    const/4 v0, 0x1

    .line 970
    :goto_c
    monitor-exit p0

    return v0

    .line 965
    :cond_e
    :try_start_e
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 966
    const/4 v0, 0x2

    goto :goto_c

    .line 967
    :cond_1a
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_22

    if-eqz v0, :cond_20

    .line 968
    const/4 v0, 0x0

    goto :goto_c

    .line 970
    :cond_20
    const/4 v0, -0x1

    goto :goto_c

    .line 963
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1727
    monitor-enter p0

    :try_start_1
    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    iget-boolean v2, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    if-nez v2, :cond_1d

    .line 1730
    :cond_19
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_4c

    .line 1749
    :goto_1b
    monitor-exit p0

    return-object v2

    .line 1733
    :cond_1d
    const/4 v1, 0x0

    .line 1734
    .local v1, doPostSync:Z
    :try_start_1e
    sget-object v3, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_4c

    .line 1735
    :try_start_21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1736
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v2, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 1737
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1739
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1740
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 1741
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mUserAgentAndroid:Ljava/lang/String;

    .line 1743
    const/4 v1, 0x1

    .line 1745
    :cond_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_21 .. :try_end_41} :catchall_49

    .line 1746
    if-eqz v1, :cond_46

    .line 1747
    :try_start_43
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1749
    :cond_46
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_4c

    goto :goto_1b

    .line 1745
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    .line 1727
    .end local v1           #doPostSync:Z
    :catchall_4c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getWebSelectionType()I
    .registers 2

    .prologue
    .line 2088
    iget v0, p0, Landroid/webkit/WebSettings;->mWebSelectionType:I

    return v0
.end method

.method public isEnableQuickSelection()Z
    .registers 2

    .prologue
    .line 2084
    iget v0, p0, Landroid/webkit/WebSettings;->mWebSelectionType:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isNarrowColumnLayout()Z
    .registers 3

    .prologue
    .line 1765
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isPrivateBrowsingEnabled()Z
    .registers 2

    .prologue
    .line 1872
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    return v0
.end method

.method declared-synchronized onDestroyed()V
    .registers 1

    .prologue
    .line 2007
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setAllowContentAccess(Z)V
    .registers 2
    .parameter "allow"

    .prologue
    .line 698
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    .line 699
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .registers 2
    .parameter "allow"

    .prologue
    .line 682
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    .line 683
    return-void
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1495
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1496
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    .line 1497
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1499
    :cond_a
    monitor-exit p0

    return-void

    .line 1495
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .registers 5
    .parameter "appCacheMaxSize"

    .prologue
    .line 1520
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    .line 1521
    iput-wide p1, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    .line 1522
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 1524
    :cond_c
    monitor-exit p0

    return-void

    .line 1520
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .registers 3
    .parameter "appCachePath"

    .prologue
    .line 1509
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1510
    iput-object p1, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    .line 1511
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 1513
    :cond_10
    monitor-exit p0

    return-void

    .line 1509
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoFillEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 1920
    monitor-enter p0

    if-eqz p1, :cond_13

    :try_start_3
    iget-boolean v1, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    if-nez v1, :cond_13

    const/4 v0, 0x1

    .line 1921
    .local v0, autoFillEnabled:Z
    :goto_8
    iget-boolean v1, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    if-eq v1, v0, :cond_11

    .line 1922
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    .line 1923
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    .line 1925
    :cond_11
    monitor-exit p0

    return-void

    .line 1920
    .end local v0           #autoFillEnabled:Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_8

    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;)V
    .registers 3
    .parameter "profile"

    .prologue
    .line 1938
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    if-eq v0, p1, :cond_a

    .line 1939
    iput-object p1, p0, Landroid/webkit/WebSettings;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    .line 1940
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1942
    :cond_a
    monitor-exit p0

    return-void

    .line 1938
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1277
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    if-eq v0, p1, :cond_a

    .line 1278
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    .line 1279
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1281
    :cond_a
    monitor-exit p0

    return-void

    .line 1277
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1301
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    if-eq v0, p1, :cond_d

    .line 1302
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11

    .line 1305
    :try_start_7
    invoke-direct {p0}, Landroid/webkit/WebSettings;->verifyNetworkAccess()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_11
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_a} :catch_f

    .line 1324
    :goto_a
    :try_start_a
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_11

    .line 1326
    :cond_d
    monitor-exit p0

    return-void

    .line 1306
    :catch_f
    move-exception v0

    goto :goto_a

    .line 1301
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 646
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    .line 647
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 648
    return-void
.end method

.method public setCacheMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 1808
    iget v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    if-eq p1, v0, :cond_9

    .line 1809
    iput p1, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    .line 1810
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1812
    :cond_9
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .registers 3
    .parameter "font"

    .prologue
    .line 1117
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1118
    iput-object p1, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 1119
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 1121
    :cond_10
    monitor-exit p0

    return-void

    .line 1117
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1532
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1533
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    .line 1534
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1536
    :cond_a
    monitor-exit p0

    return-void

    .line 1532
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .registers 3
    .parameter "databasePath"

    .prologue
    .line 1468
    monitor-enter p0

    if-eqz p1, :cond_f

    :try_start_3
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    if-nez v0, :cond_f

    .line 1469
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;

    .line 1470
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    .line 1471
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 1473
    :cond_f
    monitor-exit p0

    return-void

    .line 1468
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 1219
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1220
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    if-eq v0, p1, :cond_e

    .line 1221
    iput p1, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    .line 1222
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1224
    :cond_e
    monitor-exit p0

    return-void

    .line 1219
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 1198
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1199
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    if-eq v0, p1, :cond_e

    .line 1200
    iput p1, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    .line 1201
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1203
    :cond_e
    monitor-exit p0

    return-void

    .line 1198
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .registers 3
    .parameter "encoding"

    .prologue
    .line 1678
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1679
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 1680
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 1682
    :cond_10
    monitor-exit p0

    return-void

    .line 1678
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .registers 4
    .parameter "zoom"

    .prologue
    .line 877
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    if-eq v0, p1, :cond_d

    .line 878
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 879
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget v1, p1, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->adjustDefaultZoomDensity(I)V

    .line 881
    :cond_d
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 664
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDisplayZoomControls:Z

    .line 665
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 666
    return-void
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1544
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1545
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    .line 1546
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1548
    :cond_a
    monitor-exit p0

    return-void

    .line 1544
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDoubleTapToastCount(I)V
    .registers 5
    .parameter "count"

    .prologue
    .line 1956
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    if-eq v0, p1, :cond_11

    .line 1957
    sput p1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    .line 1959
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z

    .line 1962
    :cond_11
    return-void
.end method

.method public setDoubleTapZoom(I)V
    .registers 3
    .parameter "doubleTapZoom"

    .prologue
    .line 855
    iget v0, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    if-eq v0, p1, :cond_b

    .line 856
    iput p1, p0, Landroid/webkit/WebSettings;->mDoubleTapZoom:I

    .line 857
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->updateDoubleTapZoom(I)V

    .line 859
    :cond_b
    return-void
.end method

.method public declared-synchronized setEnableQuickSelection(Z)V
    .registers 3
    .parameter "flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2080
    monitor-enter p0

    if-eqz p1, :cond_9

    const/4 v0, 0x2

    :goto_4
    :try_start_4
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setWebSelectionType(I)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 2081
    monitor-exit p0

    return-void

    .line 2080
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableSmoothTransition(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 730
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mEnableSmoothTransition:Z

    .line 731
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .registers 3
    .parameter "font"

    .prologue
    .line 1136
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1137
    iput-object p1, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 1138
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 1140
    :cond_10
    monitor-exit p0

    return-void

    .line 1136
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .registers 3
    .parameter "font"

    .prologue
    .line 1060
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1061
    iput-object p1, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 1062
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 1064
    :cond_10
    monitor-exit p0

    return-void

    .line 1060
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setForceUserScalable(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1905
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mForceUserScalable:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1906
    monitor-exit p0

    return-void

    .line 1905
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .registers 3
    .parameter "databasePath"

    .prologue
    .line 1483
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1485
    iput-object p1, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 1486
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 1488
    :cond_10
    monitor-exit p0

    return-void

    .line 1483
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1594
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1595
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    .line 1596
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1598
    :cond_a
    monitor-exit p0

    return-void

    .line 1594
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHardwareAccelSkiaEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1367
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z

    if-eq v0, p1, :cond_a

    .line 1368
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mHardwareAccelSkia:Z

    .line 1369
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1371
    :cond_a
    monitor-exit p0

    return-void

    .line 1367
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIsEnableGifAnimation(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 2125
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->fnEnableGifAnimation(Z)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2126
    monitor-exit p0

    return-void

    .line 2125
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1657
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_a

    .line 1658
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 1659
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1661
    :cond_a
    monitor-exit p0

    return-void

    .line 1657
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1355
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1356
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    .line 1357
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1359
    :cond_a
    monitor-exit p0

    return-void

    .line 1355
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 1020
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eq v0, p1, :cond_a

    .line 1021
    iput-object p1, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 1022
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1024
    :cond_a
    monitor-exit p0

    return-void

    .line 1020
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLightTouchEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 897
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    .line 898
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .registers 2
    .parameter "overview"

    .prologue
    .line 712
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    .line 713
    return-void
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1253
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_a

    .line 1254
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    .line 1255
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1257
    :cond_a
    monitor-exit p0

    return-void

    .line 1253
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaximumDecodedImageSize(J)V
    .registers 5
    .parameter "size"

    .prologue
    .line 1843
    iget-wide v0, p0, Landroid/webkit/WebSettings;->mMaximumDecodedImageSize:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_b

    .line 1844
    iput-wide p1, p0, Landroid/webkit/WebSettings;->mMaximumDecodedImageSize:J

    .line 1845
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1847
    :cond_b
    return-void
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 1156
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1157
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    if-eq v0, p1, :cond_e

    .line 1158
    iput p1, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    .line 1159
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1161
    :cond_e
    monitor-exit p0

    return-void

    .line 1156
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 1177
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1178
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    if-eq v0, p1, :cond_e

    .line 1179
    iput p1, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    .line 1180
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1182
    :cond_e
    monitor-exit p0

    return-void

    .line 1177
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMobileProxySettings(Ljava/lang/String;I)V
    .registers 4
    .parameter "host"
    .parameter "port"

    .prologue
    .line 2154
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_a

    .line 2155
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setMobileProxy(Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 2157
    :cond_a
    monitor-exit p0

    return-void

    .line 2154
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .registers 2
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 600
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    .line 601
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1775
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    if-eq v0, p1, :cond_6

    .line 1776
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    .line 1778
    :cond_6
    return-void
.end method

.method public declared-synchronized setPageCacheCapacity(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 1240
    monitor-enter p0

    if-gez p1, :cond_4

    const/4 p1, 0x0

    .line 1241
    :cond_4
    const/16 v0, 0x14

    if-le p1, v0, :cond_a

    const/16 p1, 0x14

    .line 1242
    :cond_a
    :try_start_a
    iget v0, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    if-eq v0, p1, :cond_13

    .line 1243
    iput p1, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    .line 1244
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_15

    .line 1246
    :cond_13
    monitor-exit p0

    return-void

    .line 1240
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .registers 7
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    .line 1420
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    if-eq v2, p1, :cond_37

    .line 1422
    const/4 v0, 0x0

    .line 1423
    .local v0, bIsHtcNewsApp:Z
    const/4 v1, 0x0

    .line 1424
    .local v1, bIsTestSuite:Z
    iget-object v2, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1425
    iget-object v2, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.googlereader"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1426
    iget-object v2, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.TestSuite"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1429
    :cond_2c
    if-eq v0, v4, :cond_30

    if-ne v1, v4, :cond_39

    .line 1430
    :cond_30
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    iput-object v2, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 1434
    :goto_34
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_3c

    .line 1436
    .end local v0           #bIsHtcNewsApp:Z
    .end local v1           #bIsTestSuite:Z
    :cond_37
    monitor-exit p0

    return-void

    .line 1432
    .restart local v0       #bIsHtcNewsApp:Z
    .restart local v1       #bIsTestSuite:Z
    :cond_39
    :try_start_39
    iput-object p1, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_3c

    goto :goto_34

    .line 1420
    .end local v0           #bIsHtcNewsApp:Z
    .end local v1           #bIsTestSuite:Z
    :catchall_3c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .registers 3
    .parameter "flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1409
    monitor-enter p0

    if-eqz p1, :cond_a

    :try_start_3
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    :goto_5
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 1410
    monitor-exit p0

    return-void

    .line 1409
    :cond_a
    :try_start_a
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    goto :goto_5

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .registers 2
    .parameter "pluginsPath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1458
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setPostponePlugin(Z)V
    .registers 5
    .parameter "postponePlugin"

    .prologue
    .line 1441
    monitor-enter p0

    :try_start_1
    const-string v0, "WebSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPostponePlugin postponePlugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mPostponePlugin:Z

    if-eq v0, p1, :cond_23

    .line 1443
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mPostponePlugin:Z

    .line 1444
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 1446
    :cond_23
    monitor-exit p0

    return-void

    .line 1441
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setPrivateBrowsingEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1880
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    if-eq v0, p1, :cond_f

    .line 1881
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mPrivateBrowsingEnabled:Z

    .line 1885
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAutoFillEnabled:Z

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAutoFillEnabled(Z)V

    .line 1887
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 1889
    :cond_f
    monitor-exit p0

    return-void

    .line 1880
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1968
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1969
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->contentInvalidateAll()V

    .line 1971
    :cond_d
    return-void
.end method

.method public setProxyEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 2132
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    .line 2133
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setProxyEnabled(Z)V

    .line 2135
    :cond_9
    return-void
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .registers 5
    .parameter "priority"

    .prologue
    .line 1792
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    if-eq v0, p1, :cond_12

    .line 1793
    iput-object p1, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 1794
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 1797
    :cond_12
    monitor-exit p0

    return-void

    .line 1792
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .registers 3
    .parameter "font"

    .prologue
    .line 1079
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1080
    iput-object p1, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 1081
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 1083
    :cond_10
    monitor-exit p0

    return-void

    .line 1079
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .registers 2
    .parameter "save"

    .prologue
    .line 766
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    .line 767
    return-void
.end method

.method public setSavePassword(Z)V
    .registers 2
    .parameter "save"

    .prologue
    .line 781
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    .line 782
    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .registers 3
    .parameter "font"

    .prologue
    .line 1098
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1099
    iput-object p1, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 1100
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 1102
    :cond_10
    monitor-exit p0

    return-void

    .line 1098
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowVisualIndicator(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1387
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z

    if-eq v0, p1, :cond_a

    .line 1388
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mShowVisualIndicator:Z

    .line 1389
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1391
    :cond_a
    monitor-exit p0

    return-void

    .line 1387
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .registers 3
    .parameter "shrink"

    .prologue
    .line 1830
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    if-eq v0, p1, :cond_9

    .line 1831
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    .line 1832
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1834
    :cond_9
    return-void
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .registers 3
    .parameter "font"

    .prologue
    .line 1041
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1042
    iput-object p1, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 1043
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 1045
    :cond_10
    monitor-exit p0

    return-void

    .line 1041
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .registers 3
    .parameter "support"

    .prologue
    .line 996
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_a

    .line 997
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    .line 998
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1000
    :cond_a
    monitor-exit p0

    return-void

    .line 996
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .registers 4
    .parameter "support"

    .prologue
    .line 631
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    .line 632
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 633
    return-void
.end method

.method declared-synchronized setSyntheticLinksEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1909
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSyntheticLinksEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1910
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSyntheticLinksEnabled:Z

    .line 1911
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1913
    :cond_a
    monitor-exit p0

    return-void

    .line 1909
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextSize(Landroid/webkit/WebSettings$TextSize;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 822
    monitor-enter p0

    :try_start_1
    iget v0, p1, Landroid/webkit/WebSettings$TextSize;->value:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 823
    monitor-exit p0

    return-void

    .line 822
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .registers 6
    .parameter "textZoom"

    .prologue
    .line 796
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/webkit/WebSettings;->mTextSize:I

    if-eq v0, p1, :cond_27

    .line 797
    sget-boolean v0, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v0, :cond_22

    .line 798
    const v0, 0x11207

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/webkit/WebSettings;->mTextSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 801
    :cond_22
    iput p1, p0, Landroid/webkit/WebSettings;->mTextSize:I

    .line 802
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 804
    :cond_27
    monitor-exit p0

    return-void

    .line 796
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUAProfile(Ljava/lang/String;)V
    .registers 3
    .parameter "uaProfile"

    .prologue
    .line 2166
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/webkit/WebSettings;->mUAProfile:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2167
    monitor-exit p0

    return-void

    .line 2166
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUAStringID(Ljava/lang/String;)V
    .registers 3
    .parameter "uaStringID"

    .prologue
    .line 2118
    monitor-enter p0

    if-eqz p1, :cond_b

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 2119
    iput-object p1, p0, Landroid/webkit/WebSettings;->mUaStringID:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 2120
    :cond_b
    monitor-exit p0

    return-void

    .line 2118
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUAStringModel(Ljava/lang/String;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 2046
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/webkit/WebSettings;->mUAStringModel:Ljava/lang/String;

    .line 2047
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 2048
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 2049
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDeviceId:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 2052
    :cond_12
    monitor-exit p0

    return-void

    .line 2046
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .registers 2
    .parameter "use"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 913
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method setUseFixedViewport(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 1865
    return-void
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .registers 2
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 749
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundForOverscroll:Z

    .line 750
    return-void
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .registers 3
    .parameter "use"

    .prologue
    .line 977
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    if-eq v0, p1, :cond_a

    .line 978
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    .line 979
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 981
    :cond_a
    monitor-exit p0

    return-void

    .line 977
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .registers 5
    .parameter "ua"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 934
    monitor-enter p0

    const/4 v0, 0x0

    .line 935
    .local v0, uaString:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    .line 936
    :try_start_5
    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_17

    move-result v1

    if-eqz v1, :cond_11

    .line 951
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 939
    :cond_11
    :try_start_11
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    .line 950
    :cond_13
    :goto_13
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    goto :goto_f

    .line 934
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1

    .line 941
    :cond_1a
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2a

    .line 942
    :try_start_1d
    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 945
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_17

    goto :goto_13

    .line 947
    :cond_2a
    if-eqz p1, :cond_13

    goto :goto_f
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .registers 6
    .parameter "ua"

    .prologue
    .line 1697
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4b

    .line 1698
    :cond_9
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_48

    .line 1699
    :try_start_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1700
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1701
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1702
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1704
    :cond_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_45

    .line 1705
    :try_start_21
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 1707
    iput-object p1, p0, Landroid/webkit/WebSettings;->mUserAgentAndroid:Ljava/lang/String;

    .line 1709
    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgentAndroid:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "3.2.1"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettings;->mUserAgentAndroid:Ljava/lang/String;

    .line 1712
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    .line 1717
    .end local v0           #currentLocale:Ljava/util/Locale;
    :goto_36
    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1718
    iput-object p1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 1719
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_43
    .catchall {:try_start_21 .. :try_end_43} :catchall_48

    .line 1721
    :cond_43
    monitor-exit p0

    return-void

    .line 1704
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    .line 1697
    :catchall_48
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1714
    :cond_4b
    const/4 v1, 0x0

    :try_start_4c
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_48

    goto :goto_36
.end method

.method public declared-synchronized setWebSelectionType(I)V
    .registers 4
    .parameter "type"

    .prologue
    .line 2096
    monitor-enter p0

    const/16 v0, 0x39

    :try_start_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_19

    const/16 v0, 0x3a

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_19

    const/16 v0, 0x18

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_19

    const/16 v0, 0x90

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_1a

    .line 2103
    :cond_19
    const/4 p1, 0x0

    .line 2106
    :cond_1a
    iget v0, p0, Landroid/webkit/WebSettings;->mWebSelectionType:I
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_28

    if-ne v0, p1, :cond_20

    .line 2112
    :goto_1e
    monitor-exit p0

    return-void

    .line 2108
    :cond_20
    :try_start_20
    iput p1, p0, Landroid/webkit/WebSettings;->mWebSelectionType:I

    .line 2110
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebSelectionType(I)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_28

    goto :goto_1e

    .line 2096
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWifiProxyEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 2139
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7

    if-eqz v0, :cond_5

    .line 2143
    :cond_5
    monitor-exit p0

    return-void

    .line 2139
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWifiProxySettings(Ljava/lang/String;I)V
    .registers 4
    .parameter "host"
    .parameter "port"

    .prologue
    .line 2146
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7

    if-eqz v0, :cond_5

    .line 2150
    :cond_5
    monitor-exit p0

    return-void

    .line 2146
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorkersEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1583
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1584
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    .line 1585
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1587
    :cond_a
    monitor-exit p0

    return-void

    .line 1583
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setXSSAuditorEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 1606
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mXSSAuditorEnabled:Z

    if-eq v0, p1, :cond_a

    .line 1607
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mXSSAuditorEnabled:Z

    .line 1608
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1610
    :cond_a
    monitor-exit p0

    return-void

    .line 1606
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .registers 2

    .prologue
    .line 1008
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method supportTouchOnly()Z
    .registers 2

    .prologue
    .line 624
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    return v0
.end method

.method public supportZoom()Z
    .registers 2

    .prologue
    .line 639
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    return v0
.end method

.method declared-synchronized syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V
    .registers 6
    .parameter "frame"

    .prologue
    .line 1986
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 1991
    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v2, "WebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1993
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    if-lez v1, :cond_1a

    .line 1994
    const-string v1, "double_tap_toast_count"

    sget v2, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    .line 1997
    :cond_1a
    iget v1, p1, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v1}, Landroid/webkit/WebSettings;->nativeSync(I)V

    .line 1998
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    .line 1999
    iget-object v1, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    #calls: Landroid/webkit/WebSettings$EventHandler;->createHandler()V
    invoke-static {v1}, Landroid/webkit/WebSettings$EventHandler;->access$900(Landroid/webkit/WebSettings$EventHandler;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 2000
    monitor-exit p0

    return-void

    .line 1986
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method
