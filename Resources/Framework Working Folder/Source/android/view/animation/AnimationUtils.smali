.class public Landroid/view/animation/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TOGETHER:I

.field static final USE_HTC_TRANSITION_ANIM:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/htc/view/animation/HtcGlTransAnimFactory;->USE_HTC_TRANSITION_ANIM:Z

    sput-boolean v0, Landroid/view/animation/AnimationUtils;->USE_HTC_TRANSITION_ANIM:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    .registers 4
    .parameter "c"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .registers 11
    .parameter "c"
    .parameter "parser"
    .parameter "parent"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 109
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 112
    .local v1, depth:I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_a0

    :cond_12
    const/4 v4, 0x1

    if-eq v3, v4, :cond_a0

    .line 114
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 118
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v4, "set"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 121
    new-instance v0, Landroid/view/animation/AnimationSet;

    .end local v0           #anim:Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    move-object v4, v0

    .line 122
    check-cast v4, Landroid/view/animation/AnimationSet;

    invoke-static {p0, p1, v4, p3}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    .line 145
    :goto_30
    if-eqz p2, :cond_5

    .line 146
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 123
    :cond_36
    const-string v4, "alpha"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 124
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/AlphaAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_30

    .line 125
    :cond_44
    const-string/jumbo v4, "scale"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 126
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/ScaleAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_30

    .line 127
    :cond_53
    const-string/jumbo v4, "rotate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 128
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/RotateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_30

    .line 129
    :cond_62
    const-string/jumbo v4, "translate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 130
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/TranslateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_30

    .line 132
    :cond_71
    const-string/jumbo v4, "htcgl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 133
    sget-boolean v4, Landroid/view/animation/AnimationUtils;->USE_HTC_TRANSITION_ANIM:Z

    if-eqz v4, :cond_5

    .line 134
    invoke-static {p0, p3}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    goto :goto_30

    .line 142
    :cond_83
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animation name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    .end local v2           #name:Ljava/lang/String;
    :cond_a0
    return-object v0
.end method

.method private static createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .registers 10
    .parameter "c"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v2, 0x0

    .line 305
    .local v2, interpolator:Landroid/view/animation/Interpolator;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 308
    .local v1, depth:I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, type:I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_bf

    :cond_12
    const/4 v5, 0x1

    if-eq v4, v5, :cond_bf

    .line 310
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 314
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 316
    .local v0, attrs:Landroid/util/AttributeSet;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, name:Ljava/lang/String;
    const-string/jumbo v5, "linearInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 320
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/LinearInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_5

    .line 321
    :cond_2f
    const-string v5, "accelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 322
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_5

    .line 323
    :cond_3d
    const-string v5, "decelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 324
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_5

    .line 325
    :cond_4b
    const-string v5, "accelerateDecelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 326
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_5

    .line 327
    :cond_59
    const-string v5, "cycleInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 328
    new-instance v2, Landroid/view/animation/CycleInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_5

    .line 329
    :cond_67
    const-string v5, "anticipateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 330
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_5

    .line 331
    :cond_75
    const-string/jumbo v5, "overshootInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 332
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_5

    .line 333
    :cond_84
    const-string v5, "anticipateOvershootInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 334
    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto/16 :goto_5

    .line 335
    :cond_93
    const-string v5, "bounceInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 336
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/BounceInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto/16 :goto_5

    .line 338
    :cond_a2
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown interpolator name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 343
    .end local v0           #attrs:Landroid/util/AttributeSet;
    .end local v3           #name:Ljava/lang/String;
    :cond_bf
    return-object v2
.end method

