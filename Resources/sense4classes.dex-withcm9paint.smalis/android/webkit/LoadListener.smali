.class Landroid/webkit/LoadListener;
.super Landroid/os/Handler;
.source "LoadListener.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HTTP_AUTH:I = 0x191

.field private static final HTTP_FOUND:I = 0x12e

.field private static final HTTP_MOVED_PERMANENTLY:I = 0x12d

.field private static final HTTP_NOT_FOUND:I = 0x194

.field private static final HTTP_NOT_MODIFIED:I = 0x130

.field private static final HTTP_OK:I = 0xc8

.field private static final HTTP_PARTIAL_CONTENT:I = 0xce

.field private static final HTTP_PROXY_AUTH:I = 0x197

.field private static final HTTP_SEE_OTHER:I = 0x12f

.field private static final HTTP_TEMPORARY_REDIRECT:I = 0x133

.field private static final LOADLISTENER_CLS:I = 0x4

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MSG_CONTENT_DATA:I = 0x6e

.field private static final MSG_CONTENT_ERROR:I = 0x82

.field private static final MSG_CONTENT_FINISHED:I = 0x78

.field private static final MSG_CONTENT_HEADERS:I = 0x64

.field private static final MSG_LOCATION_CHANGED:I = 0x8c

.field private static final MSG_LOCATION_CHANGED_REQUEST:I = 0x96

.field private static final MSG_SSL_CERTIFICATE:I = 0xaa

.field private static final MSG_SSL_ERROR:I = 0xb4

.field private static final MSG_STATUS:I = 0xa0

.field private static final XML_MIME_TYPE:Ljava/lang/String; = "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

.field private static sNativeLoaderCount:I


# instance fields
.field private Download_filename:Ljava/lang/String;

.field private Download_stream:Ljava/io/FileOutputStream;

.field private bytesSoFar:I

.field private downloadUri:Landroid/net/Uri;

.field private finalStatus:I

.field private finalfileTitle:Ljava/lang/String;

.field private finalfilename:Ljava/lang/String;

.field private finalmimeType:Ljava/lang/String;

.field private isDRMContent:Z

.field private mAuthFailed:Z

.field private mAuthHeader:Landroid/net/http/HttpAuthHeader;

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mCacheLoader:Landroid/webkit/CacheLoader;

.field private mCacheRedirectCount:I

.field private mCancelled:Z

.field public mContentLength:J

.field private mContext:Landroid/content/Context;

.field private final mDataBuilder:Landroid/webkit/ByteArrayBuilder;

.field private mDownloadByMySelf:Z

.field private mEncoding:Ljava/lang/String;

.field private mErrorDescription:Ljava/lang/String;

.field private mErrorID:I

.field private mFromCache:Z

.field private mHaveContentData:Z

.field private mHeaders:Landroid/net/http/Headers;

.field private mIsMainPageLoader:Z

.field private final mIsMainResourceLoader:Z

.field private mIsProxy_lastAuthResponse:Z

.field private mMessageQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mNativeLoader:I

.field private mOriginalUrl:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private mPermanent:Z

