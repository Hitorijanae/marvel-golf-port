.class Landroid/webkit/WebView$13;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter

    .prologue
    .line 15283
    iput-object p1, p0, Landroid/webkit/WebView$13;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 15285
    sget-boolean v0, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    if-ne v0, v3, :cond_1d

    .line 15286
    iget-object v0, p0, Landroid/webkit/WebView$13;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->EndAnimationZoomOut()V

    .line 15287
    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/HTCWebCore$OnWebViewTabEffectListener;

    if-eqz v0, :cond_1d

    .line 15288
    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/HTCWebCore$OnWebViewTabEffectListener;

    iget-object v1, p0, Landroid/webkit/WebView$13;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$13;->this$0:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->mbNeedCallBack:Z

    invoke-interface {v0, v1, v2}, Landroid/webkit/HTCWebCore$OnWebViewTabEffectListener;->onMultiTouchBouncingMinScale(Landroid/webkit/WebView;Z)V

    .line 15289
    iget-object v0, p0, Landroid/webkit/WebView$13;->this$0:Landroid/webkit/WebView;

    iput-boolean v3, v0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    .line 15292
    :cond_1d
    return-void
.end method
