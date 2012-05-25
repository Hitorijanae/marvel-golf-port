.class Landroid/webkit/WebView$OnTrimMemoryListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnTrimMemoryListener"
.end annotation


# static fields
.field private static sInstance:Landroid/webkit/WebView$OnTrimMemoryListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 451
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebView$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebView$OnTrimMemoryListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 459
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 460
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 461
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 454
    sget-object v0, Landroid/webkit/WebView$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebView$OnTrimMemoryListener;

    if-nez v0, :cond_f

    .line 455
    new-instance v0, Landroid/webkit/WebView$OnTrimMemoryListener;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView$OnTrimMemoryListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/WebView$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebView$OnTrimMemoryListener;

    .line 457
    :cond_f
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 466
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 471
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2
    .parameter "level"

    .prologue
    .line 478
    invoke-static {p1}, Landroid/webkit/WebView;->nativeOnTrimMemory(I)V

    .line 479
    return-void
.end method