.field private mPostData:[B

.field private mPostIdentifier:J

.field private mRequestHandle:Landroid/net/http/RequestHandle;

.field private mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSetNativeResponse:Z

.field private mSslError:Landroid/net/http/SslError;

.field private mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

.field private mStatusCode:I

.field private mStatusText:Ljava/lang/String;

.field private mSynchronous:Z

.field private mTransferEncoding:Ljava/lang/String;

.field private mUri:Landroid/net/WebAddress;

.field private mUrl:Ljava/lang/String;

.field private final mUserGesture:Z

.field private final mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-class v0, Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/webkit/LoadListener;->$assertionsDisabled:Z

    .line 1535
    const-string v0, "^((?:[xX]-)?[a-zA-Z\\*]+/[\\w\\+\\*-]+[\\.[\\w\\+-]+]*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-void

    .line 65
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 95
    new-instance v0, Landroid/webkit/ByteArrayBuilder;

    invoke-direct {v0}, Landroid/webkit/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    .line 113
    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 115
    iput v1, p0, Landroid/webkit/LoadListener;->mErrorID:I

    .line 145
    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mIsProxy_lastAuthResponse:Z

    .line 146
    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mHaveContentData:Z

    .line 1835
    iput-object v2, p0, Landroid/webkit/LoadListener;->Download_stream:Ljava/io/FileOutputStream;

    .line 1836
    iput-object v2, p0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    .line 1837
    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mDownloadByMySelf:Z

    .line 1838
    iput-boolean v1, p0, Landroid/webkit/LoadListener;->isDRMContent:Z

    .line 1839
    iput v1, p0, Landroid/webkit/LoadListener;->bytesSoFar:I

    .line 173
    sget-boolean v0, Landroid/webkit/LoadListener;->$assertionsDisabled:Z

    if-nez v0, :cond_2e

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 178
    :cond_2e
    iput-object p1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 180
    invoke-virtual {p0, p3}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    .line 181
    iput p4, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    .line 182
    iput-boolean p5, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    .line 183
    if-eqz p5, :cond_42

    .line 184
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    .line 186
    :cond_42
    iput-boolean p6, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    .line 187
    iput-boolean p7, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    .line 188
    iput-boolean p8, p0, Landroid/webkit/LoadListener;->mUserGesture:Z

    .line 189
    iput-wide p9, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    .line 190
    iput-object p11, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    .line 191
    iput-object p12, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    .line 192
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/LoadListener;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/LoadListener;->nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addDRMFile()V
    .registers 7

    .prologue
    .line 2128
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2136
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 2138
    .local v1, item:Landroid/content/Intent;
    if-nez v1, :cond_34

    .line 2139
    const-string/jumbo v3, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to add file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to DrmProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    const/16 v3, 0x1eb

    iput v3, p0, Landroid/webkit/LoadListener;->finalStatus:I

    .line 2167
    :goto_30
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2168
    return-void

    .line 2142
    :cond_34
    const/16 v3, 0xc8

    iput v3, p0, Landroid/webkit/LoadListener;->finalStatus:I

    .line 2143
    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/LoadListener;->finalfilename:Ljava/lang/String;

    .line 2144
    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2145
    .local v2, modifiedTitle:Ljava/lang/String;
    if-eqz v2, :cond_c2

    .line 2146
    const-string/jumbo v3, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modifiedTitle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :goto_61
    if-nez v2, :cond_67

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .end local v2           #modifiedTitle:Ljava/lang/String;
    :cond_67
    iput-object v2, p0, Landroid/webkit/LoadListener;->finalfileTitle:Ljava/lang/String;

    .line 2152
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/LoadListener;->finalmimeType:Ljava/lang/String;

    .line 2156
    const-string/jumbo v3, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDRMFile  finalmimeType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/LoadListener;->finalmimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    const-string/jumbo v3, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDRMFile  finalStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/LoadListener;->finalStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    const-string/jumbo v3, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDRMFile  finalfilename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/LoadListener;->finalfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 2148
    .restart local v2       #modifiedTitle:Ljava/lang/String;
    :cond_c2
    const-string/jumbo v3, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "item.getDataString():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61
.end method

.method private checkIfNeedDownloadByMySelf()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1849
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-eq v0, v2, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd0

    if-eq v0, v2, :cond_e

    .line 1875
    :cond_d
    :goto_d
    return-void

    .line 1853
    :cond_e
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.browser"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1858
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_73

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v2, 0x12c

    if-ge v0, v2, :cond_73

    const/4 v0, 0x1

    :goto_29
    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mDownloadByMySelf:Z

    .line 1859
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mDownloadByMySelf:Z

    if-eqz v0, :cond_3b

    .line 1861
    iput-boolean v1, p0, Landroid/webkit/LoadListener;->isDRMContent:Z

    .line 1865
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    const-string v1, "application/vnd.oma.dd+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mDownloadByMySelf:Z

    .line 1873
    :cond_3b
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIfNeedDownloadByMySelf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mDownloadByMySelf:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_73
    move v0, v1

    .line 1858
    goto :goto_29
.end method

.method private checkSize(Ljava/lang/String;)Z
    .registers 9
    .parameter "path"

    .prologue
    .line 1879
    iget-wide v1, p0, Landroid/webkit/LoadListener;->mContentLength:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2b

    .line 1881
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1882
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x4

    sub-long/2addr v3, v5

    mul-long/2addr v1, v3

    iget-wide v3, p0, Landroid/webkit/LoadListener;->mContentLength:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2b

    .line 1884
    const-string/jumbo v1, "webkit"

    const-string v2, "checkSize false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const/4 v1, 0x0

    .line 1888
    .end local v0           #stat:Landroid/os/StatFs;
    :goto_2a
    return v1

    :cond_2b
    const/4 v1, 0x1

    goto :goto_2a
.end method

.method private clearNativeLoader()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 199
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    .line 200
    iput v1, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    .line 201
    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    .line 202
    return-void
.end method

.method private commitHeaders()V
    .registers 2

    .prologue
    .line 1195
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1210
    :cond_c
    :goto_c
    return-void

    .line 1205
    :cond_d
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_c

    .line 1209
    invoke-direct {p0}, Landroid/webkit/LoadListener;->setNativeResponse()V

    goto :goto_c
.end method

.method private commitHeadersCheckRedirect()V
    .registers 3

    .prologue
    .line 1177
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 1191
    :cond_4
    :goto_4
    return-void

    .line 1185
    :cond_5
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12d

    if-lt v0, v1, :cond_11

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12f

    if-le v0, v1, :cond_4

    :cond_11
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x133

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-nez v0, :cond_4

    .line 1190
    :cond_21
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    goto :goto_4
.end method

.method private commitLoad()V
    .registers 10

    .prologue
    .line 1250
    iget-boolean v5, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v5, :cond_5

    .line 1302
    :goto_4
    return-void

    .line 1251
    :cond_5
    iget-boolean v5, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    if-nez v5, :cond_c

    .line 1252
    invoke-direct {p0}, Landroid/webkit/LoadListener;->setNativeResponse()V

    .line 1255
    :cond_c
    iget-boolean v5, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v5, :cond_6f

    .line 1256
    iget-object v5, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-static {v5}, Landroid/webkit/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1257
    .local v4, type:Ljava/lang/String;
    if-eqz v4, :cond_6f

    .line 1260
    iget-object v6, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v6

    .line 1264
    :try_start_1b
    iget-object v5, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v5}, Landroid/webkit/ByteArrayBuilder;->getByteSize()I

    move-result v5

    new-array v1, v5, [B

    .line 1265
    .local v1, cert:[B
    const/4 v3, 0x0

    .line 1267
    .local v3, offset:I
    :goto_24
    iget-object v5, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v5}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 1268
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-nez v0, :cond_3b

    .line 1276
    iget-object v5, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v1}, Landroid/webkit/CertTool;->addCertificate(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 1277
    iget-object v5, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 1278
    monitor-exit v6

    goto :goto_4

    .line 1279
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v3           #offset:I
    :catchall_38
    move-exception v5

    monitor-exit v6
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_38

    throw v5

    .line 1270
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .restart local v1       #cert:[B
    .restart local v3       #offset:I
    :cond_3b
    :try_start_3b
    iget v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v5, :cond_4a

    .line 1271
    iget-object v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v7, 0x0

    iget v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {v5, v7, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1272
    iget v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v3, v5

    .line 1274
    :cond_4a
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_38

    goto :goto_24

    .line 1291
    .end local v1           #cert:[B
    .end local v3           #offset:I
    .end local v4           #type:Ljava/lang/String;
    :cond_4e
    iget v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v5, :cond_78

    .line 1292
    iget-object v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v6, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-direct {p0, v5, v6}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    .line 1293
    new-instance v2, Landroid/webkit/WebViewWorker$CacheData;

    invoke-direct {v2}, Landroid/webkit/WebViewWorker$CacheData;-><init>()V

    .line 1294
    .local v2, data:Landroid/webkit/WebViewWorker$CacheData;
    iput-object p0, v2, Landroid/webkit/WebViewWorker$CacheData;->mListener:Landroid/webkit/LoadListener;

    .line 1295
    iput-object v0, v2, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    .line 1296
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v5

    const/16 v6, 0x69

    invoke-virtual {v5, v6, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1288
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v2           #data:Landroid/webkit/WebViewWorker$CacheData;
    :cond_6f
    :goto_6f
    iget-object v5, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v5}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 1289
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-nez v0, :cond_4e

    goto :goto_4

    .line 1299
    :cond_78
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto :goto_6f
.end method

.method private createNativeResponse()I
    .registers 10

    .prologue
    .line 1229
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v0, :cond_2c

    const/16 v2, 0xc8

    .line 1232
    .local v2, statusCode:I
    :goto_c
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->originalUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    iget-object v7, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/webkit/LoadListener;->nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result v8

    .line 1235
    .local v8, nativeResponse:I
    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    if-eqz v0, :cond_2b

    .line 1236
    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    new-instance v1, Landroid/webkit/LoadListener$1;

    invoke-direct {v1, p0, v8}, Landroid/webkit/LoadListener$1;-><init>(Landroid/webkit/LoadListener;I)V

    invoke-virtual {v0, v1}, Landroid/net/http/Headers;->getHeaders(Landroid/net/http/Headers$HeaderCallback;)V

    .line 1242
    :cond_2b
    return v8

    .line 1229
    .end local v2           #statusCode:I
    .end local v8           #nativeResponse:I
    :cond_2c
    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    goto :goto_c
.end method

.method private doRedirect()V
    .registers 14

    .prologue
    const v12, 0x1040007

    const/16 v11, -0xc

    .line 1408
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v7, :cond_a

    .line 1529
    :cond_9
    :goto_9
    return-void

    .line 1414
    :cond_a
    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_1f

    .line 1415
    const/16 v7, -0x9

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x1040127

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_9

    .line 1420
    :cond_1f
    iget-object v7, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v7}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 1421
    .local v5, redirectTo:Ljava/lang/String;
    if-eqz v5, :cond_14b

    .line 1422
    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v3

    .line 1423
    .local v3, nativeResponse:I
    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v7, v5, v3}, Landroid/webkit/LoadListener;->nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1427
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v7, :cond_9

    .line 1430
    if-nez v5, :cond_5a

    .line 1431
    const-string/jumbo v7, "webkit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Redirection failed for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v9}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    goto :goto_9

    .line 1435
    :cond_5a
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9a

    .line 1436
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x1040382

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1439
    .local v6, text:Ljava/lang/String;
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    if-nez v7, :cond_87

    .line 1440
    invoke-direct {p0}, Landroid/webkit/LoadListener;->setNativeResponse()V

    .line 1442
    :cond_87
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    .line 1443
    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    .line 1444
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    goto/16 :goto_9

    .line 1450
    .end local v6           #text:Ljava/lang/String;
    :cond_9a
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v7

    if-nez v7, :cond_fa

    .line 1451
    new-instance v0, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v0}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .line 1452
    .local v0, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    .line 1453
    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    .line 1454
    iget-wide v7, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    .line 1455
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6a

    invoke-virtual {v7, v8, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1463
    .end local v0           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_bc
    iput-object v5, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    .line 1465
    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    .line 1468
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    if-nez v7, :cond_cc

    .line 1469
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    .line 1471
    :cond_cc
    const/4 v2, 0x0

    .line 1472
    .local v2, fromCache:Z
    iget-object v7, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v7, :cond_d8

    .line 1475
    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    .line 1476
    const/4 v2, 0x1

    .line 1478
    :cond_d8
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {p0, v7}, Landroid/webkit/LoadListener;->checkCache(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_13d

    .line 1481
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v7, :cond_11e

    .line 1483
    :try_start_e4
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iget v9, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    iget-object v10, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/http/RequestHandle;->setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z
    :try_end_ef
    .catch Ljava/lang/RuntimeException; {:try_start_e4 .. :try_end_ef} :catch_108

    .line 1507
    :cond_ef
    if-eqz v2, :cond_9

    .line 1511
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget v8, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    invoke-virtual {v7, v8}, Landroid/net/http/RequestHandle;->setRedirectCount(I)V

    goto/16 :goto_9

    .line 1458
    .end local v2           #fromCache:Z
    :cond_fa
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6b

    invoke-virtual {v7, v8, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_bc

    .line 1485
    .restart local v2       #fromCache:Z
    :catch_108
    move-exception v1

    .line 1486
    .local v1, e:Ljava/lang/RuntimeException;
    const-string/jumbo v7, "webkit"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1497
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_11e
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v4

    .line 1498
    .local v4, network:Landroid/webkit/Network;
    iget-object v7, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    iget-object v9, p0, Landroid/webkit/LoadListener;->mPostData:[B

    invoke-virtual {v4, v7, v8, v9, p0}, Landroid/webkit/Network;->requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z

    move-result v7

    if-nez v7, :cond_ef

    .line 1502
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1513
    .end local v4           #network:Landroid/webkit/Network;
    :cond_13d
    if-nez v2, :cond_9

    .line 1517
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v7}, Landroid/net/http/RequestHandle;->getRedirectCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    goto/16 :goto_9

    .line 1520
    .end local v2           #fromCache:Z
    .end local v3           #nativeResponse:I
    :cond_14b
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    .line 1521
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 1522
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto/16 :goto_9
.end method

.method private downloadFinish()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 2073
    iget-object v4, p0, Landroid/webkit/LoadListener;->Download_stream:Ljava/io/FileOutputStream;

    if-nez v4, :cond_6

    .line 2123
    :cond_5
    :goto_5
    return-void

    .line 2076
    :cond_6
    const-string/jumbo v4, "webkit"

    const-string v5, "downloadFinish"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    :try_start_e
    iget-object v4, p0, Landroid/webkit/LoadListener;->Download_stream:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_85

    .line 2087
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 2089
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    const-string v5, "application/vnd.oma.dd+xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 2091
    iget-object v4, p0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 2094
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/webkit/LoadListener;->viewDownload(Landroid/net/Uri;)V

    .line 2096
    const/4 v0, 0x0

    .line 2097
    .local v0, authHeaderName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2098
    .local v1, authHeaderValue:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    if-eqz v4, :cond_44

    .line 2100
    iget-boolean v4, p0, Landroid/webkit/LoadListener;->mIsProxy_lastAuthResponse:Z

    invoke-static {v4}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v0

    .line 2101
    iget-object v4, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #authHeaderValue:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 2103
    .restart local v1       #authHeaderValue:Ljava/lang/String;
    :cond_44
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.OMA_DD_DOWNLOAD_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2105
    .local v3, intent:Landroid/content/Intent;
    const-string/jumbo v4, "url"

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2106
    const-string/jumbo v4, "userAgent"

    iget-object v5, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2107
    const-string/jumbo v4, "mimetype"

    iget-object v5, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2108
    const-string v4, "authHeaderName"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2109
    const-string v4, "authHeaderValue"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2110
    const-string v4, "Download_filename"

    iget-object v5, p0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2111
    const-string v4, "com.android.browser"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2112
    iget-object v4, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 2080
    .end local v0           #authHeaderName:Ljava/lang/String;
    .end local v1           #authHeaderValue:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :catch_85
    move-exception v2

    .line 2081
    .local v2, ex:Ljava/io/IOException;
    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when closing the file after download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    const/16 v4, 0x1ec

    iput v4, p0, Landroid/webkit/LoadListener;->finalStatus:I

    .line 2083
    invoke-direct {p0, v7, v7}, Landroid/webkit/LoadListener;->goDownloadFile(ZZ)V

    goto/16 :goto_5

    .line 2117
    .end local v2           #ex:Ljava/io/IOException;
    :cond_a8
    invoke-direct {p0}, Landroid/webkit/LoadListener;->addDRMFile()V

    .line 2118
    iget-boolean v4, p0, Landroid/webkit/LoadListener;->isDRMContent:Z

    if-eqz v4, :cond_5

    .line 2120
    invoke-direct {p0, v7}, Landroid/webkit/LoadListener;->updateDownload(Z)Z

    goto/16 :goto_5
.end method

.method private getErrorDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1343
    iget-object v0, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    return-object v0
.end method

.method private getErrorID()I
    .registers 2

    .prologue
    .line 1335
    iget v0, p0, Landroid/webkit/LoadListener;->mErrorID:I

    return v0
.end method

.method public static getLoadListener(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;
    .registers 25
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 159
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    .line 160
    new-instance v0, Landroid/webkit/LoadListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/webkit/LoadListener;-><init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNativeLoaderCount()I
    .registers 1

    .prologue
    .line 166
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    return v0
.end method

.method private goDownloadFile(ZZ)V
    .registers 5
    .parameter "doCancel"
    .parameter "doUpdate"

    .prologue
    .line 1893
    iget-object v1, p0, Landroid/webkit/LoadListener;->Download_stream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_16

    .line 1897
    :try_start_4
    iget-object v1, p0, Landroid/webkit/LoadListener;->Download_stream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_2e

    .line 1902
    :goto_9
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LoadListener;->Download_stream:Ljava/io/FileOutputStream;

    .line 1904
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1905
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1908
    .end local v0           #file:Ljava/io/File;
    :cond_16
    iget-boolean v1, p0, Landroid/webkit/LoadListener;->isDRMContent:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/webkit/LoadListener;->downloadUri:Landroid/net/Uri;

    if-eqz v1, :cond_2a

    .line 1910
    if-eqz p1, :cond_23

    .line 1911
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 1912
    :cond_23
    if-eqz p2, :cond_29

    .line 1913
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->updateDownload(Z)Z

    .line 1920
    :cond_29
    :goto_29
    return-void

    .line 1918
    :cond_2a
    invoke-virtual {p0, p1}, Landroid/webkit/LoadListener;->downloadFile(Z)V

    goto :goto_29

    .line 1899
    :catch_2e
    move-exception v1

    goto :goto_9
.end method

.method private guessMimeType()V
    .registers 5

    .prologue
    .line 1709
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    .line 1710
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 1711
    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v3, 0x1040007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1712
    .local v1, text:Ljava/lang/String;
    const/16 v2, -0xc

    invoke-direct {p0, v2, v1}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    .line 1723
    .end local v1           #text:Ljava/lang/String;
    :cond_21
    :goto_21
    return-void

    .line 1717
    :cond_22
    const-string/jumbo v2, "text/html"

    iput-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1718
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1719
    .local v0, newMimeType:Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 1720
    iput-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_21
.end method

.method private guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "url"

    .prologue
    .line 1734
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCertificate(Landroid/net/http/SslCertificate;)V
    .registers 3
    .parameter "certificate"

    .prologue
    .line 607
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    if-eqz v0, :cond_d

    .line 609
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1}, Landroid/webkit/BrowserFrame;->certificate(Landroid/net/http/SslCertificate;)V

    .line 611
    :cond_d
    return-void
.end method

.method private handleEndData()V
    .registers 8

    .prologue
    const/16 v6, 0x96

    const/16 v4, 0x8c

    const/4 v5, 0x1

    .line 706
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v2, :cond_a

    .line 807
    :goto_9
    return-void

    .line 708
    :cond_a
    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    sparse-switch v2, :sswitch_data_138

    .line 782
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_63

    .line 786
    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v3, 0x190

    if-lt v2, v3, :cond_63

    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_63

    iget-wide v2, p0, Landroid/webkit/LoadListener;->mContentLength:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_63

    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mHaveContentData:Z

    if-nez v2, :cond_63

    .line 789
    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v3, 0x191

    if-eq v2, v3, :cond_63

    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v3, 0x197

    if-eq v2, v3, :cond_63

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    .local v1, sb:Ljava/lang/StringBuilder;
    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 793
    iget-object v2, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    if-eqz v2, :cond_5a

    iget-object v2, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5a

    .line 795
    const-string v2, " ,<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget-object v2, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_5a
    const/16 v2, -0xd

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    .line 805
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_63
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    .line 806
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_9

    .line 711
    :sswitch_6a
    iput-boolean v5, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    .line 716
    :sswitch_6c
    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v3, 0x133

    if-ne v2, v3, :cond_ad

    .line 717
    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v2, :cond_8d

    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v2}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 719
    invoke-virtual {p0, v6}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto/16 :goto_9

    .line 721
    :cond_8d
    iget-object v2, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    if-eqz v2, :cond_a4

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 722
    invoke-virtual {p0, v6}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto/16 :goto_9

    .line 725
    :cond_a4
    invoke-virtual {p0, v4}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto/16 :goto_9

    .line 728
    :cond_ad
    invoke-virtual {p0, v4}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto/16 :goto_9

    .line 737
    :sswitch_b6
    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v2, :cond_63

    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v2

    if-nez v2, :cond_ce

    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v2}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v2

    if-nez v2, :cond_63

    .line 742
    :cond_ce
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-nez v2, :cond_109

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_109

    iget-object v2, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_109

    .line 743
    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v2}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v2

    if-eqz v2, :cond_102

    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/Network;->getProxyHostname()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, host:Ljava/lang/String;
    :goto_ec
    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v2}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-static {p0, v0, v2, v3, v4}, Landroid/webkit/HttpAuthHandlerImpl;->onReceivedCredentials(Landroid/webkit/LoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 743
    .end local v0           #host:Ljava/lang/String;
    :cond_102
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_ec

    .line 750
    :cond_109
    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/webkit/Network;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    goto/16 :goto_9

    .line 760
    :sswitch_114
    iget-object v2, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v2, :cond_63

    .line 761
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_127

    .line 762
    iget-object v2, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v2}, Landroid/webkit/CacheLoader;->load()V

    .line 769
    :goto_123
    iput-boolean v5, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    goto/16 :goto_9

    .line 765
    :cond_127
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x65

    iget-object v4, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_123

    .line 708
    nop

    :sswitch_data_138
    .sparse-switch
        0x12d -> :sswitch_6a
        0x12e -> :sswitch_6c
        0x12f -> :sswitch_6c
        0x130 -> :sswitch_114
        0x133 -> :sswitch_6c
        0x191 -> :sswitch_b6
        0x197 -> :sswitch_b6
    .end sparse-switch
