.class Landroid/media/AudioService$FocusStackEntry;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusStackEntry"
.end annotation


# instance fields
.field public mCallingUid:I

.field public mClientId:Ljava/lang/String;

.field public mFocusChangeType:I

.field public mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field public mHandler:Landroid/media/AudioService$AudioFocusDeathHandler;

.field public mPackageName:Ljava/lang/String;

.field public mSourceRef:Landroid/os/IBinder;

.field public mStreamType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4688
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4679
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    .line 4680
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4681
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 4689
    return-void
.end method

.method public constructor <init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/AudioService$AudioFocusDeathHandler;Ljava/lang/String;I)V
    .registers 11
    .parameter "streamType"
    .parameter "duration"
    .parameter "afl"
    .parameter "source"
    .parameter "id"
    .parameter "hdlr"
    .parameter "pn"
    .parameter "uid"

    .prologue
    const/4 v1, 0x0

    .line 4693
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4679
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    .line 4680
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4681
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 4694
    iput p1, p0, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    .line 4695
    iput-object p3, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4696
    iput-object p4, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 4697
    iput-object p5, p0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    .line 4698
    iput p2, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    .line 4699
    iput-object p6, p0, Landroid/media/AudioService$FocusStackEntry;->mHandler:Landroid/media/AudioService$AudioFocusDeathHandler;

    .line 4700
    iput-object p7, p0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    .line 4701
    iput p8, p0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    .line 4702
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4717
    invoke-virtual {p0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 4718
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4719
    return-void
.end method

.method public unlinkToDeath()V
    .registers 5

    .prologue
    .line 4706
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mHandler:Landroid/media/AudioService$AudioFocusDeathHandler;

    if-eqz v1, :cond_13

    .line 4707
    iget-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/media/AudioService$FocusStackEntry;->mHandler:Landroid/media/AudioService$AudioFocusDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4708
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mHandler:Landroid/media/AudioService$AudioFocusDeathHandler;
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_13} :catch_14

    .line 4713
    :cond_13
    :goto_13
    return-void

    .line 4710
    :catch_14
    move-exception v0

    .line 4711
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in FocusStackEntry.unlinkToDeath()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method