.method private static createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    .registers 3
    .parameter "c"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method private static createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;
    .registers 10
    .parameter "c"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 188
    .local v0, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 191
    .local v1, depth:I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_52

    :cond_12
    const/4 v4, 0x1

    if-eq v3, v4, :cond_52

    .line 193
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 197
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v4, "layoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 200
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    .end local v0           #controller:Landroid/view/animation/LayoutAnimationController;
    invoke-direct {v0, p0, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #controller:Landroid/view/animation/LayoutAnimationController;
    goto :goto_5

    .line 201
    :cond_2b
    const-string v4, "gridLayoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 202
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController;

    .end local v0           #controller:Landroid/view/animation/LayoutAnimationController;
    invoke-direct {v0, p0, p2}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #controller:Landroid/view/animation/LayoutAnimationController;
    goto :goto_5

    .line 204
    :cond_39
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown layout animation name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    .end local v2           #name:Ljava/lang/String;
    :cond_52
    return-object v0
.end method

.method public static currentAnimationTimeMillis()J
    .registers 2

    .prologue
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .registers 7
    .parameter "context"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 80
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_c} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_3b

    move-result-object v3

    .line 92
    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 80
    :cond_12
    return-object v3

    .line 81
    :catch_13
    move-exception v0

    .line 82
    .local v0, ex:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_14
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 84
    .local v2, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 85
    throw v2
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_34

    .line 92
    .end local v0           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #rnf:Landroid/content/res/Resources$NotFoundException;
    :catchall_34
    move-exception v3

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3a
    throw v3

    .line 86
    :catch_3b
    move-exception v0

    .line 87
    .local v0, ex:Ljava/io/IOException;
    :try_start_3c
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v2       #rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 90
    throw v2
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_34
.end method

.method public static loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .registers 7
    .parameter "context"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 280
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 281
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_c} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_3b

    move-result-object v3

    .line 293
    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 281
    :cond_12
    return-object v3

    .line 282
    :catch_13
    move-exception v0

    .line 283
    .local v0, ex:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_14
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 285
    .local v2, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 286
    throw v2
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_34

    .line 293
    .end local v0           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #rnf:Landroid/content/res/Resources$NotFoundException;
    :catchall_34
    move-exception v3

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3a
    throw v3

    .line 287
    :catch_3b
    move-exception v0

    .line 288
    .local v0, ex:Ljava/io/IOException;
    :try_start_3c
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 290
    .restart local v2       #rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 291
    throw v2
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_34
.end method

.method public static loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;
    .registers 7
    .parameter "context"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 160
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_c} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_3b

    move-result-object v3

    .line 172
    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 160
    :cond_12
    return-object v3

    .line 161
    :catch_13
    move-exception v0

    .line 162
    .local v0, ex:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_14
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 165
    throw v2
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_34

    .line 172
    .end local v0           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #rnf:Landroid/content/res/Resources$NotFoundException;
    :catchall_34
    move-exception v3

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3a
    throw v3

    .line 166
    :catch_3b
    move-exception v0

    .line 167
    .local v0, ex:Ljava/io/IOException;
    :try_start_3c
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v2       #rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 170
    throw v2
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_34
.end method

.method public static makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .registers 5
    .parameter "c"
    .parameter "fromLeft"

    .prologue
    .line 221
    if-eqz p1, :cond_19

    .line 222
    const v1, 0x10a0002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 227
    .local v0, a:Landroid/view/animation/Animation;
    :goto_9
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 228
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 229
    return-object v0

    .line 224
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_19
    const v1, 0x10a003a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    goto :goto_9
.end method

.method public static makeInChildBottomAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;
    .registers 4
    .parameter "c"

    .prologue
    .line 263
    const v1, 0x10a0039

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 264
    .local v0, a:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 265
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 266
    return-object v0
.end method

.method public static makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .registers 5
    .parameter "c"
    .parameter "toRight"

    .prologue
    .line 242
    if-eqz p1, :cond_19

    .line 243
    const v1, 0x10a0003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 248
    .local v0, a:Landroid/view/animation/Animation;
    :goto_9
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 249
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 250
    return-object v0

    .line 245
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_19
    const v1, 0x10a003d

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    goto :goto_9
.end method
