.class Landroid/media/AudioService$4;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService;->showVolumeChangeUi(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;

.field final synthetic val$flags:I

.field final synthetic val$streamType:I


# direct methods
.method constructor <init>(Landroid/media/AudioService;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2817
    iput-object p1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    iput p2, p0, Landroid/media/AudioService$4;->val$streamType:I

    iput p3, p0, Landroid/media/AudioService$4;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2820
    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_17

    .line 2821
    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$6100(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/ThemeUtils;->createUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    #setter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$502(Landroid/media/AudioService;Landroid/content/Context;)Landroid/content/Context;

    .line 2824
    :cond_17
    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    .line 2825
    .local v0, context:Landroid/content/Context;
    :goto_25
    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    new-instance v2, Landroid/view/VolumePanel;

    iget-object v3, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    invoke-direct {v2, v0, v3}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    #setter for: Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$6702(Landroid/media/AudioService;Landroid/view/VolumePanel;)Landroid/view/VolumePanel;

    .line 2826
    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;
    invoke-static {v1}, Landroid/media/AudioService;->access$6700(Landroid/media/AudioService;)Landroid/view/VolumePanel;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService$4;->val$streamType:I

    iget v3, p0, Landroid/media/AudioService$4;->val$flags:I

    invoke-virtual {v1, v2, v3}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 2827
    return-void

    .line 2824
    .end local v0           #context:Landroid/content/Context;
    :cond_3f
    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$6100(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    goto :goto_25
.end method
