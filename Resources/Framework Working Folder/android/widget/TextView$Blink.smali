.class Landroid/widget/TextView$Blink;
.super Landroid/os/Handler;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Blink"
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 9100
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 9101
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    .line 9102
    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .prologue
    .line 9124
    iget-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-nez v0, :cond_a

    .line 9125
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9126
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 9128
    :cond_a
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    .line 9105
    iget-boolean v1, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-eqz v1, :cond_5

    .line 9121
    :cond_4
    :goto_4
    return-void

    .line 9109
    :cond_5
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9111
    iget-object v1, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9113
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_4

    #calls: Landroid/widget/TextView;->shouldBlink()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2200(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9114
    iget-object v1, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_1f

    .line 9115
    #calls: Landroid/widget/TextView;->invalidateCursorPath()V
    invoke-static {v0}, Landroid/widget/TextView;->access$2300(Landroid/widget/TextView;)V

    .line 9119
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/widget/TextView;->access$2400()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {}, Landroid/widget/TextView;->access$2500()I

    move-result v1

    :goto_2d
    int-to-long v4, v1

    add-long v1, v2, v4

    invoke-virtual {p0, p0, v1, v2}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_34
    invoke-static {}, Landroid/widget/TextView;->access$2600()I

    move-result v1

    goto :goto_2d
.end method

.method uncancel()V
    .registers 2

    .prologue
    .line 9131
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 9132
    return-void
.end method
