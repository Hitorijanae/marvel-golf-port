.class Landroid/media/MediaPlugin;
.super Ljava/lang/Object;
.source "MediaPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlugin$OnEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlugin"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public handleGetCurrentPosition()I
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public handleOnBufferUpdate(I)V
    .registers 2
    .parameter "percent"

    .prologue
    .line 36
    return-void
.end method

.method public handleOnError(II)V
    .registers 3
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 39
    return-void
.end method

.method public handleOnInfo(II)V
    .registers 3
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 42
    return-void
.end method

.method public handleOnPlayComplete()V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

.method public handleOnPrepared()V
    .registers 1

    .prologue
    .line 30
    return-void
.end method

.method public handlePause()V
    .registers 1

    .prologue
    .line 16
    return-void
.end method

.method public handleRelease()V
    .registers 1

    .prologue
    .line 27
    return-void
.end method

.method public handleReset()V
    .registers 1

    .prologue
    .line 24
    return-void
.end method

.method public handleSeekComplete()V
    .registers 1

    .prologue
    .line 22
    return-void
.end method

.method public handleSeekTo(I)V
    .registers 2
    .parameter "msec"

    .prologue
    .line 19
    return-void
.end method

.method public handleSetDataSource(Ljava/lang/String;)V
    .registers 2
    .parameter "filePath"

    .prologue
    .line 45
    return-void
.end method

.method public handleSetLooping(Z)V
    .registers 2
    .parameter "looping"

    .prologue
    .line 51
    return-void
.end method

.method public handleSetVolume(FF)V
    .registers 3
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 48
    return-void
.end method

.method public handleStart()V
    .registers 1

    .prologue
    .line 10
    return-void
.end method

.method public handleStop()V
    .registers 1

    .prologue
    .line 13
    return-void
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isSeeking()Z
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public setOnEventListener(Landroid/media/MediaPlugin$OnEventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 77
    return-void
.end method
