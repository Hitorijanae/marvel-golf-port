.class public Landroid/view/PenDelegate;
.super Ljava/lang/Object;
.source "PenDelegate.java"


# static fields
.field public static final ABOVE:I = 0x1

.field public static final BELOW:I = 0x2

.field public static final TO_LEFT:I = 0x4

.field public static final TO_RIGHT:I = 0x8


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private mDelegateView:Landroid/view/View;

.field private mSlop:I

.field private mSlopBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 6
    .parameter "bounds"
    .parameter "delegateView"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Landroid/view/PenDelegate;->mBounds:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/PenDelegate;->mSlop:I

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/PenDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 99
    iget-object v0, p0, Landroid/view/PenDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/PenDelegate;->mSlop:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/PenDelegate;->mSlop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 100
    iput-object p2, p0, Landroid/view/PenDelegate;->mDelegateView:Landroid/view/View;

    .line 101
    return-void
.end method


# virtual methods
.method public onPenEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 113
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 114
    .local v8, y:I
    const/4 v4, 0x0

    .line 115
    .local v4, sendToDelegate:Z
    const/4 v3, 0x1

    .line 116
    .local v3, hit:Z
    const/4 v2, 0x0

    .line 118
    .local v2, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_5c

    .line 142
    :cond_14
    :goto_14
    if-eqz v4, :cond_2b

    .line 143
    iget-object v1, p0, Landroid/view/PenDelegate;->mDelegateView:Landroid/view/View;

    .line 145
    .local v1, delegateView:Landroid/view/View;
    if-eqz v3, :cond_4d

    .line 147
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 158
    .end local v1           #delegateView:Landroid/view/View;
    :cond_2b
    :goto_2b
    return v2

    .line 120
    :pswitch_2c
    iget-object v0, p0, Landroid/view/PenDelegate;->mBounds:Landroid/graphics/Rect;

    .line 122
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 123
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/PenDelegate;->mDelegateTargeted:Z

    .line 124
    const/4 v4, 0x1

    goto :goto_14

    .line 129
    .end local v0           #bounds:Landroid/graphics/Rect;
    :pswitch_39
    iget-boolean v4, p0, Landroid/view/PenDelegate;->mDelegateTargeted:Z

    .line 130
    if-eqz v4, :cond_14

    .line 131
    iget-object v6, p0, Landroid/view/PenDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 132
    .local v6, slopBounds:Landroid/graphics/Rect;
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_14

    .line 133
    const/4 v3, 0x0

    goto :goto_14

    .line 138
    .end local v6           #slopBounds:Landroid/graphics/Rect;
    :pswitch_47
    iget-boolean v4, p0, Landroid/view/PenDelegate;->mDelegateTargeted:Z

    .line 139
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/view/PenDelegate;->mDelegateTargeted:Z

    goto :goto_14

    .line 151
    .restart local v1       #delegateView:Landroid/view/View;
    :cond_4d
    iget v5, p0, Landroid/view/PenDelegate;->mSlop:I

    .line 152
    .local v5, slop:I
    mul-int/lit8 v9, v5, 0x2

    neg-int v9, v9

    int-to-float v9, v9

    mul-int/lit8 v10, v5, 0x2

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_2b

    .line 118
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_39
        :pswitch_39
        :pswitch_47
    .end packed-switch
.end method
