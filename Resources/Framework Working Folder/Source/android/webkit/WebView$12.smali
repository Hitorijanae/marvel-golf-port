.class Landroid/webkit/WebView$12;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->StartAnimationZoomOut(ZF)V
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
    .line 15233
    iput-object p1, p0, Landroid/webkit/WebView$12;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 15235
    iget-object v0, p0, Landroid/webkit/WebView$12;->this$0:Landroid/webkit/WebView;

    iget-boolean v0, v0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    if-nez v0, :cond_12

    .line 15236
    iget-object v0, p0, Landroid/webkit/WebView$12;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 15237
    iget-object v0, p0, Landroid/webkit/WebView$12;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15239
    :cond_12
    return-void
.end method
