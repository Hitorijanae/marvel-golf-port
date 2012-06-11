.class public Lcom/android/internal/widget/multiwaveview/MultiWaveView;
.super Landroid/view/View;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final CHEVRON_ANIMATION_DURATION:I = 0x352

.field private static final CHEVRON_INCREMENTAL_DELAY:I = 0xa0

.field private static final DEBUG:Z = false

.field public static final DEFAULT_TARGETS:Ljava/lang/String; = "empty|empty|empty|#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.camera/.Camera;S.icon_resource=ic_lockscreen_camera_normal;end"

.field public static final EMPTY_TARGET:Ljava/lang/String; = "empty"

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0x4b0

.field public static final ICON_FILE:Ljava/lang/String; = "icon_file"

.field public static final ICON_PACKAGE:Ljava/lang/String; = "icon_package"

.field public static final ICON_RESOURCE:Ljava/lang/String; = "icon_resource"

.field public static final MAX_PHONE_TARGETS:I = 0x4

.field public static final MAX_TABLET_TARGETS:I = 0x7

.field public static final PHONE_TARGET_INSET:I = 0x3c

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0x12c

.field private static final SHOW_ANIMATION_DELAY:I = 0x0

.field private static final SHOW_ANIMATION_DURATION:I = 0x0

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x4

.field private static final STATE_FIRST_TOUCH:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x3

.field private static final STATE_TRACKING:I = 0x2

.field public static final TABLET_TARGET_INSET:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "MultiWaveView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f


# instance fields
.field private mActiveTarget:I

.field private mAnimatingTargets:Z

.field private mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private mChevronAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mChevronDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mGrabbedState:I

.field private mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

.field private mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mHitRadius:F

.field private mHorizontalOffset:F

.field private mNewTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mSnapMargin:F

.field private mTapRadius:F

