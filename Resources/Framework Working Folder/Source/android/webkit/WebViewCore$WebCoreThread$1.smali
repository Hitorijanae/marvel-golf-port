.class Landroid/webkit/WebViewCore$WebCoreThread$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$WebCoreThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore$WebCoreThread;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$WebCoreThread;)V
    .registers 2
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 740
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_c2

    .line 792
    :goto_8
    return-void

    .line 742
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebViewCore;

    .line 743
    .local v0, core:Landroid/webkit/WebViewCore;
    #calls: Landroid/webkit/WebViewCore;->initialize()V
    invoke-static {v0}, Landroid/webkit/WebViewCore;->access$500(Landroid/webkit/WebViewCore;)V

    goto :goto_8

    .line 748
    .end local v0           #core:Landroid/webkit/WebViewCore;
    :sswitch_11
    invoke-static {}, Landroid/webkit/WebViewCore;->access$600()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 749
    const-string v1, "WebCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Increasing values:: CPU Set options.. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/webkit/WebViewCore;->access$600()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-static {}, Landroid/webkit/WebViewCore$WebCoreThread;->access$700()Lorg/codeaurora/Performance;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 751
    invoke-static {}, Landroid/webkit/WebViewCore$WebCoreThread;->access$700()Lorg/codeaurora/Performance;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v6, v2}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 753
    :cond_43
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_8

    .line 759
    :sswitch_48
    invoke-static {}, Landroid/webkit/WebViewCore;->access$600()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 760
    const-string v1, "WebCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Increasing values:: CPU Set options.. flag is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/webkit/WebViewCore;->access$600()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-static {}, Landroid/webkit/WebViewCore$WebCoreThread;->access$700()Lorg/codeaurora/Performance;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 762
    invoke-static {}, Landroid/webkit/WebViewCore$WebCoreThread;->access$700()Lorg/codeaurora/Performance;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 764
    :cond_78
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_8

    .line 769
    :sswitch_7c
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_88

    .line 770
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 773
    :cond_88
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->addPackageName(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 777
    :sswitch_93
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_9f

    .line 778
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 781
    :cond_9f
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->removePackageName(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 785
    :sswitch_aa
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_b6

    .line 786
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :cond_b6
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ProxyProperties;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->updateProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_8

    .line 740
    nop

    :sswitch_data_c2
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_11
        0x2 -> :sswitch_48
        0xb9 -> :sswitch_7c
        0xba -> :sswitch_93
        0xc1 -> :sswitch_aa
    .end sparse-switch
.end method
