.class public Lcom/android/internal/widget/TransportControlView;
.super Landroid/widget/FrameLayout;
.source "TransportControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/widget/LockScreenWidgetInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/TransportControlView$SavedState;,
        Lcom/android/internal/widget/TransportControlView$Metadata;,
        Lcom/android/internal/widget/TransportControlView$IRemoteControlDisplayWeak;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final DISPLAY_TIMEOUT_MS:I = 0x1388

.field private static final MAXDIM:I = 0x200

.field private static final MSG_SET_ARTWORK:I = 0x67

.field private static final MSG_SET_GENERATION_ID:I = 0x68

.field private static final MSG_SET_METADATA:I = 0x65

.field private static final MSG_SET_TRANSPORT_CONTROLS:I = 0x66

.field private static final MSG_UPDATE_STATE:I = 0x64

.field protected static final TAG:Ljava/lang/String; = "TransportControlView"


# instance fields
.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAttached:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBtnNext:Landroid/widget/ImageView;

.field private mBtnPlay:Landroid/widget/ImageView;

.field private mBtnPrev:Landroid/widget/ImageView;

.field private mClientGeneration:I

.field private mClientIntent:Landroid/app/PendingIntent;

.field private mCurrentPlayState:I

.field private mHandler:Landroid/os/Handler;

.field private mIRCD:Lcom/android/internal/widget/TransportControlView$IRemoteControlDisplayWeak;

.field private mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

.field private mPopulateMetadataWhenAttached:Landroid/os/Bundle;

.field private mTrackTitle:Landroid/widget/TextView;

.field private mTransportControlFlags:I

