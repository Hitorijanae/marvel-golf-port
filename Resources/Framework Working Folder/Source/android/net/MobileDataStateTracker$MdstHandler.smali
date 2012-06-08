.class Landroid/net/MobileDataStateTracker$MdstHandler;
.super Landroid/os/Handler;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MdstHandler"
.end annotation


# instance fields
.field private mMdst:Landroid/net/MobileDataStateTracker;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/net/MobileDataStateTracker;)V
    .registers 3
    .parameter "looper"
    .parameter "mdst"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 144
    iput-object p2, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    .line 145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_5c

    .line 167
    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignorning unknown message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 171
    :goto_1d
    return-void

    .line 151
    :sswitch_1e
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_33

    .line 153
    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    const-string v1, "MdstHandler connected"

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    #setter for: Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1, v0}, Landroid/net/MobileDataStateTracker;->access$202(Landroid/net/MobileDataStateTracker;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1d

    .line 158
    :cond_33
    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MdstHandler %s NOT connected error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto :goto_1d

    .line 163
    :sswitch_4e
    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    const-string v1, "Disconnected from DataStateTracker"

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    const/4 v1, 0x0

    #setter for: Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$202(Landroid/net/MobileDataStateTracker;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1d

    .line 149
    :sswitch_data_5c
    .sparse-switch
        0x11000 -> :sswitch_1e
        0x11004 -> :sswitch_4e
    .end sparse-switch
.end method