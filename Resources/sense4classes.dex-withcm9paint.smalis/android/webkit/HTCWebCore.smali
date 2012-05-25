.class public Landroid/webkit/HTCWebCore;
.super Ljava/lang/Object;
.source "HTCWebCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTCWebCore$OnWebViewTabEffectListener;,
        Landroid/webkit/HTCWebCore$PositionRect;,
        Landroid/webkit/HTCWebCore$SelectionType;,
        Landroid/webkit/HTCWebCore$EditEventHub;
    }
.end annotation


# static fields
.field static suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

.field private static updateBodyNode:Z


# instance fields
.field private bodyNodePtr:I

.field private bodyNodeRect:Landroid/graphics/Rect;

.field private ignorePictureAfterFirstLayout:Z

.field private mAnchorSpanCallback:Landroid/os/Message;

.field private mClipboard:Landroid/content/ClipboardManager;

.field private mCopiedStyleText:Ljava/lang/String;

.field mEventHub:Landroid/webkit/HTCWebCore$EditEventHub;

.field private mSkipClipboardChang:Z

.field private mWebCore:Landroid/webkit/WebViewCore;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTCWebCore;->updateBodyNode:Z

    .line 410
    new-instance v0, Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-direct {v0}, Lcom/htc/textselection/FetchSuggestionFromIME;-><init>()V

    sput-object v0, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)V
    .registers 5
    .parameter "webcore"
    .parameter "webview"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTCWebCore;->bodyNodeRect:Landroid/graphics/Rect;

    .line 131
    iput v1, p0, Landroid/webkit/HTCWebCore;->bodyNodePtr:I

    .line 409
    new-instance v0, Landroid/webkit/HTCWebCore$EditEventHub;

    invoke-direct {v0, p0}, Landroid/webkit/HTCWebCore$EditEventHub;-><init>(Landroid/webkit/HTCWebCore;)V

    iput-object v0, p0, Landroid/webkit/HTCWebCore;->mEventHub:Landroid/webkit/HTCWebCore$EditEventHub;

    .line 986
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;

    .line 987
    iput-boolean v1, p0, Landroid/webkit/HTCWebCore;->mSkipClipboardChang:Z

    .line 1049
    iput-boolean v1, p0, Landroid/webkit/HTCWebCore;->ignorePictureAfterFirstLayout:Z

    .line 51
    iput-object p1, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    .line 52
    iput-object p2, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    .line 53
    if-eqz p1, :cond_25

    .line 54
    invoke-virtual {p1, p0}, Landroid/webkit/WebViewCore;->setHTCWebCore(Landroid/webkit/HTCWebCore;)V

    .line 56
    :cond_25
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_39

    .line 57
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;

    .line 58
    :cond_39
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTCWebCore;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeModifySelection(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/HTCWebCore;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCore;->nativeDoWordSelection(II)V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/HTCWebCore;IIIII)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p5}, Landroid/webkit/HTCWebCore;->nativeDeleteSurrounding(IIIII)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/HTCWebCore;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeGetHtmlString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeInsertHtmlString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeExportHtml(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeInsertHtml(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/HTCWebCore;Ljava/lang/String;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/HTCWebCore;->nativeInsertImage(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/HTCWebCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeInformColorChanged()V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/HTCWebCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeCopy()V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/HTCWebCore;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeGetCopiedPlainText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Landroid/webkit/HTCWebCore;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeGetCopiedStyleText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/HTCWebCore;IIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/HTCWebCore;->nativeDoSelection(IIZ)V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/webkit/HTCWebCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeCut()V

    return-void
.end method

.method static synthetic access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativePasteWithStyle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativePastePlainText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2502(Landroid/webkit/HTCWebCore;Landroid/os/Message;)Landroid/os/Message;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/webkit/HTCWebCore;->mAnchorSpanCallback:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeInsertAnchorSpan(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/HTCWebCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeCancelAnchorSpan()V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeInsertHtmlContainsAnchorSpan(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/webkit/HTCWebCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeToggleBold()V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/HTCWebCore;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/HTCWebCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeToggleUnderline()V

    return-void
.end method

.method static synthetic access$3100(Landroid/webkit/HTCWebCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeToggleItalic()V

    return-void
.end method

.method static synthetic access$3200(Landroid/webkit/HTCWebCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeToggleStrikethrough()V

    return-void
.end method

.method static synthetic access$3300(Landroid/webkit/HTCWebCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeAlignCenter()V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/HTCWebCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeAlignJustified()V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/HTCWebCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeAlignLeft()V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkit/HTCWebCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->nativeAlignRight()V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeSetForeColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeSetBackColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkit/HTCWebCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeSetFontSize(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/HTCWebCore;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/HTCWebCore;)Landroid/webkit/WebViewCore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$600(Landroid/webkit/HTCWebCore;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeSetEditable(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/HTCWebCore;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCore;->nativeShouldPaintingCaret(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/HTCWebCore;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCore;->nativeInsert(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/HTCWebCore;ILjava/lang/String;IIII)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p6}, Landroid/webkit/HTCWebCore;->nativeComposing(ILjava/lang/String;IIII)V

    return-void
.end method

.method private doAnchorSpanCallBack(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "rect"

    .prologue
    .line 356
    const-string v0, "KENLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback => [HTCWebCore.java] doAnchorSpanCallBack :: R = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mAnchorSpanCallback:Landroid/os/Message;

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    .line 358
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mAnchorSpanCallback:Landroid/os/Message;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mAnchorSpanCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 362
    :cond_27
    return-void
.end method

.method static isNeedGetBodyNode()Z
    .registers 1

    .prologue
    .line 135
    sget-boolean v0, Landroid/webkit/HTCWebCore;->updateBodyNode:Z

    return v0
.end method

.method static final isTablet()Z
    .registers 1

    .prologue
    .line 61
    invoke-static {}, Landroid/webkit/HTCWebCore;->isTabletLarge()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Landroid/webkit/HTCWebCore;->isTabletXLarge()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static final isTabletLarge()Z
    .registers 2

    .prologue
    .line 65
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_18

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_18

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x23

    if-eq v0, v1, :cond_18

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static final isTabletXLarge()Z
    .registers 2

    .prologue
    .line 73
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private native nativeAlignCenter()V
.end method

.method private native nativeAlignJustified()V
.end method

.method private native nativeAlignLeft()V
.end method

.method private native nativeAlignRight()V
.end method

.method private native nativeCancelAnchorSpan()V
.end method

.method private native nativeComposing(ILjava/lang/String;IIII)V
.end method

.method private native nativeCopy()V
.end method

.method private native nativeCut()V
.end method

.method private native nativeDeleteSurrounding(IIIII)V
.end method

.method private native nativeDoSelection(IIZ)V
.end method

.method private native nativeDoSelectionByIndex(IIII)V
.end method

.method private native nativeDoWordSelection(II)V
.end method

.method private native nativeExportHtml(Ljava/lang/String;)Z
.end method

.method private native nativeGetBodyNodeImpl(ILandroid/graphics/Rect;)I
.end method

.method private native nativeGetCopiedPlainText()Ljava/lang/String;
.end method

.method private native nativeGetCopiedStyleText()Ljava/lang/String;
.end method

.method private native nativeGetHtmlString()Ljava/lang/String;
.end method

.method private native nativeInformColorChanged()V
.end method

.method private native nativeInsert(ILjava/lang/String;)V
.end method

.method private native nativeInsertAnchorSpan(Ljava/lang/String;)V
.end method

.method private native nativeInsertHtml(Ljava/lang/String;)Z
.end method

.method private native nativeInsertHtmlContainsAnchorSpan(Ljava/lang/String;)Z
.end method

.method private native nativeInsertHtmlString(Ljava/lang/String;)Z
.end method

.method private native nativeInsertImage(Ljava/lang/String;II)V
.end method

.method private native nativeModifySelection(Z)V
.end method

.method private native nativePastePlainText(Ljava/lang/String;)V
.end method

.method private native nativePasteWithStyle(Ljava/lang/String;)V
.end method

.method private native nativeSetBackColor(Ljava/lang/String;)V
.end method

.method private native nativeSetEditable(Z)V
.end method

.method private native nativeSetFontSize(I)V
.end method

.method private native nativeSetForeColor(Ljava/lang/String;)V
.end method

.method private native nativeShouldPaintingCaret(Z)V
.end method

.method private native nativeToggleBold()V
.end method

.method private native nativeToggleItalic()V
.end method

.method private native nativeToggleStrikethrough()V
.end method

.method private native nativeToggleUnderline()V
.end method


# virtual methods
.method public drawContentPicture(Landroid/graphics/Canvas;IZZ)V
    .registers 6
    .parameter "canvas"
    .parameter "color"
    .parameter "animatingZoom"
    .parameter "animatingScroll"

    .prologue
    .line 88
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 89
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->drawPage(Landroid/graphics/Canvas;)V

    .line 91
    return-void
.end method

.method public getCacheFile(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .registers 4
    .parameter "url"

    .prologue
    .line 171
    invoke-static {}, Landroid/webkit/CacheManager;->endCacheTransaction()Z

    .line 172
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    .line 173
    .local v0, result:Landroid/webkit/CacheManager$CacheResult;
    invoke-static {}, Landroid/webkit/CacheManager;->startCacheTransaction()Z

    .line 174
    return-object v0
.end method

.method public getCopiedStyleText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 991
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;

    return-object v0
.end method

.method public getFontPixelSizeOfTextNodes(Landroid/os/Message;)V
    .registers 4
    .parameter "m"

    .prologue
    .line 287
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 288
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x10f

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 290
    :cond_d
    return-void
.end method

.method public getNodeCapture(III)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "pointer"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v7, 0x0

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    .line 311
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p1, v8, v9}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v3

    .line 313
    .local v3, nodeRect:Landroid/graphics/Rect;
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 351
    :cond_12
    :goto_12
    return-object v7

    .line 316
    :cond_13
    const/high16 v4, 0x3f80

    .line 317
    .local v4, ratio:F
    if-lez p2, :cond_77

    if-lez p3, :cond_77

    .line 318
    int-to-float v8, p2

    mul-float/2addr v8, v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 319
    .local v6, ratioW:F
    int-to-float v8, p3

    mul-float/2addr v8, v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 320
    .local v5, ratioH:F
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 326
    .end local v5           #ratioH:F
    .end local v6           #ratioW:F
    :goto_2f
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    invoke-direct {v1, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 329
    .local v1, clipF:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12

    .line 332
    const/4 v7, 0x0

    .line 334
    .local v7, ret:Landroid/graphics/Bitmap;
    :try_start_47
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 335
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 336
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 338
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 339
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 340
    iget v8, v3, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 344
    iget-object v8, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, v0}, Landroid/webkit/WebView;->drawPage(Landroid/graphics/Canvas;)V
    :try_end_6c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_47 .. :try_end_6c} :catch_6d

    goto :goto_12

    .line 346
    .end local v0           #c:Landroid/graphics/Canvas;
    :catch_6d
    move-exception v2

    .line 347
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "HtcWebCore"

    const-string v9, ""

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    const/4 v7, 0x0

    goto :goto_12

    .line 322
    .end local v1           #clipF:Landroid/graphics/RectF;
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v7           #ret:Landroid/graphics/Bitmap;
    :cond_77
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 323
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p3

    goto :goto_2f
.end method

.method public isIgnorePictureAfterFirstLayout()Z
    .registers 2

    .prologue
    .line 1061
    iget-boolean v0, p0, Landroid/webkit/HTCWebCore;->ignorePictureAfterFirstLayout:Z

    return v0
.end method

.method public isSkipClipboardChang()Z
    .registers 2

    .prologue
    .line 995
    iget-boolean v0, p0, Landroid/webkit/HTCWebCore;->mSkipClipboardChang:Z

    return v0
.end method

.method public isThisWebCoreBlocked()Z
    .registers 2

    .prologue
    .line 1019
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_b

    .line 1020
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->isThisWebCoreBlocked()Z

    move-result v0

    .line 1021
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isWebCoreBlocked()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1027
    iget-object v1, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_15

    .line 1028
    iget-object v1, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->checkBlock()D

    move-result-wide v1

    const-wide v3, 0x40e5f90000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_15

    const/4 v0, 0x1

    .line 1030
    :cond_15
    return v0
.end method

.method public isWebCoreBusy()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1010
    iget-object v1, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_15

    .line 1011
    iget-object v1, p0, Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->checkBlock()D

    move-result-wide v1

    const-wide v3, 0x40c3880000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_15

    const/4 v0, 0x1

    .line 1014
    :cond_15
    return v0
.end method

.method native nativeContentInvalidate(Landroid/graphics/Rect;)V
.end method

.method public native nativeDumpHeap()Z
.end method

.method public native nativeEnableGifAnimation(Z)V
.end method

.method native nativeEnableTextReflowWithBreakWords(Z)V
.end method

.method native nativeFindContinuousBRFromEnd(I)I
.end method

.method public nativeFindNextTableNode(I)I
    .registers 3
    .parameter "pointer"

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HTCWebCore;->nativeFindNextTableNode(IZ)I

    move-result v0

    return v0
.end method

.method public native nativeFindNextTableNode(IZ)I
.end method

.method public native nativeFindNextTextNode(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native nativeFindParagraphBound(IIZLandroid/graphics/Rect;)I
.end method

.method public native nativeFindParagraphBoundByNode(IZLandroid/graphics/Rect;)V
.end method

.method public native nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I
.end method

.method public native nativeForceStopGifAnimation(Z)V
.end method

.method native nativeGetAllAnchorSpan()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method native nativeGetAnchorRect(Landroid/graphics/Rect;Ljava/lang/String;)I
.end method

.method native nativeGetAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)I
.end method

.method native nativeGetBackColor()Ljava/lang/String;
.end method

.method public nativeGetBodyNode(ILandroid/graphics/Rect;)I
    .registers 7
    .parameter "pointer"
    .parameter "contentBound"

    .prologue
    const/4 v3, 0x0

    .line 109
    sget-boolean v1, Landroid/webkit/HTCWebCore;->updateBodyNode:Z

    if-nez v1, :cond_2c

    if-nez p1, :cond_2c

    .line 110
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/HTCWebCore;->updateBodyNode:Z

    .line 111
    iget-object v1, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_22

    .line 112
    iget-object v1, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    .line 113
    .local v0, h:I
    if-gtz v0, :cond_17

    const/4 v0, 0x5

    .line 114
    :cond_17
    iget-object v1, p0, Landroid/webkit/HTCWebCore;->bodyNodeRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 122
    .end local v0           #h:I
    :cond_22
    :goto_22
    if-eqz p2, :cond_29

    .line 123
    iget-object v1, p0, Landroid/webkit/HTCWebCore;->bodyNodeRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 125
    :cond_29
    iget v1, p0, Landroid/webkit/HTCWebCore;->bodyNodePtr:I

    return v1

    .line 117
    :cond_2c
    if-eqz p1, :cond_22

    .line 118
    sput-boolean v3, Landroid/webkit/HTCWebCore;->updateBodyNode:Z

    .line 119
    invoke-virtual {p0, p1}, Landroid/webkit/HTCWebCore;->setBodyNode(I)V

    goto :goto_22
.end method

.method native nativeGetBoldState()I
.end method

.method public native nativeGetCharRect(IILandroid/graphics/Rect;)Z
.end method

.method public native nativeGetCursorPos(IILandroid/graphics/Rect;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native nativeGetFontPixelSizeOfTextNode(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method native nativeGetFontSize()I
.end method

.method native nativeGetForeColor()Ljava/lang/String;
.end method

.method native nativeGetGDInputBoxRect(Landroid/graphics/Rect;)I
.end method

.method public native nativeGetHREF(I)Ljava/lang/String;
.end method

.method native nativeGetHeaderRect(Landroid/graphics/Rect;)I
.end method

.method public native nativeGetImageAttr()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetItalicState()I
.end method

.method public native nativeGetMaxCPUFreq()J
.end method

.method public native nativeGetNodeRect(IZI)Landroid/graphics/Rect;
.end method

.method native nativeGetPureReaderContents(Ljava/util/ArrayList;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method

.method native nativeGetRectOf(Landroid/graphics/Rect;I)V
.end method

.method public native nativeGetRssFeed()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native nativeGetScopeNode(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method native nativeGetStrikethroughState()I
.end method

.method public native nativeGetSurfaceViewBitmap(Landroid/view/Surface;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method public native nativeGetTextBetween(IIII)Ljava/lang/String;
.end method

.method native nativeGetUnderlineState()I
.end method

.method native nativeGetVSbound(Landroid/graphics/Rect;)I
.end method

.method native nativeGetWordRange(IILandroid/graphics/Point;)V
.end method

.method public native nativeHasRssFeed()Z
.end method

.method native nativeInsertHtmlToTheEnd(Ljava/lang/String;)V
.end method

.method public native nativeIsDocumentParsing()Z
.end method

.method public native nativeIsSupportGifAnimUISetting()Z
.end method

.method public native nativeIsTextNode(II)I
.end method

.method public native nativeSaveImage(IILjava/lang/String;Z)Ljava/lang/String;
.end method

.method public native nativeSelectParagraphText(IILandroid/graphics/Rect;)Ljava/lang/String;
.end method

.method public native nativeSetImageAttr(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public native nativeSetSkiaFontCacheSize(J)V
.end method

.method native nativeSetTextUrlDetection(Z)V
.end method

.method public native nativeSmartTouchUp(II)I
.end method

.method public native nativeTrimMemory()V
.end method

.method public native nativeisImageNode(I)Z
.end method

.method public native nativeisTextNode(I)Z
.end method

.method setBodyNode(I)V
    .registers 3
    .parameter "pointer"

    .prologue
    .line 139
    iget-object v0, p0, Landroid/webkit/HTCWebCore;->bodyNodeRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Landroid/webkit/HTCWebCore;->nativeGetBodyNodeImpl(ILandroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Landroid/webkit/HTCWebCore;->bodyNodePtr:I

    .line 140
    return-void
.end method

.method public setCopiedStyleText(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 989
    iput-object p1, p0, Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;

    return-void
.end method

.method public setIgnorePictureAfterFirstLayout(Z)V
    .registers 2
    .parameter "set"

    .prologue
    .line 1054
    iput-boolean p1, p0, Landroid/webkit/HTCWebCore;->ignorePictureAfterFirstLayout:Z

    .line 1055
    return-void
.end method

.method public setSkipClipboardChang(Z)V
    .registers 2
    .parameter "skip"

    .prologue
    .line 993
    iput-boolean p1, p0, Landroid/webkit/HTCWebCore;->mSkipClipboardChang:Z

    return-void
.end method