.field private mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 196
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Lcom/android/internal/widget/TransportControlView$Metadata;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/TransportControlView$Metadata;-><init>(Lcom/android/internal/widget/TransportControlView;)V

    iput-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    .line 92
    new-instance v0, Lcom/android/internal/widget/TransportControlView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/TransportControlView$1;-><init>(Lcom/android/internal/widget/TransportControlView;)V

    iput-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mHandler:Landroid/os/Handler;

    .line 197
    const-string v0, "TransportControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create TCV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/internal/widget/TransportControlView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    .line 199
    iput v3, p0, Lcom/android/internal/widget/TransportControlView;->mCurrentPlayState:I

    .line 200
    new-instance v0, Lcom/android/internal/widget/TransportControlView$IRemoteControlDisplayWeak;

    iget-object v1, p0, Lcom/android/internal/widget/TransportControlView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/TransportControlView$IRemoteControlDisplayWeak;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mIRCD:Lcom/android/internal/widget/TransportControlView$IRemoteControlDisplayWeak;

    .line 201
    invoke-direct {p0, v3}, Lcom/android/internal/widget/TransportControlView;->setIsPlayingSystemSetting(Z)V

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/TransportControlView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/widget/TransportControlView;->mClientGeneration:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/TransportControlView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/widget/TransportControlView;->mClientGeneration:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/TransportControlView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/widget/TransportControlView;->updatePlayPauseState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/TransportControlView;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/widget/TransportControlView;->updateMetadata(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/TransportControlView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/widget/TransportControlView;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/TransportControlView;)Lcom/android/internal/widget/TransportControlView$Metadata;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/TransportControlView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mAlbumArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/TransportControlView;)Lcom/android/internal/widget/LockScreenWidgetCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/widget/TransportControlView;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/widget/TransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method private getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    .registers 4
    .parameter "data"
    .parameter "id"

    .prologue
    .line 267
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private populateMetadata()V
    .registers 9

    .prologue
    const/16 v7, 0x21

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 287
    .local v3, trackTitleLength:I
    iget-object v4, p0, Lcom/android/internal/widget/TransportControlView;->mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

    #getter for: Lcom/android/internal/widget/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/widget/TransportControlView$Metadata;->access$1000(Lcom/android/internal/widget/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 288
    iget-object v4, p0, Lcom/android/internal/widget/TransportControlView;->mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

    #getter for: Lcom/android/internal/widget/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/widget/TransportControlView$Metadata;->access$1000(Lcom/android/internal/widget/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v4, p0, Lcom/android/internal/widget/TransportControlView;->mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

    #getter for: Lcom/android/internal/widget/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/widget/TransportControlView$Metadata;->access$1000(Lcom/android/internal/widget/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 291
    :cond_27
    iget-object v4, p0, Lcom/android/internal/widget/TransportControlView;->mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

    #getter for: Lcom/android/internal/widget/TransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/widget/TransportControlView$Metadata;->access$900(Lcom/android/internal/widget/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 293
    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_3e
    iget-object v4, p0, Lcom/android/internal/widget/TransportControlView;->mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

    #getter for: Lcom/android/internal/widget/TransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/widget/TransportControlView$Metadata;->access$900(Lcom/android/internal/widget/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_47
    iget-object v4, p0, Lcom/android/internal/widget/TransportControlView;->mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

    #getter for: Lcom/android/internal/widget/TransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/widget/TransportControlView$Metadata;->access$1100(Lcom/android/internal/widget/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_5e

    .line 299
    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_5e
    iget-object v4, p0, Lcom/android/internal/widget/TransportControlView;->mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

    #getter for: Lcom/android/internal/widget/TransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/widget/TransportControlView$Metadata;->access$1100(Lcom/android/internal/widget/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_67
    iget-object v4, p0, Lcom/android/internal/widget/TransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 304
    iget-object v4, p0, Lcom/android/internal/widget/TransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 305
    .local v2, str:Landroid/text/Spannable;
    if-eqz v3, :cond_88

    .line 306
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v3, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 308
    add-int/lit8 v3, v3, 0x1

    .line 310
    :cond_88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v3, :cond_9d

    .line 311
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v5, 0x7fffffff

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-interface {v2, v4, v3, v5, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 315
    :cond_9d
    iget-object v4, p0, Lcom/android/internal/widget/TransportControlView;->mAlbumArt:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/widget/TransportControlView;->mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

    #getter for: Lcom/android/internal/widget/TransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/internal/widget/TransportControlView$Metadata;->access$500(Lcom/android/internal/widget/TransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 316
    iget v0, p0, Lcom/android/internal/widget/TransportControlView;->mTransportControlFlags:I

    .line 317
    .local v0, flags:I
    iget-object v4, p0, Lcom/android/internal/widget/TransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/android/internal/widget/TransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 318
    iget-object v4, p0, Lcom/android/internal/widget/TransportControlView;->mBtnNext:Landroid/widget/ImageView;

    const/16 v5, 0x80

    invoke-static {v4, v0, v5}, Lcom/android/internal/widget/TransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 319
    iget-object v4, p0, Lcom/android/internal/widget/TransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    const/16 v5, 0x3c

    invoke-static {v4, v0, v5}, Lcom/android/internal/widget/TransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 325
    iget v4, p0, Lcom/android/internal/widget/TransportControlView;->mCurrentPlayState:I

    invoke-direct {p0, v4}, Lcom/android/internal/widget/TransportControlView;->updatePlayPauseState(I)V

    .line 326
    return-void
.end method

.method private sendMediaButtonClick(I)V
    .registers 8
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x0

    .line 453
    iget-object v3, p0, Lcom/android/internal/widget/TransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_e

    .line 455
    const-string v3, "TransportControlView"

    const-string/jumbo v4, "sendMediaButtonClick(): No client is currently registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_d
    return-void

    .line 460
    :cond_e
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 461
    .local v2, keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 464
    :try_start_1f
    iget-object v3, p0, Lcom/android/internal/widget/TransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/android/internal/widget/TransportControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_29
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1f .. :try_end_29} :catch_63

    .line 470
    :goto_29
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #keyEvent:Landroid/view/KeyEvent;
    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 471
    .restart local v2       #keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 474
    :try_start_3b
    iget-object v3, p0, Lcom/android/internal/widget/TransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/android/internal/widget/TransportControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_45
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3b .. :try_end_45} :catch_46

    goto :goto_d

    .line 475
    :catch_46
    move-exception v0

    .line 476
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending intent for media button up: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_d

    .line 465
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catch_63
    move-exception v0

    .line 466
    .restart local v0       #e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending intent for media button down: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_29
.end method

