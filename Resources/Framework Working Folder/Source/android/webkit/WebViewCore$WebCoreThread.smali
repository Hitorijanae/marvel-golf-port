.class Landroid/webkit/WebViewCore$WebCoreThread;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebCoreThread"
.end annotation


# static fields
.field private static final INITIALIZE:I = 0x0

.field private static final REDUCE_PRIORITY:I = 0x1

.field private static final RESUME_PRIORITY:I = 0x2

.field private static mPerf:Lorg/codeaurora/Performance;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 731
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Landroid/webkit/WebViewCore$WebCoreThread;->mPerf:Lorg/codeaurora/Performance;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 726
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewCore$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 726
    invoke-direct {p0}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>()V

    return-void
.end method

.method static synthetic access$700()Lorg/codeaurora/Performance;
    .registers 1

    .prologue
    .line 726
    sget-object v0, Landroid/webkit/WebViewCore$WebCoreThread;->mPerf:Lorg/codeaurora/Performance;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 734
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 735
    invoke-static {}, Landroid/webkit/WebViewCore;->access$400()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 736
    const-class v1, Landroid/webkit/WebViewCore;

    monitor-enter v1

    .line 737
    :try_start_d
    new-instance v0, Landroid/webkit/WebViewCore$WebCoreThread$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewCore$WebCoreThread$1;-><init>(Landroid/webkit/WebViewCore$WebCoreThread;)V

    invoke-static {v0}, Landroid/webkit/WebViewCore;->access$402(Landroid/os/Handler;)Landroid/os/Handler;

    .line 794
    const-class v0, Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 795
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1f

    .line 796
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 797
    return-void

    .line 795
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method