.field private mTargetAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalOffset:F

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 16
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    sget-object v11, Lcom/android/internal/widget/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 136
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 137
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 138
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    .line 139
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    .line 148
    const/4 v11, 0x3

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    .line 149
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrationDuration:I

    .line 151
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 157
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 158
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 159
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 164
    new-instance v11, Lcom/android/internal/widget/multiwaveview/MultiWaveView$1;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$1;-><init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 170
    new-instance v11, Lcom/android/internal/widget/multiwaveview/MultiWaveView$2;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$2;-><init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 177
    new-instance v11, Lcom/android/internal/widget/multiwaveview/MultiWaveView$3;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$3;-><init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 185
    new-instance v11, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;-><init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 211
    .local v9, res:Landroid/content/res/Resources;
    sget-object v11, Lcom/android/internal/R$styleable;->MultiWaveView:[I

    invoke-virtual {p1, p2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v11, 0x9

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 213
    const/16 v11, 0xf

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    .line 215
    const/16 v11, 0xe

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVerticalOffset:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVerticalOffset:F

    .line 217
    const/16 v11, 0xa

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 218
    const/16 v11, 0xc

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 219
    const/16 v11, 0xb

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrationDuration:I

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrationDuration:I

    .line 221
    const/16 v11, 0xd

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    .line 223
    new-instance v11, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 225
    iget-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v11}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTapRadius:F

    .line 226
    new-instance v11, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 229
    const/4 v11, 0x4

    new-array v4, v11, [I

    fill-array-data v4, :array_14e

    .line 234
    .local v4, chevrons:[I
    move-object v1, v4

    .local v1, arr$:[I
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_ce
    if-ge v6, v7, :cond_ef

    aget v2, v1, v6

    .line 235
    .local v2, chevron:I
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 236
    .local v3, chevronDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_d7
    iget v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    if-ge v5, v11, :cond_ec

    .line 237
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    if-eqz v3, :cond_ea

    new-instance v11, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v11, v9, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    :goto_e4
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v5, v5, 0x1

    goto :goto_d7

    .line 237
    :cond_ea
    const/4 v11, 0x0

    goto :goto_e4

    .line 234
    :cond_ec
    add-int/lit8 v6, v6, 0x1

    goto :goto_ce

    .line 243
    .end local v2           #chevron:I
    .end local v3           #chevronDrawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #i:I
    :cond_ef
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 244
    .local v8, outValue:Landroid/util/TypedValue;
    const/4 v11, 0x2

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_100

    .line 245
    iget v11, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v11}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    .line 247
    :cond_100
    iget-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v11, :cond_10c

    iget-object v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_114

    .line 248
    :cond_10c
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify at least one target drawable"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 252
    :cond_114
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_12a

    .line 253
    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    .line 254
    .local v10, resourceId:I
    if-nez v10, :cond_127

    .line 255
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify target descriptions"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 257
    :cond_127
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 261
    .end local v10           #resourceId:I
    :cond_12a
    const/4 v11, 0x1

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_140

    .line 262
    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    .line 263
    .restart local v10       #resourceId:I
    if-nez v10, :cond_13d

    .line 264
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify direction descriptions"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 266
    :cond_13d
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 269
    .end local v10           #resourceId:I
    :cond_140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    iget v11, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrationDuration:I

    if-lez v11, :cond_14c

    const/4 v11, 0x1

    :goto_148
    invoke-virtual {p0, v11}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setVibrateEnabled(Z)V

    .line 271
    return-void

    .line 270
    :cond_14c
    const/4 v11, 0x0

    goto :goto_148

    .line 229
    :array_14e
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/multiwaveview/MultiWaveView;IFF)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/widget/multiwaveview/MultiWaveView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/widget/multiwaveview/MultiWaveView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetDrawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetDrawables:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Ljava/util/ArrayList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->internalSetTargetResources(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    return p1
.end method

.method private announceTargets()V
    .registers 9

    .prologue
    .line 979
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 980
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 981
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_3f

    .line 982
    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 983
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 986
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 987
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    .end local v4           #text:Ljava/lang/String;
    :cond_2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3c

    .line 990
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 981
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 993
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_3f
    return-void
.end method

.method private announceText(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 996
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 997
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->sendAccessibilityEvent(I)V

    .line 998
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 999
    return-void
.end method

.method private deactivateTargets()V
    .registers 4

    .prologue
    .line 414
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 415
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_6

    .line 417
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_18
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 418
    return-void
.end method

.method private dispatchGrabbedEvent(I)V
    .registers 3
    .parameter "whichHandler"

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->vibrate()V

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_c

    .line 450
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    .line 452
    :cond_c
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .registers 3
    .parameter "whichHandle"

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->vibrate()V

    .line 442
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_c

    .line 443
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 445
    :cond_c
    return-void
.end method

.method private dist2(FF)F
    .registers 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 965
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/high16 v5, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 455
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 456
    .local v0, activeTarget:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9a

    move v1, v3

    .line 459
    .local v1, targetHit:Z
    :goto_c
    invoke-direct {p0, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 462
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_9d

    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 463
    if-eqz v1, :cond_a0

    .line 464
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 466
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideUnselected(I)V

    .line 470
    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mActiveTarget:I

    invoke-direct {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->dispatchTriggerEvent(I)V

    .line 471
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-wide/16 v6, 0x0

    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "ease"

    aput-object v9, v8, v4

    sget-object v9, Lcom/android/internal/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v9, v8, v3

    const-string v3, "delay"

    aput-object v3, v8, v10

    const/16 v3, 0x4b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v11

    const/4 v3, 0x4

    const-string v9, "alpha"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/4 v3, 0x6

    const-string/jumbo v5, "x"

    aput-object v5, v8, v3

    const/4 v3, 0x7

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/16 v3, 0x8

    const-string/jumbo v5, "y"

    aput-object v5, v8, v3

    const/16 v3, 0x9

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/16 v3, 0xa

    const-string/jumbo v5, "onUpdate"

    aput-object v5, v8, v3

    const/16 v3, 0xb

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v5, v8, v3

    const/16 v3, 0xc

    const-string/jumbo v5, "onComplete"

    aput-object v5, v8, v3

    const/16 v3, 0xd

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v5, v8, v3

    invoke-static {v2, v6, v7, v8}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 491
    :goto_96
    invoke-direct {p0, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 492
    return-void

    .end local v1           #targetHit:Z
    :cond_9a
    move v1, v4

    .line 456
    goto/16 :goto_c

    .restart local v1       #targetHit:Z
    :cond_9d
    move v2, v5

    .line 462
    goto/16 :goto_14

    .line 481
    :cond_a0
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-wide/16 v7, 0x12c

    const/16 v2, 0xe

    new-array v9, v2, [Ljava/lang/Object;

    const-string v2, "ease"

    aput-object v2, v9, v4

    sget-object v2, Lcom/android/internal/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v2, v9, v3

    const-string v2, "delay"

    aput-object v2, v9, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v11

    const/4 v2, 0x4

    const-string v3, "alpha"

    aput-object v3, v9, v2

    const/4 v2, 0x5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "x"

    aput-object v3, v9, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "y"

    aput-object v3, v9, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "onUpdate"

    aput-object v3, v9, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v3, v9, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "onComplete"

    aput-object v3, v9, v2

    const/16 v3, 0xd

    iget-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDragging:Z

    if-eqz v2, :cond_10b

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    :goto_102
    aput-object v2, v9, v3

    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    goto :goto_96

    :cond_10b
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    goto :goto_102
.end method

.method private dump()V
    .registers 4

    .prologue
    .line 274
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HitRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTapRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HorizontalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerticalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVerticalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_33

    .line 1015
    :cond_14
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1016
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_33

    .line 1017
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v0, 0x0

    .line 1022
    :goto_32
    return-object v0

    :cond_33
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_32
.end method

.method private getScaledTapRadiusSquared()F
    .registers 4

    .prologue
    .line 970
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 971
    const v1, 0x3fa66666

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTapRadius:F

    mul-float v0, v1, v2

    .line 975
    .local v0, scaledTapRadius:F
    :goto_13
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->square(F)F

    move-result v1

    return v1

    .line 973
    .end local v0           #scaledTapRadius:F
    :cond_18
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTapRadius:F

    .restart local v0       #scaledTapRadius:F
    goto :goto_13
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_33

    .line 1003
    :cond_14
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1004
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_33

    .line 1005
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v0, 0x0

    .line 1010
    :goto_32
    return-object v0

    :cond_33
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_32
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDragging:Z

    .line 744
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 745
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->ping()V

    .line 747
    :cond_f
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .registers 32
    .parameter "event"

    .prologue
    .line 755
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDragging:Z

    move/from16 v28, v0

    if-nez v28, :cond_c

    .line 756
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    .line 827
    :goto_b
    return-void

    .line 760
    :cond_c
    const/4 v4, -0x1

    .line 761
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 762
    .local v10, historySize:I
    const/4 v13, 0x0

    .local v13, k:I
    :goto_12
    add-int/lit8 v28, v10, 0x1

    move/from16 v0, v28

    if-ge v13, v0, :cond_1b5

    .line 763
    if-ge v13, v10, :cond_f9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v26

    .line 764
    .local v26, x:F
    :goto_20
    if-ge v13, v10, :cond_ff

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v27

    .line 765
    .local v27, y:F
    :goto_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v28, v0

    sub-float v24, v26, v28

    .line 766
    .local v24, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v28, v0

    sub-float v25, v27, v28

    .line 767
    .local v25, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v23, v0

    .line 768
    .local v23, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v28, v0

    cmpl-float v28, v23, v28

    if-lez v28, :cond_105

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v28, v0

    div-float v18, v28, v23

    .line 769
    .local v18, scale:F
    :goto_62
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v28, v0

    mul-float v29, v24, v18

    add-float v14, v28, v29

    .line 770
    .local v14, limitX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v28, v0

    mul-float v29, v25, v18

    add-float v15, v28, v29

    .line 772
    .local v15, limitY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_109

    const/16 v19, 0x1

    .line 773
    .local v19, singleTarget:Z
    :goto_8a
    if-eqz v19, :cond_10d

    .line 775
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    move/from16 v29, v0

    sub-float v20, v28, v29

    .line 776
    .local v20, snapRadius:F
    cmpl-float v28, v23, v20

    if-lez v28, :cond_a3

    .line 777
    const/4 v4, 0x0

    .line 778
    move/from16 v26, v14

    .line 779
    move/from16 v27, v15

    .line 799
    .end local v20           #snapRadius:F
    :cond_a3
    :goto_a3
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_18e

    .line 800
    const/16 v28, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 801
    if-eqz v19, :cond_166

    move/from16 v16, v14

    .line 802
    .local v16, newX:F
    :goto_ba
    if-eqz v19, :cond_17a

    move/from16 v17, v15

    .line 803
    .local v17, newY:F
    :goto_be
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 805
    .local v6, currentTarget:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v28, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v28

    if-eqz v28, :cond_f5

    .line 806
    sget-object v28, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 762
    .end local v6           #currentTarget:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v16           #newX:F
    .end local v17           #newY:F
    :cond_f5
    :goto_f5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_12

    .line 763
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v18           #scale:F
    .end local v19           #singleTarget:Z
    .end local v23           #touchRadius:F
    .end local v24           #tx:F
    .end local v25           #ty:F
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_f9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    goto/16 :goto_20

    .line 764
    .restart local v26       #x:F
    :cond_ff
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    goto/16 :goto_28

    .line 768
    .restart local v23       #touchRadius:F
    .restart local v24       #tx:F
    .restart local v25       #ty:F
    .restart local v27       #y:F
    :cond_105
    const/high16 v18, 0x3f80

    goto/16 :goto_62

    .line 772
    .restart local v14       #limitX:F
    .restart local v15       #limitY:F
    .restart local v18       #scale:F
    :cond_109
    const/16 v19, 0x0

    goto/16 :goto_8a

    .line 783
    .restart local v19       #singleTarget:Z
    :cond_10d
    const v5, 0x7f7fffff

    .line 784
    .local v5, best:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    move/from16 v29, v0

    mul-float v11, v28, v29

    .line 785
    .local v11, hitRadius2:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_160

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 788
    .local v21, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v28

    sub-float v8, v14, v28

    .line 789
    .local v8, dx:F
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v28

    sub-float v9, v15, v28

    .line 790
    .local v9, dy:F
    mul-float v28, v8, v8

    mul-float v29, v9, v9

    add-float v7, v28, v29

    .line 791
    .local v7, dist2:F
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->isValid()Z

    move-result v28

    if-eqz v28, :cond_15d

    cmpg-float v28, v7, v11

    if-gez v28, :cond_15d

    cmpg-float v28, v7, v5

    if-gez v28, :cond_15d

    .line 792
    move v4, v12

    .line 793
    move v5, v7

    .line 785
    :cond_15d
    add-int/lit8 v12, v12, 0x1

    goto :goto_11f

    .line 796
    .end local v7           #dist2:F
    .end local v8           #dx:F
    .end local v9           #dy:F
    .end local v21           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_160
    move/from16 v26, v14

    .line 797
    move/from16 v27, v15

    goto/16 :goto_a3

    .line 801
    .end local v5           #best:F
    .end local v11           #hitRadius2:F
    .end local v12           #i:I
    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v16

    goto/16 :goto_ba

    .line 802
    .restart local v16       #newX:F
    :cond_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v17

    goto/16 :goto_be

    .line 810
    .end local v16           #newX:F
    :cond_18e
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 811
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f80

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto/16 :goto_f5

    .line 817
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v18           #scale:F
    .end local v19           #singleTarget:Z
    .end local v23           #touchRadius:F
    .end local v24           #tx:F
    .end local v25           #ty:F
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->invalidateGlobalRegion(Lcom/android/internal/widget/multiwaveview/TargetDrawable;)V

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mActiveTarget:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v0, v4, :cond_1f4

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_1f4

    .line 820
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->dispatchGrabbedEvent(I)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v28

    if-eqz v28, :cond_1f4

    .line 822
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 823
    .local v22, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 826
    .end local v22           #targetContentDescription:Ljava/lang/String;
    :cond_1f4
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mActiveTarget:I

    goto/16 :goto_b
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 751
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 752
    return-void
.end method

.method private hideChevrons()V
    .registers 4

    .prologue
    .line 933
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 934
    .local v0, chevron:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v0, :cond_6

    .line 935
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_6

    .line 938
    .end local v0           #chevron:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_19
    return-void
.end method

.method private hideTargets(Z)V
    .registers 16
    .parameter "animate"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 504
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 505
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 509
    :cond_10
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 510
    if-eqz p1, :cond_9d

    .line 511
    if-eqz p1, :cond_5e

    const/16 v0, 0x4b0

    .line 512
    .local v0, duration:I
    :goto_18
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 513
    .local v2, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 514
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    int-to-long v5, v0

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "alpha"

    aput-object v8, v7, v3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "delay"

    aput-object v8, v7, v12

    const/16 v8, 0xc8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    const/4 v8, 0x4

    const-string/jumbo v9, "onUpdate"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v7, v8

    invoke-static {v2, v5, v6, v7}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .end local v0           #duration:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_5e
    move v0, v3

    .line 511
    goto :goto_18

    .line 519
    .restart local v0       #duration:I
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_60
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    int-to-long v6, v0

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "alpha"

    aput-object v9, v8, v3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v11

    const-string v3, "delay"

    aput-object v3, v8, v12

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v13

    const/4 v3, 0x4

    const-string/jumbo v9, "onUpdate"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v8, v3

    const/4 v3, 0x6

    const-string/jumbo v9, "onComplete"

    aput-object v9, v8, v3

    const/4 v3, 0x7

    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v9, v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    .end local v0           #duration:I
    :goto_9c
    return-void

    .line 525
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_9d
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_a3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 526
    .restart local v2       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 527
    invoke-virtual {v2, v10}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_a3

    .line 529
    .end local v2           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_b8
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3, v10}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_9c
.end method

.method private hideUnselected(I)V
    .registers 5
    .parameter "active"

    .prologue
    const/4 v2, 0x0

    .line 495
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 496
    if-eq v0, p1, :cond_17

    .line 497
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 495
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 500
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 501
    return-void
.end method

.method private internalSetTargetResources(I)V
    .registers 9
    .parameter "resourceId"

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 575
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 576
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 577
    .local v1, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 578
    .local v5, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v1, :cond_27

    .line 579
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 580
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v6, v4, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 582
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 583
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetResourceId:I

    .line 584
    iput-object v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 585
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 586
    return-void
.end method

.method private internalSetTargetResources(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 612
    .local p1, drawList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetResourceId:I

    .line 613
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 614
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 615
    return-void
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .registers 8
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1027
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1028
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1029
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v2, :cond_22

    .line 1030
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1033
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1034
    return-object v4
.end method

.method private moveHandleTo(FFZ)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 738
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 739
    return-void
.end method

.method private performInitialLayout(FF)V
    .registers 8
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 882
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_17

    .line 883
    const/high16 v0, 0x3f00

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 885
    :cond_17
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2f

    .line 887
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 889
    :cond_2f
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4a

    .line 890
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 893
    :cond_4a
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 894
    invoke-direct {p0, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 895
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 896
    return-void
.end method

.method private resolveMeasured(II)I
    .registers 6
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 304
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_16

    .line 313
    move v0, v1

    .line 315
    :goto_d
    return v0

    .line 306
    :sswitch_e
    move v0, p2

    .line 307
    goto :goto_d

    .line 309
    :sswitch_10
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 310
    goto :goto_d

    .line 304
    nop

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 855
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mGrabbedState:I

    if-eq p1, v0, :cond_16

    .line 856
    if-eqz p1, :cond_9

    .line 857
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->vibrate()V

    .line 859
    :cond_9
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mGrabbedState:I

    .line 860
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_16

    .line 861
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 864
    :cond_16
    return-void
.end method

.method private showTargets(Z)V
    .registers 15
    .parameter "animate"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    .line 534
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 535
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 537
    :cond_11
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 538
    if-eqz p1, :cond_96

    .line 539
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 540
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 541
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "alpha"

    aput-object v6, v5, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "delay"

    aput-object v6, v5, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string/jumbo v7, "onUpdate"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 546
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_5a
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "alpha"

    aput-object v7, v6, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    const-string v7, "delay"

    aput-object v7, v6, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    const/4 v7, 0x4

    const-string/jumbo v8, "onUpdate"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "onComplete"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    :goto_95
    return-void

    .line 552
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_96
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 553
    .restart local v1       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 554
    invoke-virtual {v1, v8}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_9c

    .line 556
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_b1
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v8}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_95
.end method

.method private square(F)F
    .registers 3
    .parameter "d"

    .prologue
    .line 961
    mul-float v0, p1, p1

    return v0
.end method

.method private startChevronAnimation()V
    .registers 21

    .prologue
    .line 363
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v11}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3ecccccd

    mul-float v8, v11, v12

    .line 364
    .local v8, r:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    const v12, 0x3f666666

    mul-float v1, v11, v12

    .line 365
    .local v1, chevronAnimationDistance:F
    const/4 v11, 0x4

    new-array v6, v11, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float/2addr v14, v8

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    add-float/2addr v14, v8

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float/2addr v14, v8

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    add-float/2addr v14, v8

    aput v14, v12, v13

    aput-object v12, v6, v11

    .line 370
    .local v6, from:[[F
    const/4 v11, 0x4

    new-array v10, v11, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float/2addr v14, v1

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    add-float/2addr v14, v1

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float/2addr v14, v1

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    add-float/2addr v14, v1

    aput v14, v12, v13

    aput-object v12, v10, v11

    .line 376
    .local v10, to:[[F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 377
    const/high16 v9, 0x3f00

    .line 378
    .local v9, startScale:F
    const/high16 v5, 0x4000

    .line 379
    .local v5, endScale:F
    const/4 v4, 0x0

    .local v4, direction:I
    :goto_d1
    const/4 v11, 0x4

    if-ge v4, v11, :cond_1bf

    .line 380
    const/4 v2, 0x0

    .local v2, count:I
    :goto_d5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    if-ge v2, v11, :cond_1bb

    .line 381
    mul-int/lit16 v3, v2, 0xa0

    .line 382
    .local v3, delay:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mFeedbackCount:I

    mul-int/2addr v12, v4

    add-int/2addr v12, v2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 383
    .local v7, icon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-nez v7, :cond_f2

    .line 380
    :goto_ef
    add-int/lit8 v2, v2, 0x1

    goto :goto_d5

    .line 386
    :cond_f2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    const-wide/16 v12, 0x352

    const/16 v14, 0x10

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "x"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v18, v6, v4

    const/16 v19, 0x0

    aget v18, v18, v19

    aput v18, v16, v17

    const/16 v17, 0x1

    aget-object v18, v10, v4

    const/16 v19, 0x0

    aget v18, v18, v19

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string/jumbo v16, "y"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v18, v6, v4

    const/16 v19, 0x1

    aget v18, v18, v19

    aput v18, v16, v17

    const/16 v17, 0x1

    aget-object v18, v10, v4

    const/16 v19, 0x1

    aget v18, v18, v19

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1c0

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string/jumbo v16, "scaleX"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1c8

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string/jumbo v16, "scaleY"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1d0

    aput-object v16, v14, v15

    const/16 v15, 0xe

    const-string/jumbo v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v7, v12, v13, v14}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ef

    .line 379
    .end local v3           #delay:I
    .end local v7           #icon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1bb
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d1

    .line 397
    .end local v2           #count:I
    :cond_1bf
    return-void

    .line 386
    :array_1c0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1c8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    :array_1d0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private stopChevronAnimation()V
    .registers 4

    .prologue
    .line 400
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 401
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_6

    .line 403
    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_18
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 404
    return-void
.end method

.method private stopHandleAnimation()V
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    if-eqz v0, :cond_e

    .line 408
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 411
    :cond_e
    return-void
.end method

.method private stopTargetAnimation()V
    .registers 4

    .prologue
    .line 561
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 562
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_6

    .line 564
    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_18
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 565
    return-void
.end method

.method private switchToState(IFF)V
    .registers 7
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 328
    packed-switch p1, :pswitch_data_38

    .line 355
    :cond_4
    :goto_4
    :pswitch_4
    return-void

    .line 330
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 331
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_4

    .line 335
    :pswitch_10
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopHandleAnimation()V

    .line 336
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 337
    invoke-direct {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->showTargets(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 339
    invoke-direct {p0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->announceTargets()V

    goto :goto_4

    .line 352
    :pswitch_33
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->doFinish()V

    goto :goto_4

    .line 328
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_4
        :pswitch_33
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 867
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 868
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 869
    .local v3, y:F
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float v0, v2, v6

    .line 870
    .local v0, dx:F
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float v1, v3, v6

    .line 871
    .local v1, dy:F
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v6

    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getScaledTapRadiusSquared()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_27

    .line 873
    invoke-direct {p0, v4, v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 874
    invoke-direct {p0, v2, v3, v5}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 875
    iput-boolean v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDragging:Z

    .line 878
    :goto_26
    return v4

    :cond_27
    move v4, v5

    goto :goto_26
.end method

.method private updateTargetPositions()V
    .registers 11

    .prologue
    .line 922
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_42

    .line 923
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 924
    .local v3, targetIcon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-double v8, v8

    div-double v0, v6, v8

    .line 925
    .local v0, angle:D
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 926
    .local v4, xPosition:F
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v5, v6, v7

    .line 927
    .local v5, yPosition:F
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 928
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 922
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 930
    .end local v0           #angle:D
    .end local v3           #targetIcon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v4           #xPosition:F
    .end local v5           #yPosition:F
    :cond_42
    return-void
.end method

.method private vibrate()V
    .registers 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_c

    .line 569
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 571
    :cond_c
    return-void
.end method


# virtual methods
.method public getDirectionDescriptionsResourceId()I
    .registers 2

    .prologue
    .line 660
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_1d
    add-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 289
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_1d
    add-int/2addr v0, v1

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .registers 2

    .prologue
    .line 639
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetResourceId()I
    .registers 2

    .prologue
    .line 618
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetResourceId:I

    return v0
.end method

.method invalidateGlobalRegion(Lcom/android/internal/widget/multiwaveview/TargetDrawable;)V
    .registers 11
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 421
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 422
    .local v3, width:I
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    .line 423
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 424
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 425
    move-object v2, p0

    .line 426
    .local v2, view:Landroid/view/View;
    :goto_24
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_63

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_63

    .line 427
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 428
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 429
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_24

    .line 434
    :cond_63
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 942
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 943
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 944
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_b

    .line 945
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 948
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1d
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 949
    .restart local v1       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_23

    .line 950
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_23

    .line 953
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_35
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 954
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 831
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 833
    .local v0, action:I
    packed-switch v0, :pswitch_data_2e

    .line 844
    :goto_13
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 845
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 847
    .end local v0           #action:I
    :cond_19
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 835
    .restart local v0       #action:I
    :pswitch_1e
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 838
    :pswitch_23
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 841
    :pswitch_28
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 833
    nop

    :pswitch_data_2e
    .packed-switch 0x7
        :pswitch_23
        :pswitch_13
        :pswitch_1e
        :pswitch_28
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    .line 900
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 901
    sub-int v3, p4, p2

    .line 902
    .local v3, width:I
    sub-int v0, p5, p3

    .line 903
    .local v0, height:I
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v1, v4, v5

    .line 904
    .local v1, newWaveCenterX:F
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVerticalOffset:F

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 905
    .local v2, newWaveCenterY:F
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_36

    iget v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_60

    .line 906
    :cond_36
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_45

    iget v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_45

    .line 907
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->performInitialLayout(FF)V

    .line 909
    :cond_45
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    .line 910
    iput v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    .line 912
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 913
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 915
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 918
    :cond_60
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 321
    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 322
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->resolveMeasured(II)I

    move-result v3

    .line 323
    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->resolveMeasured(II)I

    move-result v2

    .line 324
    .local v2, viewHeight:I
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setMeasuredDimension(II)V

    .line 325
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 706
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 708
    .local v0, action:I
    const/4 v1, 0x0

    .line 709
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_2c

    .line 731
    :goto_8
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->invalidate()V

    .line 732
    if-eqz v1, :cond_26

    const/4 v2, 0x1

    :goto_e
    return v2

    .line 711
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->handleDown(Landroid/view/MotionEvent;)V

    .line 712
    const/4 v1, 0x1

    .line 713
    goto :goto_8

    .line 716
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 717
    const/4 v1, 0x1

    .line 718
    goto :goto_8

    .line 721
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 722
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->handleUp(Landroid/view/MotionEvent;)V

    .line 723
    const/4 v1, 0x1

    .line 724
    goto :goto_8

    .line 727
    :pswitch_21
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 728
    const/4 v1, 0x1

    goto :goto_8

    .line 732
    :cond_26
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_e

    .line 709
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_19
        :pswitch_14
        :pswitch_21
    .end packed-switch
.end method

.method public ping()V
    .registers 1

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopChevronAnimation()V

    .line 683
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->startChevronAnimation()V

    .line 684
    return-void
.end method

.method public reset(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopChevronAnimation()V

    .line 694
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopHandleAnimation()V

    .line 695
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 696
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 697
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 698
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 699
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 700
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 701
    invoke-static {}, Lcom/android/internal/widget/multiwaveview/Tweener;->reset()V

    .line 702
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 648
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    .line 649
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 650
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 652
    :cond_b
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 957
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    .line 958
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 627
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    .line 628
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 629
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 631
    :cond_b
    return-void
.end method

.method public setTargetResources(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    if-eqz v0, :cond_7

    .line 596
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I

    .line 600
    :goto_6
    return-void

    .line 598
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    goto :goto_6
.end method

.method public setTargetResources(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, drawList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    if-eqz v0, :cond_7

    .line 605
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetDrawables:Ljava/util/ArrayList;

    .line 609
    :goto_6
    return-void

    .line 607
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->internalSetTargetResources(Ljava/util/ArrayList;)V

    goto :goto_6
.end method

.method public setVibrateEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 669
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_16

    .line 670
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    .line 674
    :goto_15
    return-void

    .line 672
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_15
.end method
