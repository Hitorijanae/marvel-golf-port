.class Landroid/media/AudioService$3;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 4632
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 13
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 4635
    if-ne p1, v3, :cond_2e

    .line 4637
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0, v2}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v8

    .line 4638
    .local v8, ringVolume:I
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    .line 4639
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mPreVolumeIndex:I
    invoke-static {v0, v8}, Landroid/media/AudioService;->access$10002(Landroid/media/AudioService;I)I

    .line 4640
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mResumeRingVolume:Z
    invoke-static {v0, v3}, Landroid/media/AudioService;->access$10102(Landroid/media/AudioService;Z)Z

    .line 4644
    :cond_1e
    invoke-static {}, Landroid/media/AudioService;->access$10200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4645
    :try_start_23
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$10302(Landroid/media/AudioService;Z)Z

    .line 4646
    monitor-exit v1

    .line 4660
    .end local v8           #ringVolume:I
    :cond_2a
    :goto_2a
    return-void

    .line 4646
    .restart local v8       #ringVolume:I
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2b

    throw v0

    .line 4647
    .end local v8           #ringVolume:I
    :cond_2e
    if-eq p1, v2, :cond_32

    if-nez p1, :cond_2a

    .line 4650
    :cond_32
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mResumeRingVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$10100(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 4651
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x67

    iget-object v4, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mPreVolumeIndex:I
    invoke-static {v4}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)I

    move-result v4

    mul-int/lit8 v5, v4, 0xa

    iget-object v4, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v4}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v6, v4, v2

    const/16 v7, 0x1f4

    move v4, v2

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 4653
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mResumeRingVolume:Z
    invoke-static {v0, v9}, Landroid/media/AudioService;->access$10102(Landroid/media/AudioService;Z)Z

    .line 4656
    :cond_5d
    invoke-static {}, Landroid/media/AudioService;->access$10200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4657
    :try_start_62
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$10302(Landroid/media/AudioService;Z)Z

    .line 4658
    monitor-exit v1

    goto :goto_2a

    :catchall_6a
    move-exception v0

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_6a

    throw v0
.end method