.end method

.method private handleError(ILjava/lang/String;)V
    .registers 5
    .parameter "id"
    .parameter "description"

    .prologue
    .line 633
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mDownloadByMySelf:Z

    if-eqz v0, :cond_15

    .line 635
    const-string/jumbo v0, "webkit"

    const-string v1, "handleError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/16 v0, 0x1ef

    iput v0, p0, Landroid/webkit/LoadListener;->finalStatus:I

    .line 637
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/webkit/LoadListener;->goDownloadFile(ZZ)V

    .line 641
    :cond_15
    iput p1, p0, Landroid/webkit/LoadListener;->mErrorID:I

    .line 642
    iput-object p2, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    .line 643
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    .line 644
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->notifyError()V

    .line 645
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    .line 646
    return-void
.end method

.method private handleHeaders(Landroid/net/http/Headers;)V
    .registers 16
    .parameter "headers"

    .prologue
    .line 373
    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v10, :cond_5

    .line 536
    :goto_4
    return-void

    .line 378
    :cond_5
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0xce

    if-ne v10, v11, :cond_19

    .line 380
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v10

    const/16 v11, 0x6b

    invoke-virtual {v10, v11, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    .line 385
    :cond_19
    iput-object p1, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    .line 387
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v1

    .line 388
    .local v1, contentLength:J
    const-wide/16 v10, -0x1

    cmp-long v10, v1, v10

    if-eqz v10, :cond_1aa

    .line 389
    iput-wide v1, p0, Landroid/webkit/LoadListener;->mContentLength:J

    .line 394
    :goto_27
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, contentType:Ljava/lang/String;
    if-eqz v3, :cond_1c4

    .line 396
    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->parseContentTypeHeader(Ljava/lang/String;)V

    .line 403
    iget-object v10, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    const-string/jumbo v11, "text/vnd.wap.wml"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b0

    .line 405
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0x1b

    if-eq v10, v11, :cond_47

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xd8

    if-ne v10, v11, :cond_5d

    :cond_47
    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v10, :cond_5d

    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    if-eqz v10, :cond_5d

    iget-object v10, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.browser"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_62

    .line 410
    :cond_5d
    const-string/jumbo v10, "text/plain"

    iput-object v10, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 428
    :cond_62
    :goto_62
    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v10, :cond_c1

    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    if-eqz v10, :cond_c1

    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mUserGesture:Z

    if-eqz v10, :cond_c1

    const-string v10, "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

    iget-object v11, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c1

    iget-object v10, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    const-string v11, "application/xhtml+xml"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c1

    .line 431
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v5, i:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    iget-object v10, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x1

    invoke-virtual {v10, v5, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 435
    .local v6, info:Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_c1

    iget-object v10, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c1

    .line 440
    :try_start_b4
    iget-object v10, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 441
    iget-object v10, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v10}, Landroid/webkit/BrowserFrame;->stopLoading()V
    :try_end_be
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b4 .. :try_end_be} :catch_c0

    goto/16 :goto_4

    .line 443
    :catch_c0
    move-exception v10

    .line 450
    .end local v5           #i:Landroid/content/Intent;
    .end local v6           #info:Landroid/content/pm/ResolveInfo;
    :cond_c1
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x191

    if-eq v10, v11, :cond_cd

    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x197

    if-ne v10, v11, :cond_1c9

    :cond_cd
    const/4 v8, 0x1

    .line 453
    .local v8, mustAuthenticate:Z
    :goto_ce
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x197

    if-ne v10, v11, :cond_1cc

    const/4 v7, 0x1

    .line 456
    .local v7, isProxyAuthRequest:Z
    :goto_d5
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    .line 459
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v10, :cond_115

    .line 462
    if-eqz v8, :cond_1cf

    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v10

    if-ne v7, v10, :cond_1cf

    const/4 v10, 0x1

    :goto_e7
    iput-boolean v10, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    .line 467
    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-nez v10, :cond_115

    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v10

    if-eqz v10, :cond_115

    .line 468
    iget-object v10, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v9

    .line 470
    .local v9, network:Landroid/webkit/Network;
    invoke-virtual {v9}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v10

    if-eqz v10, :cond_115

    .line 473
    monitor-enter v9

    .line 476
    :try_start_102
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->getUsername()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/Network;->setProxyUsername(Ljava/lang/String;)V

    .line 477
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->getPassword()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/Network;->setProxyPassword(Ljava/lang/String;)V

    .line 478
    monitor-exit v9
    :try_end_115
    .catchall {:try_start_102 .. :try_end_115} :catchall_1d2

    .line 485
    .end local v9           #network:Landroid/webkit/Network;
    :cond_115
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 486
    if-eqz v8, :cond_12a

    .line 487
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x191

    if-ne v10, v11, :cond_1d5

    .line 488
    invoke-virtual {p1}, Landroid/net/http/Headers;->getWwwAuthenticate()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v10

    iput-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 502
    :cond_12a
    :goto_12a
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_142

    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x12e

    if-eq v10, v11, :cond_142

    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x12d

    if-eq v10, v11, :cond_142

    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x133

    if-ne v10, v11, :cond_1a2

    :cond_142
    iget v10, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v10, :cond_1a2

    .line 510
    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    if-nez v10, :cond_18a

    iget-object v10, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v10, :cond_18a

    iget-object v10, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v10}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_164

    iget-wide v10, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_18a

    .line 513
    :cond_164
    new-instance v4, Landroid/webkit/WebViewWorker$CacheCreateData;

    invoke-direct {v4}, Landroid/webkit/WebViewWorker$CacheCreateData;-><init>()V

    .line 514
    .local v4, data:Landroid/webkit/WebViewWorker$CacheCreateData;
    iput-object p0, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mListener:Landroid/webkit/LoadListener;

    .line 515
    iget-object v10, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v10, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mUrl:Ljava/lang/String;

    .line 516
    iget-object v10, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iput-object v10, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mMimeType:Ljava/lang/String;

    .line 517
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    iput v10, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mStatusCode:I

    .line 518
    iget-wide v10, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v10, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mPostId:J

    .line 519
    iput-object p1, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mHeaders:Landroid/net/http/Headers;

    .line 520
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v10

    const/16 v11, 0x67

    invoke-virtual {v10, v11, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 523
    .end local v4           #data:Landroid/webkit/WebViewWorker$CacheCreateData;
    :cond_18a
    new-instance v0, Landroid/webkit/WebViewWorker$CacheEncoding;

    invoke-direct {v0}, Landroid/webkit/WebViewWorker$CacheEncoding;-><init>()V

    .line 524
    .local v0, ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    iget-object v10, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    iput-object v10, v0, Landroid/webkit/WebViewWorker$CacheEncoding;->mEncoding:Ljava/lang/String;

    .line 525
    iput-object p0, v0, Landroid/webkit/WebViewWorker$CacheEncoding;->mListener:Landroid/webkit/LoadListener;

    .line 526
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v10

    const/16 v11, 0x68

    invoke-virtual {v10, v11, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 532
    .end local v0           #ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    :cond_1a2
    invoke-direct {p0}, Landroid/webkit/LoadListener;->checkIfNeedDownloadByMySelf()V

    .line 535
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeadersCheckRedirect()V

    goto/16 :goto_4

    .line 391
    .end local v3           #contentType:Ljava/lang/String;
    .end local v7           #isProxyAuthRequest:Z
    .end local v8           #mustAuthenticate:Z
    :cond_1aa
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/webkit/LoadListener;->mContentLength:J

    goto/16 :goto_27

    .line 415
    .restart local v3       #contentType:Ljava/lang/String;
    :cond_1b0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-object v12, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/webkit/MimeTypeMap;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto/16 :goto_62

    .line 425
    :cond_1c4
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto/16 :goto_62

    .line 450
    :cond_1c9
    const/4 v8, 0x0

    goto/16 :goto_ce

    .line 453
    .restart local v8       #mustAuthenticate:Z
    :cond_1cc
    const/4 v7, 0x0

    goto/16 :goto_d5

    .line 462
    .restart local v7       #isProxyAuthRequest:Z
    :cond_1cf
    const/4 v10, 0x0

    goto/16 :goto_e7

    .line 478
    .restart local v9       #network:Landroid/webkit/Network;
    :catchall_1d2
    move-exception v10

    :try_start_1d3
    monitor-exit v9
    :try_end_1d4
    .catchall {:try_start_1d3 .. :try_end_1d4} :catchall_1d2

    throw v10

    .line 491
    .end local v9           #network:Landroid/webkit/Network;
    :cond_1d5
    invoke-virtual {p1}, Landroid/net/http/Headers;->getProxyAuthenticate()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v10

    iput-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 494
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v10, :cond_12a

    .line 496
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->setProxy()V

    goto/16 :goto_12a
.end method

.method private handleSslError(Landroid/net/http/SslError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 903
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_13

    .line 904
    iput-object p1, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    .line 905
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/Network;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    .line 909
    :cond_f
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    .line 910
    return-void

    .line 906
    :cond_13
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_f

    .line 907
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    goto :goto_f
.end method

.method private handleStatus(IIILjava/lang/String;)V
    .registers 6
    .parameter "major"
    .parameter "minor"
    .parameter "code"
    .parameter "reason"

    .prologue
    .line 579
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 584
    :goto_4
    return-void

    .line 581
    :cond_5
    iput p3, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    .line 582
    iput-object p4, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    goto :goto_4
.end method

.method private ignoreCallbacks()Z
    .registers 3

    .prologue
    .line 1677
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_1a

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1c

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1c

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x131

    if-eq v0, v1, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private insertDownload()V
    .registers 6

    .prologue
    .line 2173
    const-string/jumbo v1, "webkit"

    const-string/jumbo v2, "insertDownload()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2178
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "uri"

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    const-string/jumbo v1, "visibility"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2187
    const-string/jumbo v1, "mimetype"

    iget-object v2, p0, Landroid/webkit/LoadListener;->finalmimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    const-string/jumbo v1, "hint"

    iget-object v2, p0, Landroid/webkit/LoadListener;->finalfileTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    const-string v1, "_data"

    iget-object v2, p0, Landroid/webkit/LoadListener;->finalfilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    const-string v1, "description"

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    iget-wide v1, p0, Landroid/webkit/LoadListener;->mContentLength:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_89

    .line 2192
    const-string/jumbo v1, "total_bytes"

    iget-wide v2, p0, Landroid/webkit/LoadListener;->mContentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2200
    :goto_57
    const-string v1, "destination"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2201
    const-string/jumbo v1, "status"

    iget v2, p0, Landroid/webkit/LoadListener;->finalStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2202
    const-string/jumbo v1, "title"

    iget-object v2, p0, Landroid/webkit/LoadListener;->finalfileTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    iget-object v1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/LoadListener;->downloadUri:Landroid/net/Uri;

    .line 2207
    iget-object v1, p0, Landroid/webkit/LoadListener;->downloadUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->viewDownload(Landroid/net/Uri;)V

    .line 2208
    return-void

    .line 2197
    :cond_89
    const-string/jumbo v1, "total_bytes"

    iget v2, p0, Landroid/webkit/LoadListener;->bytesSoFar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_57
.end method

.method private native nativeAddData([BI)V
.end method

.method private native nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
.end method

.method private native nativeError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeFinished()V
.end method

.method private native nativeReceivedResponse(I)V
.end method

.method private native nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;
    .registers 20
    .parameter "header"

    .prologue
    .line 1599
    if-eqz p1, :cond_ca

    .line 1600
    const/16 v14, 0x100

    .line 1601
    .local v14, posMax:I
    const/4 v12, 0x0

    .line 1602
    .local v12, posLen:I
    new-array v11, v14, [I

    .line 1604
    .local v11, pos:[I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1605
    .local v10, headerLen:I
    if-lez v10, :cond_59

    .line 1607
    const/4 v15, 0x0

    .line 1608
    .local v15, quoted:Z
    const/4 v3, 0x0

    .local v3, i:I
    move v13, v12

    .end local v12           #posLen:I
    .local v13, posLen:I
    :goto_10
    if-ge v3, v10, :cond_58

    if-ge v13, v14, :cond_58

    .line 1609
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_28

    .line 1610
    if-nez v15, :cond_26

    const/4 v15, 0x1

    :goto_21
    move v12, v13

    .line 1608
    .end local v13           #posLen:I
    .restart local v12       #posLen:I
    :goto_22
    add-int/lit8 v3, v3, 0x1

    move v13, v12

    .end local v12           #posLen:I
    .restart local v13       #posLen:I
    goto :goto_10

    .line 1610
    :cond_26
    const/4 v15, 0x0

    goto :goto_21

    .line 1612
    :cond_28
    if-nez v15, :cond_cd

    .line 1613
    const/4 v2, 0x1

    const-string v4, "Basic"

    const/4 v5, 0x0

    const-string v1, "Basic"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1616
    add-int/lit8 v12, v13, 0x1

    .end local v13           #posLen:I
    .restart local v12       #posLen:I
    aput v3, v11, v13

    goto :goto_22

    .line 1620
    .end local v12           #posLen:I
    .restart local v13       #posLen:I
    :cond_41
    const/4 v2, 0x1

    const-string v4, "Digest"

    const/4 v5, 0x0

    const-string v1, "Digest"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 1623
    add-int/lit8 v12, v13, 0x1

    .end local v13           #posLen:I
    .restart local v12       #posLen:I
    aput v3, v11, v13

    goto :goto_22

    .end local v12           #posLen:I
    .restart local v13       #posLen:I
    :cond_58
    move v12, v13

    .line 1631
    .end local v3           #i:I
    .end local v13           #posLen:I
    .end local v15           #quoted:Z
    .restart local v12       #posLen:I
    :cond_59
    if-lez v12, :cond_ca

    .line 1633
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5c
    if-ge v3, v12, :cond_93

    .line 1634
    const/4 v5, 0x1

    aget v6, v11, v3

    const-string v7, "Digest"

    const/4 v8, 0x0

    const-string v1, "Digest"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1637
    aget v2, v11, v3

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v12, :cond_8e

    add-int/lit8 v1, v3, 0x1

    aget v1, v11, v1

    :goto_7c
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1640
    .local v17, sub:Ljava/lang/String;
    new-instance v16, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v16 .. v17}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .line 1641
    .local v16, rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v16 .. v16}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1666
    .end local v3           #i:I
    .end local v10           #headerLen:I
    .end local v11           #pos:[I
    .end local v12           #posLen:I
    .end local v14           #posMax:I
    .end local v16           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v17           #sub:Ljava/lang/String;
    :cond_8d
    :goto_8d
    return-object v16

    .restart local v3       #i:I
    .restart local v10       #headerLen:I
    .restart local v11       #pos:[I
    .restart local v12       #posLen:I
    .restart local v14       #posMax:I
    :cond_8e
    move v1, v10

    .line 1637
    goto :goto_7c

    .line 1633
    :cond_90
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 1649
    :cond_93
    const/4 v3, 0x0

    :goto_94
    if-ge v3, v12, :cond_ca

    .line 1650
    const/4 v5, 0x1

    aget v6, v11, v3

    const-string v7, "Basic"

    const/4 v8, 0x0

    const-string v1, "Basic"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 1653
    aget v2, v11, v3

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v12, :cond_c8

    add-int/lit8 v1, v3, 0x1

    aget v1, v11, v1

    :goto_b4
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1656
    .restart local v17       #sub:Ljava/lang/String;
    new-instance v16, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v16 .. v17}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .line 1657
    .restart local v16       #rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v16 .. v16}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 1649
    .end local v16           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v17           #sub:Ljava/lang/String;
    :cond_c5
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    :cond_c8
    move v1, v10

    .line 1653
    goto :goto_b4

    .line 1666
    .end local v3           #i:I
    .end local v10           #headerLen:I
    .end local v11           #pos:[I
    .end local v12           #posLen:I
    .end local v14           #posMax:I
    :cond_ca
    const/16 v16, 0x0

    goto :goto_8d

    .restart local v3       #i:I
    .restart local v10       #headerLen:I
    .restart local v11       #pos:[I
    .restart local v13       #posLen:I
    .restart local v14       #posMax:I
    .restart local v15       #quoted:Z
    :cond_cd
    move v12, v13

    .end local v13           #posLen:I
    .restart local v12       #posLen:I
    goto/16 :goto_22
.end method

.method private sendMessageInternal(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1743
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    if-eqz v0, :cond_a

    .line 1744
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1748
    :goto_9
    return-void

    .line 1746
    :cond_a
    invoke-virtual {p0, p1}, Landroid/webkit/LoadListener;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method private setNativeResponse()V
    .registers 3

    .prologue
    .line 1213
    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v0

    .line 1215
    .local v0, nativeResponse:I
    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->nativeReceivedResponse(I)V

    .line 1216
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    .line 1217
    return-void
.end method

.method private updateDownload(Z)Z
    .registers 11
    .parameter "finish"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2212
    iget-object v4, p0, Landroid/webkit/LoadListener;->downloadUri:Landroid/net/Uri;

    if-nez v4, :cond_8

    .line 2232
    :goto_7
    return v3

    .line 2215
    :cond_8
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2216
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_46

    .line 2218
    const-string/jumbo v4, "mimetype"

    iget-object v5, p0, Landroid/webkit/LoadListener;->finalmimeType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    const-string v4, "_data"

    iget-object v5, p0, Landroid/webkit/LoadListener;->finalfilename:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    const-string/jumbo v4, "status"

    iget v5, p0, Landroid/webkit/LoadListener;->finalStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2222
    const-string/jumbo v4, "title"

    iget-object v5, p0, Landroid/webkit/LoadListener;->finalfileTitle:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    iget-wide v4, p0, Landroid/webkit/LoadListener;->mContentLength:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_46

    .line 2224
    const-string/jumbo v4, "total_bytes"

    iget v5, p0, Landroid/webkit/LoadListener;->bytesSoFar:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2228
    :cond_46
    const-string v4, "current_bytes"

    iget v5, p0, Landroid/webkit/LoadListener;->bytesSoFar:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2230
    iget-object v4, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/LoadListener;->downloadUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2232
    .local v0, count:I
    if-ne v0, v2, :cond_61

    :goto_5f
    move v3, v2

    goto :goto_7

    :cond_61
    move v2, v3

    goto :goto_5f
.end method

.method private viewDownload(Landroid/net/Uri;)V
    .registers 11
    .parameter "uri"

    .prologue
    .line 2237
    if-nez p1, :cond_14

    .line 2238
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    .line 2241
    :goto_13
    return-void

    .line 2240
    :cond_14
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_13
.end method

.method static willLoadFromCache(Ljava/lang/String;J)Z
    .registers 5
    .parameter "url"
    .parameter "identifier"

    .prologue
    .line 1136
    sget-boolean v1, Landroid/webkit/LoadListener;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1137
    :cond_10
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    .line 1143
    .local v0, inCache:Z
    :goto_18
    return v0

    .line 1137
    .end local v0           #inCache:Z
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private writeFile()V
    .registers 18

    .prologue
    .line 1924
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/LoadListener;->Download_stream:Ljava/io/FileOutputStream;

    if-nez v13, :cond_48

    .line 1925
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 1927
    .local v11, root:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/webkit/LoadListener;->checkSize(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1d

    .line 1929
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/LoadListener;->goDownloadFile(ZZ)V

    .line 1932
    :cond_1d
    new-instance v1, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/download"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1933
    .local v1, base:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_69

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v13

    if-nez v13, :cond_69

    .line 1935
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/LoadListener;->goDownloadFile(ZZ)V

    .line 2010
    .end local v1           #base:Ljava/io/File;
    .end local v11           #root:Ljava/lang/String;
    :cond_48
    :goto_48
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/LoadListener;->Download_stream:Ljava/io/FileOutputStream;

    if-eqz v13, :cond_68

    .line 2011
    const/4 v3, 0x0

    .line 2016
    .local v3, checkfailed:Z
    :goto_4f
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v13}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_56} :catch_20e

    move-result-object v2

    .line 2017
    .local v2, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-nez v2, :cond_1e3

    .line 2047
    if-eqz v3, :cond_23d

    .line 2049
    const/16 v13, 0x196

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/LoadListener;->finalStatus:I

    .line 2050
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/LoadListener;->goDownloadFile(ZZ)V

    .line 2069
    .end local v2           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v3           #checkfailed:Z
    :cond_68
    :goto_68
    return-void

    .line 1940
    .restart local v1       #base:Ljava/io/File;
    .restart local v11       #root:Ljava/lang/String;
    :cond_69
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    const-string v14, "application/vnd.oma.dd+xml"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_189

    .line 1942
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/OMA_Download.dd"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    .line 1961
    :goto_90
    const-string v5, ""

    .line 1962
    .local v5, ext:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    .line 1963
    .local v7, filename:Ljava/lang/String;
    const-string v13, "."

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 1964
    .local v9, idx:I
    const/4 v13, -0x1

    if-le v9, v13, :cond_a8

    .line 1966
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1967
    const/4 v13, 0x0

    invoke-virtual {v7, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1970
    :cond_a8
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1971
    .local v6, file:Ljava/io/File;
    const/4 v9, 0x0

    .line 1972
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_e6

    .line 1973
    const/4 v8, 0x1

    .local v8, i:I
    :goto_b9
    const/16 v13, 0x2710

    if-ge v8, v13, :cond_e6

    .line 1974
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    .line 1975
    new-instance v6, Ljava/io/File;

    .end local v6           #file:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1976
    .restart local v6       #file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1df

    .line 1977
    move v9, v8

    .line 1984
    .end local v8           #i:I
    :cond_e6
    const-string/jumbo v13, "webkit"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "download filename: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/LoadListener;->isDRMContent:Z

    if-eqz v13, :cond_155

    .line 1988
    if-lez v9, :cond_13f

    .line 1990
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/LoadListener;->finalfileTitle:Ljava/lang/String;

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 1991
    .local v10, idxx:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/LoadListener;->finalfileTitle:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/LoadListener;->finalfileTitle:Ljava/lang/String;

    .line 1992
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/LoadListener;->finalfileTitle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/LoadListener;->finalfileTitle:Ljava/lang/String;

    .line 1994
    .end local v10           #idxx:I
    :cond_13f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/LoadListener;->finalmimeType:Ljava/lang/String;

    .line 1995
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/LoadListener;->finalfilename:Ljava/lang/String;

    .line 1996
    const/16 v13, 0xc0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/LoadListener;->finalStatus:I

    .line 2000
    :cond_155
    :try_start_155
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/LoadListener;->Download_stream:Ljava/io/FileOutputStream;
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_163} :catch_165

    goto/16 :goto_48

    .line 2001
    :catch_165
    move-exception v4

    .line 2003
    .local v4, ex:Ljava/io/IOException;
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/LoadListener;->goDownloadFile(ZZ)V

    .line 2005
    const-string/jumbo v13, "webkit"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "openFile: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48

    .line 1946
    .end local v4           #ex:Ljava/io/IOException;
    .end local v5           #ext:Ljava/lang/String;
    .end local v6           #file:Ljava/io/File;
    .end local v7           #filename:Ljava/lang/String;
    .end local v9           #idx:I
    :cond_189
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    .line 1948
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/webkit/LoadListener;->checkSize(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1a2

    .line 1950
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/LoadListener;->goDownloadFile(ZZ)V

    goto/16 :goto_68

    .line 1955
    :cond_1a2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v14}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-static {v13, v14, v15}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/LoadListener;->finalfileTitle:Ljava/lang/String;

    .line 1958
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/LoadListener;->finalfileTitle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/LoadListener;->Download_filename:Ljava/lang/String;

    goto/16 :goto_90

    .line 1973
    .restart local v5       #ext:Ljava/lang/String;
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #filename:Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v9       #idx:I
    :cond_1df
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b9

    .line 2019
    .end local v1           #base:Ljava/io/File;
    .end local v5           #ext:Ljava/lang/String;
    .end local v6           #file:Ljava/io/File;
    .end local v7           #filename:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #idx:I
    .end local v11           #root:Ljava/lang/String;
    .restart local v2       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .restart local v3       #checkfailed:Z
    :cond_1e3
    :try_start_1e3
    iget v13, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v13, :cond_238

    .line 2020
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/LoadListener;->bytesSoFar:I

    if-nez v13, :cond_1f3

    .line 2022
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/LoadListener;->isDRMContent:Z

    if-eqz v13, :cond_1f3

    .line 2030
    :cond_1f3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/LoadListener;->bytesSoFar:I

    iget v14, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/LoadListener;->bytesSoFar:I

    .line 2031
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/LoadListener;->Download_stream:Ljava/io/FileOutputStream;

    iget-object v14, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v15, 0x0

    iget v0, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    move/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_1e3 .. :try_end_20c} :catch_20e

    goto/16 :goto_4f

    .line 2039
    .end local v2           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :catch_20e
    move-exception v4

    .line 2041
    .restart local v4       #ex:Ljava/io/IOException;
    const/16 v13, 0x1ec

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/LoadListener;->finalStatus:I

    .line 2042
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/LoadListener;->goDownloadFile(ZZ)V

    .line 2043
    const-string/jumbo v13, "webkit"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writeFile: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68

    .line 2034
    .end local v4           #ex:Ljava/io/IOException;
    .restart local v2       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_238
    :try_start_238
    invoke-virtual {v2}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V
    :try_end_23b
    .catch Ljava/io/IOException; {:try_start_238 .. :try_end_23b} :catch_20e

    goto/16 :goto_4f

    .line 2052
    :cond_23d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/LoadListener;->isDRMContent:Z

    if-eqz v13, :cond_68

    .line 2054
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/LoadListener;->downloadUri:Landroid/net/Uri;

    if-nez v13, :cond_24e

    .line 2056
    invoke-direct/range {p0 .. p0}, Landroid/webkit/LoadListener;->insertDownload()V

    goto/16 :goto_68

    .line 2060
    :cond_24e
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/webkit/LoadListener;->updateDownload(Z)Z

    move-result v12

    .line 2061
    .local v12, success:Z
    if-nez v12, :cond_68

    .line 2064
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/LoadListener;->goDownloadFile(ZZ)V

    goto/16 :goto_68
.end method


# virtual methods
.method attachRequestHandle(Landroid/net/http/RequestHandle;)V
    .registers 2
    .parameter "requestHandle"

    .prologue
    .line 1063
    iput-object p1, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1064
    return-void
.end method

.method authCredentialsInvalid()Z
    .registers 2

    .prologue
    .line 930
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isDigest()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getStale()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 1383
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_c

    .line 1384
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->cancel()V

    .line 1385
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1388
    :cond_c
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1390
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    .line 1392
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1393
    return-void
.end method

.method public cancelled()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    return v0
.end method

.method public certificate(Landroid/net/http/SslCertificate;)V
    .registers 3
    .parameter "certificate"

    .prologue
    .line 601
    const/16 v0, 0xaa

    invoke-virtual {p0, v0, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 602
    return-void
.end method

.method checkCache(Ljava/util/Map;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 824
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    invoke-static {v3, v4, v5, p1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    .line 829
    .local v0, result:Landroid/webkit/CacheManager$CacheResult;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 831
    iput-boolean v2, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 833
    if-eqz v0, :cond_4a

    .line 838
    new-instance v3, Landroid/webkit/CacheLoader;

    invoke-direct {v3, p0, v0}, Landroid/webkit/CacheLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V

    iput-object v3, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 842
    const-string/jumbo v3, "if-none-match"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string/jumbo v3, "if-modified-since"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 850
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 851
    iget-object v2, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v2}, Landroid/webkit/CacheLoader;->load()V

    .line 858
    :goto_37
    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 862
    :goto_39
    return v1

    .line 854
    :cond_3a
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x65

    iget-object v4, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_37

    :cond_4a
    move v1, v2

    .line 862
    goto :goto_39
.end method

.method contentLength()J
    .registers 3

    .prologue
    .line 1172
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mContentLength:J

    return-wide v0
.end method

.method public data([BI)V
    .registers 8
    .parameter "data"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 665
    iget-boolean v3, p0, Landroid/webkit/LoadListener;->mHaveContentData:Z

    if-nez v3, :cond_a

    .line 667
    if-lez p2, :cond_8

    const/4 v2, 0x1

    :cond_8
    iput-boolean v2, p0, Landroid/webkit/LoadListener;->mHaveContentData:Z

    .line 676
    :cond_a
    const/4 v1, 0x0

    .line 678
    .local v1, sendMessage:Z
    :try_start_b
    iget-object v3, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v3
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_e} :catch_2a

    .line 679
    :try_start_e
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v2}, Landroid/webkit/ByteArrayBuilder;->isEmpty()Z

    move-result v1

    .line 680
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, p2}, Landroid/webkit/ByteArrayBuilder;->append([BII)V

    .line 681
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_27

    .line 682
    if-eqz v1, :cond_26

    .line 684
    const/16 v2, 0x6e

    :try_start_1f
    invoke-virtual {p0, v2}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V
    :try_end_26
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_26} :catch_2a

    .line 689
    :cond_26
    :goto_26
    return-void

    .line 681
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v2
    :try_end_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 686
    :catch_2a
    move-exception v0

    .line 687
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "webkit"

    const-string v3, "LoadListener.data(): out of memory"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method detachRequestHandle()V
    .registers 2

    .prologue
    .line 1071
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1072
    return-void
.end method

.method downloadFile()V
    .registers 2

    .prologue
    .line 1083
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mDownloadByMySelf:Z

    if-eqz v0, :cond_5

    .line 1087
    :goto_4
    return-void

    .line 1085
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->downloadFile(Z)V

    goto :goto_4
.end method

.method downloadFile(Z)V
    .registers 11
    .parameter "doCancel"

    .prologue
    .line 1091
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1096
    const/4 v7, 0x0

    .line 1097
    .local v7, authHeaderName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1098
    .local v8, authHeaderValue:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    if-eqz v0, :cond_21

    .line 1100
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsProxy_lastAuthResponse:Z

    invoke-static {v0}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v7

    .line 1101
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #authHeaderValue:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1112
    .restart local v8       #authHeaderValue:Ljava/lang/String;
    :cond_21
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    if-eqz v0, :cond_4e

    .line 1114
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v3}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    invoke-virtual/range {v0 .. v8}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    .line 1125
    :cond_4e
    if-eqz p1, :cond_53

    .line 1126
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 1127
    :cond_53
    return-void
.end method

.method public endData()V
    .registers 2

    .prologue
    .line 701
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 702
    return-void
.end method

.method public error(ILjava/lang/String;)V
    .registers 5
    .parameter "id"
    .parameter "description"

    .prologue
    .line 626
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/webkit/LoadListener;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 627
    return-void
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFrame()Landroid/webkit/BrowserFrame;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method getWebAddress()Landroid/net/WebAddress;
    .registers 2

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    return-object v0
.end method

.method handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 965
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 966
    invoke-virtual {p0, p1, p2}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :goto_7
    return-void

    .line 969
    :cond_8
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 970
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_7
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    .line 213
    iget-object v3, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/4 v4, 0x4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v3, v4, v5, v6, v7}, Landroid/webkit/WebViewCore;->enterMsgHandle(Landroid/webkit/WebViewCore;IID)V

    .line 215
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_b6

    .line 321
    :cond_16
    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Landroid/webkit/WebViewCore;->leaveMsgHandle(D)V

    .line 323
    return-void

    .line 222
    :sswitch_1f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/http/Headers;

    invoke-direct {p0, v3}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    goto :goto_16

    .line 228
    :sswitch_27
    iget-boolean v3, p0, Landroid/webkit/LoadListener;->mDownloadByMySelf:Z

    if-eqz v3, :cond_2f

    .line 230
    invoke-direct {p0}, Landroid/webkit/LoadListener;->writeFile()V

    goto :goto_16

    .line 240
    :cond_2f
    iget v3, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v3, :cond_16

    invoke-direct {p0}, Landroid/webkit/LoadListener;->ignoreCallbacks()Z

    move-result v3

    if-nez v3, :cond_16

    .line 241
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    goto :goto_16

    .line 248
    :sswitch_3d
    iget-boolean v3, p0, Landroid/webkit/LoadListener;->mDownloadByMySelf:Z

    if-eqz v3, :cond_44

    .line 249
    invoke-direct {p0}, Landroid/webkit/LoadListener;->downloadFinish()V

    .line 258
    :cond_44
    invoke-direct {p0}, Landroid/webkit/LoadListener;->handleEndData()V

    goto :goto_16

    .line 266
    :sswitch_48
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_16

    .line 275
    :sswitch_52
    invoke-direct {p0}, Landroid/webkit/LoadListener;->doRedirect()V

    goto :goto_16

    .line 286
    :sswitch_56
    const/16 v3, 0x8c

    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 287
    .local v0, contMsg:Landroid/os/Message;
    const/16 v3, 0x78

    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 288
    .local v2, stopMsg:Landroid/os/Message;
    iget-object v3, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_16

    .line 297
    .end local v0           #contMsg:Landroid/os/Message;
    .end local v2           #stopMsg:Landroid/os/Message;
    :sswitch_6c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 298
    .local v1, status:Ljava/util/HashMap;
    const-string/jumbo v3, "major"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v3, "minor"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v3, "code"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v3, "reason"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6, v3}, Landroid/webkit/LoadListener;->handleStatus(IIILjava/lang/String;)V

    goto/16 :goto_16

    .line 309
    .end local v1           #status:Ljava/util/HashMap;
    :sswitch_a4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/http/SslCertificate;

    invoke-direct {p0, v3}, Landroid/webkit/LoadListener;->handleCertificate(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_16

    .line 317
    :sswitch_ad
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/http/SslError;

    invoke-direct {p0, v3}, Landroid/webkit/LoadListener;->handleSslError(Landroid/net/http/SslError;)V

    goto/16 :goto_16

    .line 215
    :sswitch_data_b6
    .sparse-switch
        0x64 -> :sswitch_1f
        0x6e -> :sswitch_27
        0x78 -> :sswitch_3d
        0x82 -> :sswitch_48
        0x8c -> :sswitch_52
        0x96 -> :sswitch_56
        0xa0 -> :sswitch_6c
        0xaa -> :sswitch_a4
        0xb4 -> :sswitch_ad
    .end sparse-switch
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .registers 5
    .parameter "error"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 880
    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/webkit/Network;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 898
    :cond_e
    :goto_e
    return v0

    .line 885
    :cond_f
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 886
    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v2, v1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    goto :goto_e

    .line 889
    :cond_1b
    const/16 v2, 0xb4

    invoke-virtual {p0, v2, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 895
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v2, :cond_2c

    .line 896
    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iput-object v2, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    .line 898
    :cond_2c
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method handleSslErrorResponse(Z)V
    .registers 3
    .parameter "proceed"

    .prologue
    .line 946
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_9

    .line 947
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    .line 949
    :cond_9
    if-nez p1, :cond_13

    .line 950
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 951
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    .line 953
    :cond_13
    return-void
.end method

.method public headers(Landroid/net/http/Headers;)V
    .registers 7
    .parameter "headers"

    .prologue
    .line 356
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v2, :cond_5

    .line 362
    :goto_4
    return-void

    .line 357
    :cond_5
    invoke-virtual {p1}, Landroid/net/http/Headers;->getSetCookie()Ljava/util/ArrayList;

    move-result-object v0

    .line 358
    .local v0, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 359
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/webkit/CookieManager;->setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 361
    :cond_22
    const/16 v2, 0x64

    invoke-virtual {p0, v2, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_4
.end method

.method host()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1036
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    if-eqz v0, :cond_b

    .line 1037
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v0}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1040
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isSynchronous()Z
    .registers 2

    .prologue
    .line 337
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    return v0
.end method

.method loadSynchronousMessages()V
    .registers 3

    .prologue
    .line 1763
    :goto_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1764
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1766
    :cond_15
    return-void
.end method

.method makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "username"
    .parameter "password"

    .prologue
    .line 975
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-nez v0, :cond_9

    .line 1001
    :cond_8
    :goto_8
    return-void

    .line 979
    :cond_9
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p1}, Landroid/net/http/HttpAuthHeader;->setUsername(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p2}, Landroid/net/http/HttpAuthHeader;->setPassword(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getScheme()I

    move-result v9

    .line 983
    .local v9, scheme:I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_28

    .line 985
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .line 987
    .local v1, isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/http/RequestHandle;->setupBasicAuthResponse(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 988
    .end local v1           #isProxy:Z
    :cond_28
    const/4 v0, 0x2

    if-ne v9, v0, :cond_8

    .line 990
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .line 992
    .restart local v1       #isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v4

    .line 993
    .local v4, realm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    .line 994
    .local v5, nonce:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getQop()Ljava/lang/String;

    move-result-object v6

    .line 995
    .local v6, qop:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 996
    .local v7, algorithm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getOpaque()Ljava/lang/String;

    move-result-object v8

    .line 998
    .local v8, opaque:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v8}, Landroid/net/http/RequestHandle;->setupDigestAuthResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method mimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1157
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method notifyError()V
    .registers 4

    .prologue
    .line 1350
    iget v1, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v1, :cond_1a

    .line 1351
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    .line 1352
    .local v0, description:Ljava/lang/String;
    if-nez v0, :cond_c

    const-string v0, ""

    .line 1353
    :cond_c
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Landroid/webkit/LoadListener;->nativeError(ILjava/lang/String;Ljava/lang/String;)V

    .line 1354
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1356
    .end local v0           #description:Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method originalUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1047
    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1048
    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    .line 1050
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_6
.end method

.method parseContentTypeHeader(Ljava/lang/String;)V
    .registers 8
    .parameter "contentType"

    .prologue
    const/16 v5, 0x3b

    .line 1544
    if-eqz p1, :cond_6c

    .line 1545
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1546
    .local v1, i:I
    if-ltz v1, :cond_7e

    .line 1547
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1549
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1550
    .local v2, j:I
    if-lez v2, :cond_75

    .line 1551
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1552
    if-ge v1, v2, :cond_23

    .line 1553
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1555
    :cond_23
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 1560
    :goto_2b
    iget-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 1562
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_4f

    .line 1566
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    .line 1574
    .end local v2           #j:I
    :cond_4f
    :goto_4f
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1577
    :try_start_57
    sget-object v4, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v5, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1578
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 1579
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;
    :try_end_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_6c} :catch_85

    .line 1588
    .end local v1           #i:I
    .end local v3           #m:Ljava/util/regex/Matcher;
    :cond_6c
    :goto_6c
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1589
    return-void

    .line 1557
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_75
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    goto :goto_2b

    .line 1570
    .end local v2           #j:I
    :cond_7e
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_4f

    .line 1581
    .restart local v3       #m:Ljava/util/regex/Matcher;
    :cond_81
    :try_start_81
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V
    :try_end_84
    .catch Ljava/lang/IllegalStateException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_6c

    .line 1583
    .end local v3           #m:Ljava/util/regex/Matcher;
    :catch_85
    move-exception v0

    .line 1584
    .local v0, ex:Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto :goto_6c
.end method

.method pauseLoad(Z)V
    .registers 3
    .parameter "pause"

    .prologue
    .line 1363
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_9

    .line 1364
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->pauseRequest(Z)V

    .line 1366
    :cond_9
    return-void
.end method

.method postIdentifier()J
    .registers 3

    .prologue
    .line 1055
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    return-wide v0
.end method

.method proxyAuthenticate()Z
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_b

    .line 543
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v0

    .line 546
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method realm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 916
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_6

    .line 917
    const/4 v0, 0x0

    .line 919
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method resetCancel()V
    .registers 2

    .prologue
    .line 1153
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    .line 1154
    return-void
.end method

.method setCacheLoader(Landroid/webkit/CacheLoader;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 812
    iput-object p1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 813
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 814
    return-void
.end method

.method setRequestData(Ljava/lang/String;Ljava/util/Map;[B)V
    .registers 4
    .parameter "method"
    .parameter
    .parameter "postData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 1013
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    .line 1014
    iput-object p2, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    .line 1015
    iput-object p3, p0, Landroid/webkit/LoadListener;->mPostData:[B

    .line 1016
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 1686
    if-eqz p1, :cond_1a

    .line 1687
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    .line 1688
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1689
    invoke-static {p1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    .line 1691
    :try_start_11
    new-instance v1, Landroid/net/WebAddress;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;
    :try_end_1a
    .catch Landroid/net/ParseException; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 1699
    :cond_1a
    :goto_1a
    return-void

    .line 1692
    :catch_1b
    move-exception v0

    .line 1693
    .local v0, e:Landroid/net/ParseException;
    invoke-virtual {v0}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_1a

    .line 1696
    .end local v0           #e:Landroid/net/ParseException;
    :cond_20
    iput-object p1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_1a
.end method

.method sslError()Landroid/net/http/SslError;
    .registers 2

    .prologue
    .line 938
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    return-object v0
.end method

.method public status(IIILjava/lang/String;)V
    .registers 8
    .parameter "majorVersion"
    .parameter "minorVersion"
    .parameter "code"
    .parameter "reasonPhrase"

    .prologue
    .line 564
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 565
    .local v0, status:Ljava/util/HashMap;
    const-string/jumbo v1, "major"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string/jumbo v1, "minor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v1, "code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v1}, Landroid/webkit/ByteArrayBuilder;->clear()V

    .line 571
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 572
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 573
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    .line 574
    const/16 v1, 0xa0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 575
    return-void
.end method

.method tearDown()V
    .registers 4

    .prologue
    .line 1309
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v1

    if-nez v1, :cond_34

    .line 1310
    new-instance v0, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v0}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .line 1311
    .local v0, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    .line 1312
    iget-object v1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    .line 1313
    iget-wide v1, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v1, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    .line 1314
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1320
    .end local v0           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_22
    iget v1, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v1, :cond_33

    .line 1321
    iget-boolean v1, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    if-nez v1, :cond_2d

    .line 1322
    invoke-direct {p0}, Landroid/webkit/LoadListener;->setNativeResponse()V

    .line 1325
    :cond_2d
    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    .line 1326
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1328
    :cond_33
    return-void

    .line 1317
    :cond_34
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v1, v2, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_22
.end method

.method transferEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1161
    iget-object v0, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1022
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    return-object v0
.end method