.method private setIsPlayingSystemSetting(I)V
    .registers 3
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 521
    packed-switch p1, :pswitch_data_12

    .line 537
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/widget/TransportControlView;->setIsPlayingSystemSetting(Z)V

    .line 540
    :goto_7
    return-void

    .line 528
    :pswitch_8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/TransportControlView;->setIsPlayingSystemSetting(Z)V

    goto :goto_7

    .line 531
    :pswitch_d
    invoke-direct {p0, v0}, Lcom/android/internal/widget/TransportControlView;->setIsPlayingSystemSetting(Z)V

    goto :goto_7

    .line 521
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_d
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private setIsPlayingSystemSetting(Z)V
    .registers 5
    .parameter "isPlaying"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "google_music_is_playing"

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    return-void

    .line 543
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static setVisibilityBasedOnFlag(Landroid/view/View;II)V
    .registers 4
    .parameter "view"
    .parameter "flags"
    .parameter "flag"

    .prologue
    .line 329
    and-int v0, p1, p2

    if-eqz v0, :cond_9

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :goto_8
    return-void

    .line 332
    :cond_9
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method private updateMetadata(Landroid/os/Bundle;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/internal/widget/TransportControlView;->mAttached:Z

    if-eqz v0, :cond_27

    .line 272
    iget-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

    const/16 v1, 0xd

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/TransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/internal/widget/TransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/widget/TransportControlView$Metadata;->access$902(Lcom/android/internal/widget/TransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/TransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/internal/widget/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/widget/TransportControlView$Metadata;->access$1002(Lcom/android/internal/widget/TransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mMetadata:Lcom/android/internal/widget/TransportControlView$Metadata;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/TransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/internal/widget/TransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/widget/TransportControlView$Metadata;->access$1102(Lcom/android/internal/widget/TransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    invoke-direct {p0}, Lcom/android/internal/widget/TransportControlView;->populateMetadata()V

    .line 279
    :goto_26
    return-void

    .line 277
    :cond_27
    iput-object p1, p0, Lcom/android/internal/widget/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    goto :goto_26
.end method

.method private updatePlayPauseState(I)V
    .registers 7
    .parameter "state"

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/android/internal/widget/TransportControlView;->setIsPlayingSystemSetting(I)V

    .line 340
    iget v3, p0, Lcom/android/internal/widget/TransportControlView;->mCurrentPlayState:I

    if-ne p1, v3, :cond_8

    .line 379
    :goto_7
    return-void

    .line 345
    :cond_8
    const/4 v2, 0x0

    .line 346
    .local v2, showIfHidden:Z
    sparse-switch p1, :sswitch_data_52

    .line 368
    const v1, 0x1080024

    .line 369
    .local v1, imageResId:I
    const v0, 0x1040303

    .line 370
    .local v0, imageDescId:I
    const/4 v2, 0x0

    .line 373
    :goto_13
    iget-object v3, p0, Lcom/android/internal/widget/TransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    iget-object v3, p0, Lcom/android/internal/widget/TransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/TransportControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 375
    if-eqz v2, :cond_38

    iget-object v3, p0, Lcom/android/internal/widget/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/android/internal/widget/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-interface {v3, p0}, Lcom/android/internal/widget/LockScreenWidgetCallback;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 376
    iget-object v3, p0, Lcom/android/internal/widget/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-interface {v3, p0}, Lcom/android/internal/widget/LockScreenWidgetCallback;->requestShow(Landroid/view/View;)V

    .line 378
    :cond_38
    iput p1, p0, Lcom/android/internal/widget/TransportControlView;->mCurrentPlayState:I

    goto :goto_7

    .line 348
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :sswitch_3b
    const v1, 0x108008a

    .line 351
    .restart local v1       #imageResId:I
    const v0, 0x1040303

    .line 352
    .restart local v0       #imageDescId:I
    goto :goto_13

    .line 355
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :sswitch_42
    const v1, 0x1080023

    .line 356
    .restart local v1       #imageResId:I
    const v0, 0x1040302

    .line 357
    .restart local v0       #imageDescId:I
    const/4 v2, 0x1

    .line 358
    goto :goto_13

    .line 361
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :sswitch_4a
    const v1, 0x108031c

    .line 362
    .restart local v1       #imageResId:I
    const v0, 0x1040304

    .line 363
    .restart local v0       #imageDescId:I
    const/4 v2, 0x1

    .line 364
    goto :goto_13

    .line 346
    :sswitch_data_52
    .sparse-switch
        0x3 -> :sswitch_42
        0x8 -> :sswitch_4a
        0x9 -> :sswitch_3b
    .end sparse-switch
.end method

.method private updateTransportControls(I)V
    .registers 2
    .parameter "transportControlFlags"

    .prologue
    .line 205
    iput p1, p0, Lcom/android/internal/widget/TransportControlView;->mTransportControlFlags:I

    .line 206
    return-void
.end method

.method private wasPlayingRecently(IJ)Z
    .registers 10
    .parameter "state"
    .parameter "stateChangeTimeMs"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 490
    packed-switch p1, :pswitch_data_34

    .line 514
    const-string v0, "TransportControlView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown playback state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in wasPlayingRecently()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 515
    :cond_24
    :goto_24
    :pswitch_24
    return v0

    :pswitch_25
    move v0, v1

    .line 500
    goto :goto_24

    .line 512
    :pswitch_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_24

    move v0, v1

    goto :goto_24

    .line 490
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_25
        :pswitch_27
        :pswitch_27
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 3

    .prologue
    .line 225
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    if-eqz v0, :cond_f

    .line 227
    iget-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/TransportControlView;->updateMetadata(Landroid/os/Bundle;)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    .line 230
    :cond_f
    iget-boolean v0, p0, Lcom/android/internal/widget/TransportControlView;->mAttached:Z

    if-nez v0, :cond_1a

    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/internal/widget/TransportControlView;->mIRCD:Lcom/android/internal/widget/TransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 234
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/TransportControlView;->mAttached:Z

    .line 235
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 435
    const/4 v0, -0x1

    .line 436
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/internal/widget/TransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_17

    .line 437
    const/16 v0, 0x58

    .line 444
    :cond_7
    :goto_7
    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 445
    invoke-direct {p0, v0}, Lcom/android/internal/widget/TransportControlView;->sendMediaButtonClick(I)V

    .line 446
    iget-object v1, p0, Lcom/android/internal/widget/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    if-eqz v1, :cond_16

    .line 447
    iget-object v1, p0, Lcom/android/internal/widget/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-interface {v1, p0}, Lcom/android/internal/widget/LockScreenWidgetCallback;->userActivity(Landroid/view/View;)V

    .line 450
    :cond_16
    return-void

    .line 438
    :cond_17
    iget-object v1, p0, Lcom/android/internal/widget/TransportControlView;->mBtnNext:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1e

    .line 439
    const/16 v0, 0x57

    goto :goto_7

    .line 440
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/widget/TransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_7

    .line 441
    const/16 v0, 0x55

    goto :goto_7
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 239
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 240
    iget-boolean v0, p0, Lcom/android/internal/widget/TransportControlView;->mAttached:Z

    if-eqz v0, :cond_e

    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/internal/widget/TransportControlView;->mIRCD:Lcom/android/internal/widget/TransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 244
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/TransportControlView;->mAttached:Z

    .line 245
    return-void
.end method

.method public onFinishInflate()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 210
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 211
    const v5, 0x1020016

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/widget/TransportControlView;->mTrackTitle:Landroid/widget/TextView;

    .line 212
    iget-object v5, p0, Lcom/android/internal/widget/TransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 213
    const v5, 0x10202bd

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/widget/TransportControlView;->mAlbumArt:Landroid/widget/ImageView;

    .line 214
    const v5, 0x10202be

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/widget/TransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    .line 215
    const v5, 0x10202bf

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/widget/TransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    .line 216
    const v5, 0x10202c0

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/widget/TransportControlView;->mBtnNext:Landroid/widget/ImageView;

    .line 217
    const/4 v5, 0x3

    new-array v1, v5, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/TransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    aput-object v6, v1, v5

    iget-object v5, p0, Lcom/android/internal/widget/TransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    aput-object v5, v1, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/widget/TransportControlView;->mBtnNext:Landroid/widget/ImageView;

    aput-object v6, v1, v5

    .line 218
    .local v1, buttons:[Landroid/view/View;
    move-object v0, v1

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_54
    if-ge v2, v3, :cond_5e

    aget-object v4, v0, v2

    .line 219
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 221
    .end local v4           #view:Landroid/view/View;
    :cond_5e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 250
    const/16 v1, 0x200

    invoke-virtual {p0}, Lcom/android/internal/widget/TransportControlView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/TransportControlView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 253
    .local v0, dim:I
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 423
    instance-of v1, p1, Lcom/android/internal/widget/TransportControlView$SavedState;

    if-nez v1, :cond_8

    .line 424
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 432
    :cond_7
    :goto_7
    return-void

    :cond_8
    move-object v0, p1

    .line 427
    check-cast v0, Lcom/android/internal/widget/TransportControlView$SavedState;

    .line 428
    .local v0, ss:Lcom/android/internal/widget/TransportControlView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/TransportControlView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 429
    iget-boolean v1, v0, Lcom/android/internal/widget/TransportControlView$SavedState;->wasShowing:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/widget/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    if-eqz v1, :cond_7

    .line 430
    iget-object v1, p0, Lcom/android/internal/widget/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-interface {v1, p0}, Lcom/android/internal/widget/LockScreenWidgetCallback;->requestShow(Landroid/view/View;)V

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 414
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 415
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/TransportControlView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/TransportControlView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 416
    .local v0, ss:Lcom/android/internal/widget/TransportControlView$SavedState;
    iget-object v2, p0, Lcom/android/internal/widget/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/internal/widget/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-interface {v2, p0}, Lcom/android/internal/widget/LockScreenWidgetCallback;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    :goto_16
    iput-boolean v2, v0, Lcom/android/internal/widget/TransportControlView$SavedState;->wasShowing:Z

    .line 417
    return-object v0

    .line 416
    :cond_19
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public providesClock()Z
    .registers 2

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/internal/widget/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    .line 483
    return-void
.end method
