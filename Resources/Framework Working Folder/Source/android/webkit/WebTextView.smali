.class Landroid/webkit/WebTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "WebTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebTextView$AutoCompleteAdapter;,
        Landroid/webkit/WebTextView$WebTextViewLayout;,
        Landroid/webkit/WebTextView$BackgroundDrawable;,
        Landroid/webkit/WebTextView$MyResultReceiver;
    }
.end annotation


# static fields
.field private static final AUTOFILL_FORM:I = 0x64

.field private static final EMAIL:I = 0x4

.field static final FORM_NOT_AUTOFILLABLE:I = -0x1

.field static final LOGTAG:Ljava/lang/String; = "webtextview"

.field private static final NORMAL_TEXT_FIELD:I = 0x0

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final NUMBER:I = 0x5

.field private static final PASSWORD:I = 0x2

.field private static final SEARCH:I = 0x3

.field private static final TELEPHONE:I = 0x6

.field private static final TEXT_AREA:I = 0x1

.field private static final URL:I = 0x7

.field private static final bArabicDisplay:Z

.field private static sOuterRingColor:I


# instance fields
.field private mAutoFillProfileIsSet:Z

.field private mAutoFillable:Z

.field private mCharacter:[C

.field private mDelSelEnd:I

.field private mDelSelStart:I

.field private mDragSent:Z

.field private mDragStartTime:J

.field private mDragStartX:F

.field private mDragStartY:F

.field private mFromFocusChange:Z

.field private mFromSetInputType:Z

.field private mFromWebKit:Z

.field private mGotDelete:Z

.field private mGotEnterDown:Z

.field private mGotTouchDown:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasPerformedLongClick:Z

.field private mHeightSpec:I

.field private mInSetTextAndKeepSelection:Z

.field private mInsideRemove:Z

.field private mMaxLength:I

.field private mNodePointer:I

.field private mPreChange:Ljava/lang/String;

.field private mQueryId:I

.field private mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

.field private mRingInset:I

.field private mScrolled:Z

.field private mSingle:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWidthSpec:I

.field skipSelectionOnce:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x19

    const/4 v1, 0x0

    .line 78
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v0, v2, :cond_b

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v0, v2, :cond_18

    :cond_b
    const/4 v0, 0x1

    :goto_c
    sput-boolean v0, Landroid/webkit/WebTextView;->bArabicDisplay:Z

    .line 130
    new-array v0, v1, [Landroid/text/InputFilter;

    sput-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 179
    const v0, 0x6633b5e5

    sput v0, Landroid/webkit/WebTextView;->sOuterRingColor:I

    return-void

    :cond_18
    move v0, v1

    .line 78
    goto :goto_c
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;I)V
    .registers 11
    .parameter "context"
    .parameter "webView"
    .parameter "autoFillQueryId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 188
    const/4 v3, 0x0

    const v4, 0x10102b9

    invoke-direct {p0, p1, v3, v4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    const/4 v3, 0x1

    new-array v3, v3, [C

    iput-object v3, p0, Landroid/webkit/WebTextView;->mCharacter:[C

    .line 1025
    iput-boolean v6, p0, Landroid/webkit/WebTextView;->skipSelectionOnce:Z

    .line 189
    iput-object p2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    .line 190
    iput v5, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 191
    invoke-virtual {p0, p3}, Landroid/webkit/WebTextView;->setAutoFillable(I)V

    .line 194
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 195
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x101

    or-int/lit16 v3, v3, 0x80

    or-int/lit8 v0, v3, 0x4

    .line 197
    .local v0, flags:I
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 202
    const/high16 v3, -0x100

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setTextColor(I)V

    .line 203
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-virtual {p0, v6}, Landroid/webkit/WebTextView;->setIncludeFontPadding(Z)V

    .line 208
    new-instance v3, Landroid/webkit/WebTextView$1;

    invoke-direct {v3, p0}, Landroid/webkit/WebTextView$1;-><init>(Landroid/webkit/WebTextView;)V

    iput-object v3, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    .line 218
    new-instance v3, Landroid/webkit/WebTextView$MyResultReceiver;

    iget-object v4, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebTextView$MyResultReceiver;-><init>(Landroid/webkit/WebTextView;Landroid/os/Handler;)V

    iput-object v3, p0, Landroid/webkit/WebTextView;->mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

    .line 219
    const/high16 v3, 0x4000

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v3, v4

    .line 220
    .local v2, ringWidth:F
    float-to-int v3, v2

    iput v3, p0, Landroid/webkit/WebTextView;->mRingInset:I

    .line 222
    invoke-static {p1}, Landroid/webkit/WebViewThemeable;->getHighlightColor(Landroid/content/Context;)I

    move-result v3

    sput v3, Landroid/webkit/WebTextView;->sOuterRingColor:I

    .line 224
    new-instance v3, Landroid/webkit/WebTextView$BackgroundDrawable;

    iget v4, p0, Landroid/webkit/WebTextView;->mRingInset:I

    invoke-direct {v3, v4}, Landroid/webkit/WebTextView$BackgroundDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 227
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebTextView;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebTextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/WebTextView;->mQueryId:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 76
    sget v0, Landroid/webkit/WebTextView;->sOuterRingColor:I

    return v0
.end method

.method private lineUpScroll()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 470
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 471
    .local v0, layout:Landroid/text/Layout;
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_28

    if-eqz v0, :cond_28

    .line 472
    iget-boolean v3, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v3, :cond_29

    .line 474
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 479
    .local v1, maxScrollX:F
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    cmpl-float v4, v1, v2

    if-lez v4, :cond_25

    iget v2, p0, Landroid/webkit/WebTextView;->mScrollX:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    :cond_25
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->scrollFocusedTextInputX(F)V

    .line 486
    .end local v1           #maxScrollX:F
    :cond_28
    :goto_28
    return-void

    .line 483
    :cond_29
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v3, p0, Landroid/webkit/WebTextView;->mScrollY:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->scrollFocusedTextInputY(I)V

    goto :goto_28
.end method

.method private sendDomEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 870
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 871
    return-void
.end method

.method private setMaxLength(I)V
    .registers 5
    .parameter "maxLength"

    .prologue
    .line 962
    iput p1, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 963
    const/4 v0, -0x1

    if-ne v0, p1, :cond_b

    .line 964
    sget-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 969
    :goto_a
    return-void

    .line 966
    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_a
.end method

.method static urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "urlString"

    .prologue
    .line 1201
    const/4 v1, 0x0

    .line 1203
    .local v1, url:Ljava/net/URL;
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_31

    .end local v1           #url:Ljava/net/URL;
    .local v2, url:Ljava/net/URL;
    move-object v1, v2

    .line 1208
    .end local v2           #url:Ljava/net/URL;
    .restart local v1       #url:Ljava/net/URL;
    :goto_7
    if-eqz v1, :cond_4c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_30
    return-object v3

    .line 1204
    :catch_31
    move-exception v0

    .line 1205
    .local v0, e:Ljava/net/MalformedURLException;
    const-string/jumbo v3, "webtextview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1208
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_4c
    const/4 v3, 0x0

    goto :goto_30
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 18
    .parameter "event"

    .prologue
    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 287
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 438
    :goto_a
    return v1

    .line 290
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_29

    const/4 v7, 0x1

    .line 291
    .local v7, down:Z
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 293
    .local v9, keyCode:I
    const/4 v8, 0x0

    .line 294
    .local v8, isArrowKey:Z
    packed-switch v9, :pswitch_data_162

    .line 303
    :goto_1b
    const/16 v1, 0x3d

    if-ne v1, v9, :cond_2d

    .line 304
    if-eqz v7, :cond_27

    .line 305
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->onEditorAction(I)V

    .line 307
    :cond_27
    const/4 v1, 0x1

    goto :goto_a

    .line 290
    .end local v7           #down:Z
    .end local v8           #isArrowKey:Z
    .end local v9           #keyCode:I
    :cond_29
    const/4 v7, 0x0

    goto :goto_13

    .line 299
    .restart local v7       #down:Z
    .restart local v8       #isArrowKey:Z
    .restart local v9       #keyCode:I
    :pswitch_2b
    const/4 v8, 0x1

    goto :goto_1b

    .line 309
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 310
    .local v15, text:Landroid/text/Spannable;
    invoke-static {v15}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v12

    .line 311
    .local v12, oldStart:I
    invoke-static {v15}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v11

    .line 316
    .local v11, oldEnd:I
    const/16 v1, 0x43

    if-ne v1, v9, :cond_55

    .line 317
    if-nez v12, :cond_46

    if-nez v11, :cond_46

    .line 318
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 319
    const/4 v1, 0x1

    goto :goto_a

    .line 321
    :cond_46
    if-eqz v7, :cond_55

    .line 322
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 323
    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    .line 324
    move-object/from16 v0, p0

    iput v11, v0, Landroid/webkit/WebTextView;->mDelSelEnd:I

    .line 328
    :cond_55
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v1, :cond_94

    const/16 v1, 0x42

    if-eq v1, v9, :cond_63

    const/16 v1, 0xa0

    if-ne v1, v9, :cond_94

    .line 330
    :cond_63
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 331
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_a

    .line 333
    :cond_6e
    if-nez v7, :cond_8e

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 339
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v9}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 340
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 342
    :cond_8e
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_a

    .line 343
    :cond_94
    const/16 v1, 0x17

    if-ne v1, v9, :cond_b3

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 346
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_a

    .line 349
    :cond_a4
    if-nez v7, :cond_ad

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 353
    :cond_ad
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_a

    .line 357
    :cond_b3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_c6

    .line 358
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mWidthSpec:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mHeightSpec:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 361
    :cond_c6
    invoke-interface {v15}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 362
    .local v3, oldLength:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_100

    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    if-ne v3, v1, :cond_100

    const/4 v10, 0x1

    .line 367
    .local v10, maxedOut:Z
    :goto_d8
    if-eqz v10, :cond_102

    if-eq v11, v12, :cond_102

    .line 368
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 372
    .local v13, oldText:Ljava/lang/String;
    :goto_e0
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 383
    const/16 v1, 0x42

    if-eq v1, v9, :cond_ee

    const/16 v1, 0xa0

    if-ne v1, v9, :cond_f3

    .line 388
    :cond_ee
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    .line 390
    :cond_f3
    if-eqz v10, :cond_12e

    if-nez v8, :cond_12e

    const/16 v1, 0x43

    if-eq v9, v1, :cond_12e

    .line 391
    if-ne v11, v12, :cond_105

    .line 393
    const/4 v1, 0x1

    goto/16 :goto_a

    .line 362
    .end local v10           #maxedOut:Z
    .end local v13           #oldText:Ljava/lang/String;
    :cond_100
    const/4 v10, 0x0

    goto :goto_d8

    .line 370
    .restart local v10       #maxedOut:Z
    :cond_102
    const-string v13, ""

    .restart local v13       #oldText:Ljava/lang/String;
    goto :goto_e0

    .line 394
    :cond_105
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12e

    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v14

    .line 402
    .local v14, span:Landroid/text/Spannable;
    invoke-static {v14}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 403
    .local v5, newStart:I
    invoke-static {v14}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 404
    .local v6, newEnd:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 406
    const/4 v1, 0x1

    goto/16 :goto_a

    .line 421
    .end local v5           #newStart:I
    .end local v6           #newEnd:I
    .end local v14           #span:Landroid/text/Spannable;
    :cond_12e
    const/4 v1, 0x1

    goto/16 :goto_a

    .line 425
    :cond_131
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    if-eqz v1, :cond_13c

    if-nez v7, :cond_13c

    .line 426
    const/4 v1, 0x1

    goto/16 :goto_a

    .line 429
    :cond_13c
    if-eqz v8, :cond_15f

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->resetTrackballTime()V

    .line 435
    if-eqz v7, :cond_153

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v9, v0}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_a

    :cond_153
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v9, v0}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_a

    .line 438
    :cond_15f
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 294
    :pswitch_data_162
    .packed-switch 0x13
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method ensureLayout()V
    .registers 7

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_26

    .line 444
    iget v1, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    iget v2, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 445
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 446
    .local v0, params:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-eqz v0, :cond_26

    .line 447
    iget v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/webkit/WebTextView;->layout(IIII)V

    .line 451
    .end local v0           #params:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_26
    return-void
.end method

.method getResultReceiver()Landroid/os/ResultReceiver;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Landroid/webkit/WebTextView;->mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

    return-object v0
.end method

.method isSameTextField(I)Z
    .registers 3
    .parameter "ptr"

    .prologue
    .line 463
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .registers 7
    .parameter "w"
    .parameter "hintWidth"
    .parameter "boring"
    .parameter "hintBoring"
    .parameter "ellipsisWidth"
    .parameter "bringIntoView"

    .prologue
    .line 493
    invoke-super/range {p0 .. p6}, Landroid/widget/AutoCompleteTextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 495
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 496
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .parameter "outAttrs"

    .prologue
    .line 535
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 536
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_2d

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 542
    :cond_2d
    return-object v0
.end method

.method public onEditorAction(I)V
    .registers 6
    .parameter "actionCode"

    .prologue
    const/16 v3, 0x42

    const/4 v2, 0x0

    .line 547
    packed-switch p1, :pswitch_data_40

    .line 573
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 549
    :pswitch_7
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeMoveCursorToNextTextInput()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 552
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 553
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 554
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_6

    .line 558
    :pswitch_1d
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onEditorAction(I)V

    goto :goto_6

    .line 563
    :pswitch_21
    iget-object v0, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 565
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 567
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_6

    .line 547
    :pswitch_data_40
    .packed-switch 0x2
        :pswitch_21
        :pswitch_21
        :pswitch_6
        :pswitch_7
        :pswitch_1d
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 578
    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 579
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 580
    if-eqz p1, :cond_11

    .line 581
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setActive(Z)V

    .line 585
    :cond_e
    :goto_e
    iput-boolean v1, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 586
    return-void

    .line 582
    :cond_11
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    if-nez v0, :cond_e

    .line 583
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setActive(Z)V

    goto :goto_e
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_1e

    if-nez p3, :cond_1e

    .line 594
    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 596
    .local v0, settings:Landroid/webkit/WebSettings;
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mAutoFillProfileIsSet:Z

    if-eqz v1, :cond_1f

    .line 598
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Landroid/webkit/WebTextView;->mQueryId:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->autoFillForm(I)V

    .line 607
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_1e
    :goto_1e
    return-void

    .line 603
    .restart local v0       #settings:Landroid/webkit/WebSettings;
    :cond_1f
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebChromeClient;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_1e
.end method

.method protected onScrollChanged(IIII)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 611
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onScrollChanged(IIII)V

    .line 612
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 613
    return-void
.end method

.method protected onSelectionChanged(II)V
    .registers 4
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 617
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-nez v0, :cond_1c

    .line 623
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setSelection(II)V

    .line 624
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 626
    :cond_1c
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 22
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 631
    invoke-super/range {p0 .. p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 632
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 637
    .local v13, postChange:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    if-le v2, v3, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 727
    :cond_3f
    :goto_3f
    return-void

    .line 642
    :cond_40
    if-nez p4, :cond_99

    .line 643
    if-lez p3, :cond_93

    .line 645
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    .line 646
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    if-eqz v2, :cond_88

    .line 647
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 648
    add-int v12, p2, p3

    .line 649
    .local v12, oldEnd:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelEnd:I

    if-ne v2, v12, :cond_88

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    move/from16 v0, p2

    if-eq v2, v0, :cond_6d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    if-ne v2, v12, :cond_88

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_88

    .line 654
    :cond_6d
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x43

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 656
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x43

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_3f

    .line 663
    .end local v12           #oldEnd:I
    :cond_88
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->deleteSelection(II)V

    .line 665
    :cond_93
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    goto :goto_3f

    .line 675
    :cond_99
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 678
    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_d3

    add-int/lit8 v2, p4, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_d3

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 681
    .local v14, replaceButOne:Ljava/lang/String;
    add-int v2, p2, p3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 683
    .local v15, replacedString:Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 685
    add-int p2, p2, p3

    .line 686
    const/16 p3, 0x0

    .line 687
    const/16 p4, 0x1

    .line 690
    .end local v14           #replaceButOne:Ljava/lang/String;
    .end local v15           #replacedString:Ljava/lang/String;
    :cond_d3
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 694
    const/4 v8, 0x0

    .line 695
    .local v8, events:[Landroid/view/KeyEvent;
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_fa

    .line 696
    add-int v2, p2, p4

    add-int/lit8 v2, v2, -0x1

    add-int v3, p2, p4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 697
    const/4 v2, -0x1

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v10

    .line 698
    .local v10, kmap:Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    invoke-virtual {v10, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v8

    .line 700
    .end local v10           #kmap:Landroid/view/KeyCharacterMap;
    :cond_fa
    if-eqz v8, :cond_12b

    const/16 v16, 0x1

    .line 701
    .local v16, useKeyEvents:Z
    :goto_fe
    if-eqz v16, :cond_12e

    .line 708
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-nez v2, :cond_111

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->setSelection(II)V

    .line 711
    :cond_111
    array-length v11, v8

    .line 712
    .local v11, length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_113
    if-ge v9, v11, :cond_14b

    .line 715
    aget-object v2, v8, v9

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_128

    .line 716
    aget-object v2, v8, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 712
    :cond_128
    add-int/lit8 v9, v9, 0x1

    goto :goto_113

    .line 700
    .end local v9           #i:I
    .end local v11           #length:I
    .end local v16           #useKeyEvents:Z
    :cond_12b
    const/16 v16, 0x0

    goto :goto_fe

    .line 720
    .restart local v16       #useKeyEvents:Z
    :cond_12e
    add-int v2, p2, p4

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 722
    .local v5, replace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v4, p2, p3

    add-int v6, p2, p4

    add-int v7, p2, p4

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 726
    .end local v5           #replace:Ljava/lang/String;
    :cond_14b
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto/16 :goto_3f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    .line 731
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_ee

    .line 812
    :goto_7
    const/4 v8, 0x1

    :goto_8
    return v8

    .line 733
    :pswitch_9
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    .line 737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    .line 738
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    .line 739
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 740
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 741
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 742
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    goto :goto_7

    .line 745
    :pswitch_2b
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_34

    .line 746
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 747
    const/4 v8, 0x0

    goto :goto_8

    .line 749
    :cond_34
    iget-object v8, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 750
    .local v6, slop:I
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 751
    .local v0, buffer:Landroid/text/Spannable;
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 752
    .local v3, initialScrollX:I
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v4

    .line 753
    .local v4, initialScrollY:I
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 754
    iget v8, p0, Landroid/webkit/WebTextView;->mScrollX:I

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 755
    .local v1, dx:I
    iget v8, p0, Landroid/webkit/WebTextView;->mScrollY:I

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 759
    .local v2, dy:I
    div-int/lit8 v7, v6, 0x2

    .line 760
    .local v7, smallerSlop:I
    if-gt v1, v7, :cond_61

    if-le v2, v7, :cond_69

    .line 762
    :cond_61
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 763
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 764
    const/4 v8, 0x1

    goto :goto_8

    .line 766
    :cond_69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_90

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_90

    .line 771
    const/4 v8, 0x1

    goto/16 :goto_8

    .line 773
    :cond_90
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_b7

    .line 775
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-nez v8, :cond_a6

    .line 776
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    iget-wide v11, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebView;->initiateTextFieldDrag(FFJ)V

    .line 778
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 780
    :cond_a6
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->textFieldDrag(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 781
    .local v5, scrolled:Z
    if-eqz v5, :cond_b7

    .line 782
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 783
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 784
    const/4 v8, 0x1

    goto/16 :goto_8

    .line 787
    .end local v5           #scrolled:Z
    :cond_b7
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 790
    .end local v0           #buffer:Landroid/text/Spannable;
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #initialScrollX:I
    .end local v4           #initialScrollY:I
    .end local v6           #slop:I
    .end local v7           #smallerSlop:I
    :pswitch_ba
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 791
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_c7

    .line 792
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 793
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 795
    :cond_c7
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    if-nez v8, :cond_db

    .line 798
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 799
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    if-eqz v8, :cond_db

    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_db

    .line 800
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->touchUpOnTextField(Landroid/view/MotionEvent;)V

    .line 804
    :cond_db
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_e8

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-eqz v8, :cond_e8

    .line 805
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 807
    :cond_e8
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    goto/16 :goto_7

    .line 731
    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_9
        :pswitch_ba
        :pswitch_2b
        :pswitch_ba
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 817
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 818
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 830
    :cond_b
    :goto_b
    return v2

    .line 820
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 823
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 824
    .local v1, text:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 825
    .local v0, move:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 828
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public performLongClick()Z
    .registers 2

    .prologue
    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    .line 836
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method remove()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 845
    iget-object v2, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 846
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 847
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 849
    :cond_14
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    .line 850
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v1

    .line 851
    .local v1, isFocused:Z
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 852
    if-eqz v1, :cond_27

    .line 853
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 855
    :cond_27
    iput-boolean v3, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    .line 856
    iget-object v2, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 857
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .registers 4
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 862
    const/4 v0, 0x1

    return v0
.end method

.method public setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 878
    if-eqz p1, :cond_22

    .line 879
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 881
    #calls: Landroid/webkit/WebTextView$AutoCompleteAdapter;->setTextView(Landroid/widget/TextView;)V
    invoke-static {p1, p0}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->access$300(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V

    .line 882
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    if-eqz v0, :cond_1d

    .line 883
    invoke-virtual {p0, p0}, Landroid/webkit/WebTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 887
    :goto_16
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->showDropDown()V

    .line 891
    :goto_19
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 892
    return-void

    .line 885
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_16

    .line 889
    :cond_22
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->dismissDropDown()V

    goto :goto_19
.end method

.method setAutoFillProfileIsSet(Z)V
    .registers 2
    .parameter "autoFillProfileIsSet"

    .prologue
    .line 1196
    iput-boolean p1, p0, Landroid/webkit/WebTextView;->mAutoFillProfileIsSet:Z

    .line 1197
    return-void
.end method

.method public setAutoFillable(I)V
    .registers 3
    .parameter "queryId"

    .prologue
    .line 273
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAutoFillEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, -0x1

    if-eq p1, v0, :cond_15

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    .line 275
    iput p1, p0, Landroid/webkit/WebTextView;->mQueryId:I

    .line 276
    return-void

    .line 273
    :cond_15
    const/4 v0, 0x0

    goto :goto_10
.end method

.method setDefaultSelection()V
    .registers 4

    .prologue
    .line 933
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 934
    .local v1, text:Landroid/text/Spannable;
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 935
    .local v0, selection:I
    :goto_c
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2d

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2d

    .line 945
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_21

    .line 946
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v0}, Landroid/webkit/WebView;->setSelection(II)V

    .line 951
    :cond_21
    :goto_21
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->incrementTextGeneration()V

    .line 952
    :cond_2a
    return-void

    .line 934
    .end local v0           #selection:I
    :cond_2b
    const/4 v0, 0x0

    goto :goto_c

    .line 949
    .restart local v0       #selection:I
    :cond_2d
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_21
.end method

.method public setGravityForRtl(Z)V
    .registers 4
    .parameter "rtl"

    .prologue
    const/4 v0, 0x5

    .line 1214
    sget-boolean v1, Landroid/webkit/WebTextView;->bArabicDisplay:Z

    if-nez v1, :cond_14

    .line 1216
    if-eqz p1, :cond_12

    .line 1222
    .local v0, gravity:I
    :goto_7
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v1, :cond_1b

    const/16 v1, 0x10

    :goto_d
    or-int/2addr v0, v1

    .line 1223
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 1224
    return-void

    .line 1216
    .end local v0           #gravity:I
    :cond_12
    const/4 v0, 0x3

    goto :goto_7

    .line 1219
    :cond_14
    if-eqz p1, :cond_17

    .restart local v0       #gravity:I
    :goto_16
    goto :goto_7

    .end local v0           #gravity:I
    :cond_17
    const v0, 0x800003

    goto :goto_16

    .line 1222
    .restart local v0       #gravity:I
    :cond_1b
    const/16 v1, 0x30

    goto :goto_d
.end method

.method public setInputType(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 957
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 959
    return-void
.end method

.method setNodePointer(I)V
    .registers 4
    .parameter "ptr"

    .prologue
    const/4 v1, 0x0

    .line 978
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-eq p1, v0, :cond_d

    .line 979
    iput p1, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    .line 980
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 981
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    .line 983
    :cond_d
    return-void
.end method

.method public setPadding(IIII)V
    .registers 9
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 280
    iget v0, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v1, p2

    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v2, p3

    iget v3, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 282
    return-void
.end method

.method setRect(IIII)V
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v4, 0x4000

    .line 996
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 997
    .local v0, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    sub-int/2addr p1, v2

    .line 998
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    sub-int/2addr p2, v2

    .line 999
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p3, v2

    .line 1000
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p4, v2

    .line 1001
    const/4 v1, 0x0

    .line 1002
    .local v1, needsUpdate:Z
    if-nez v0, :cond_39

    .line 1003
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v0, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1014
    .restart local v0       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_20
    :goto_20
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_53

    .line 1016
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1021
    :cond_2c
    :goto_2c
    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    .line 1022
    invoke-static {p4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    .line 1023
    return-void

    .line 1005
    :cond_39
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v2, p1, :cond_49

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-ne v2, p2, :cond_49

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    if-ne v2, p3, :cond_49

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    if-eq v2, p4, :cond_20

    .line 1007
    :cond_49
    const/4 v1, 0x1

    .line 1008
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1009
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1010
    iput p3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 1011
    iput p4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_20

    .line 1017
    :cond_53
    if-eqz v1, :cond_2c

    .line 1018
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2c
.end method

.method setSelectionFromWebKit(II)V
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 1035
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->skipSelectionOnce:Z

    if-eqz v2, :cond_8

    .line 1036
    iput-boolean v3, p0, Landroid/webkit/WebTextView;->skipSelectionOnce:Z

    .line 1046
    :cond_7
    :goto_7
    return-void

    .line 1039
    :cond_8
    if-ltz p1, :cond_7

    if-ltz p2, :cond_7

    .line 1040
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1041
    .local v1, text:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 1042
    .local v0, length:I
    if-gt p1, v0, :cond_7

    if-gt p2, v0, :cond_7

    .line 1043
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 1044
    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1045
    iput-boolean v3, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    goto :goto_7
.end method

.method setTextAndKeepSelection(Ljava/lang/String;)V
    .registers 9
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 1068
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1069
    .local v0, edit:Landroid/text/Editable;
    iput-object p1, p0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 1070
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1089
    :goto_11
    return-void

    .line 1073
    :cond_12
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1074
    .local v4, selStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1075
    .local v3, selEnd:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 1076
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v0, v6, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1077
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1078
    .local v2, newLength:I
    if-le v4, v2, :cond_2b

    move v4, v2

    .line 1079
    :cond_2b
    if-le v3, v2, :cond_2e

    move v3, v2

    .line 1080
    :cond_2e
    invoke-static {v0, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1081
    iput-boolean v6, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 1082
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1083
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_42

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1086
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1088
    :cond_42
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto :goto_11
.end method

.method setType(I)V
    .registers 11
    .parameter "type"

    .prologue
    const/4 v7, 0x1

    .line 1100
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-nez v6, :cond_6

    .line 1186
    :cond_5
    :goto_5
    return-void

    .line 1101
    :cond_6
    const/4 v5, 0x1

    .line 1102
    .local v5, single:Z
    const/4 v3, -0x1

    .line 1103
    .local v3, maxLength:I
    const/16 v2, 0xa1

    .line 1105
    .local v2, inputType:I
    const/high16 v1, 0x1200

    .line 1107
    .local v1, imeOptions:I
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateIsSpellcheck()Z

    move-result v6

    if-nez v6, :cond_17

    .line 1108
    const/high16 v6, 0x8

    or-int/2addr v2, v6

    .line 1110
    :cond_17
    if-eq v7, p1, :cond_24

    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateHasNextTextfield()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1112
    const/high16 v6, 0x800

    or-int/2addr v1, v6

    .line 1114
    :cond_24
    packed-switch p1, :pswitch_data_a8

    .line 1157
    or-int/lit8 v1, v1, 0x2

    .line 1161
    :goto_29
    invoke-virtual {p0, v7}, Landroid/webkit/WebTextView;->setThreshold(I)V

    .line 1162
    const/4 v0, 0x0

    .line 1163
    .local v0, autoComplete:Z
    if-eqz v5, :cond_68

    .line 1164
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v7, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->nativeFocusCandidateFramePointer()I

    move-result v7

    iget v8, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebView;->requestLabel(II)V

    .line 1166
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateMaxLength()I

    move-result v3

    .line 1167
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateIsAutoComplete()Z

    move-result v0

    .line 1168
    const/4 v6, 0x2

    if-eq p1, v6, :cond_68

    iget-boolean v6, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    if-nez v6, :cond_51

    if-eqz v0, :cond_68

    .line 1169
    :cond_51
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v4

    .line 1170
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_68

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_68

    .line 1171
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v7, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    invoke-virtual {v6, v4, v7, v8, v0}, Landroid/webkit/WebView;->requestFormData(Ljava/lang/String;IZZ)V

    .line 1176
    .end local v4           #name:Ljava/lang/String;
    :cond_68
    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mSingle:Z

    .line 1177
    invoke-direct {p0, v3}, Landroid/webkit/WebTextView;->setMaxLength(I)V

    .line 1178
    invoke-virtual {p0, v5}, Landroid/webkit/WebTextView;->setHorizontallyScrolling(Z)V

    .line 1179
    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 1180
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->clearComposingText()V

    .line 1181
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setImeOptions(I)V

    .line 1182
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/webkit/WebTextView;->setVisibility(I)V

    .line 1183
    if-nez v0, :cond_5

    .line 1184
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto :goto_5

    .line 1116
    .end local v0           #autoComplete:Z
    :pswitch_84
    or-int/lit8 v1, v1, 0x2

    .line 1117
    goto :goto_29

    .line 1119
    :pswitch_87
    const/4 v5, 0x0

    .line 1120
    const v6, 0x2c000

    or-int/2addr v2, v6

    .line 1123
    or-int/lit8 v1, v1, 0x1

    .line 1124
    goto :goto_29

    .line 1126
    :pswitch_8f
    or-int/lit16 v2, v2, 0xe0

    .line 1127
    or-int/lit8 v1, v1, 0x2

    .line 1128
    goto :goto_29

    .line 1130
    :pswitch_94
    or-int/lit8 v1, v1, 0x3

    .line 1131
    goto :goto_29

    .line 1134
    :pswitch_97
    const/16 v2, 0xd1

    .line 1136
    or-int/lit8 v1, v1, 0x2

    .line 1137
    goto :goto_29

    .line 1140
    :pswitch_9c
    const/16 v2, 0x3002

    .line 1144
    or-int/lit8 v1, v1, 0x5

    .line 1145
    goto :goto_29

    .line 1148
    :pswitch_a1
    const/4 v2, 0x3

    .line 1149
    or-int/lit8 v1, v1, 0x5

    .line 1150
    goto :goto_29

    .line 1154
    :pswitch_a5
    or-int/lit8 v1, v1, 0x2

    .line 1155
    goto :goto_29

    .line 1114
    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_84
        :pswitch_87
        :pswitch_8f
        :pswitch_94
        :pswitch_97
        :pswitch_9c
        :pswitch_a1
        :pswitch_a5
    .end packed-switch
.end method

.method updateCachedTextfield()V
    .registers 3

    .prologue
    .line 1192
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateCachedTextfield(Ljava/lang/String;)V

    .line 1193
    return-void
.end method

.method updateTextSize()V
    .registers 4

    .prologue
    .line 1053
    const-string/jumbo v1, "updateTextSize should only be called from mWebView, so mWebView should never be null!"

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1057
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()F

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float v0, v1, v2

    .line 1059
    .local v0, size:F
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 1060
    return-void
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 3
    .parameter "imm"

    .prologue
    .line 1027
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->skipSelectionOnce:Z

    .line 1029
    return-void
.end method
