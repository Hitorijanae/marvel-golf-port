.class public Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;
.implements Landroid/view/HtcIfWindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerImpl$CompatModeWrapper;
    }
.end annotation


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_DEFER_SURFACE_DESTROY:I = 0x2

.field public static final RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final RELAYOUT_RES_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_RES_IN_TOUCH_MODE:I = 0x1

.field public static final RELAYOUT_RES_SURFACE_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sCompatWindowManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static final sWindowManager:Landroid/view/WindowManagerImpl;


# instance fields
.field private mParams:[Landroid/view/WindowManager$LayoutParams;

.field private mRoots:[Landroid/view/ViewRootImpl;

.field private mViews:[Landroid/view/View;

.field private mWindowService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->sLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Landroid/view/WindowManagerImpl;

    invoke-direct {v0}, Landroid/view/WindowManagerImpl;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->sCompatWindowManagers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 125
    return-void
.end method

.method private addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V
    .registers 16
    .parameter "view"
    .parameter "params"
    .parameter "cih"
    .parameter "nest"

    .prologue
    const/4 v0, 0x0

    .line 327
    instance-of v7, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v7, :cond_d

    .line 328
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Params must be WindowManager.LayoutParams"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_d
    move-object v6, p2

    .line 332
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 336
    .local v6, wparams:Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    .line 338
    .local v4, panelParentView:Landroid/view/View;
    monitor-enter p0

    .line 346
    const/4 v7, 0x0

    :try_start_13
    invoke-direct {p0, p1, v7}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v2

    .line 347
    .local v2, index:I
    if-ltz v2, :cond_50

    .line 348
    if-nez p4, :cond_3d

    .line 349
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "View "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has already been added to the window manager."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 404
    .end local v2           #index:I
    :catchall_3a
    move-exception v7

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3a

    throw v7

    .line 352
    .restart local v2       #index:I
    :cond_3d
    :try_start_3d
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v5, v7, v2

    .line 353
    .local v5, root:Landroid/view/ViewRootImpl;
    iget v7, v5, Landroid/view/ViewRootImpl;->mAddNesting:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 355
    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 357
    monitor-exit p0

    .line 417
    :goto_4f
    return-void

    .line 362
    .end local v5           #root:Landroid/view/ViewRootImpl;
    :cond_50
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x3e8

    if-lt v7, v8, :cond_7b

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7cf

    if-gt v7, v8, :cond_7b

    .line 364
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v7, :cond_63

    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v7

    .line 365
    .local v0, count:I
    :cond_63
    const/4 v1, 0x0

    .local v1, i:I
    :goto_64
    if-ge v1, v0, :cond_7b

    .line 366
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v7, v7, v1

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v7}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v7, v8, :cond_78

    .line 367
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v4, v7, v1

    .line 365
    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 372
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_7b
    new-instance v5, Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;)V

    .line 373
    .restart local v5       #root:Landroid/view/ViewRootImpl;
    const/4 v7, 0x1

    iput v7, v5, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 374
    if-nez p3, :cond_ba

    .line 375
    new-instance v7, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v7}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    iput-object v7, v5, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 380
    :goto_90
    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v7, :cond_bd

    .line 383
    const/4 v2, 0x1

    .line 384
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/View;

    iput-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 385
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/ViewRootImpl;

    iput-object v7, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    .line 386
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/WindowManager$LayoutParams;

    iput-object v7, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 399
    :goto_a7
    add-int/lit8 v2, v2, -0x1

    .line 401
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aput-object p1, v7, v2

    .line 402
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aput-object v5, v7, v2

    .line 403
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v6, v7, v2

    .line 404
    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_3d .. :try_end_b6} :catchall_3a

    .line 406
    invoke-virtual {v5, p1, v6, v4}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    goto :goto_4f

    .line 377
    :cond_ba
    :try_start_ba
    iput-object p3, v5, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    goto :goto_90

    .line 388
    :cond_bd
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v7, v7

    add-int/lit8 v2, v7, 0x1

    .line 389
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 390
    .local v3, old:[Ljava/lang/Object;
    new-array v7, v2, [Landroid/view/View;

    iput-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 391
    const/4 v7, 0x0

    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    const/4 v9, 0x0

    add-int/lit8 v10, v2, -0x1

    invoke-static {v3, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    .line 393
    new-array v7, v2, [Landroid/view/ViewRootImpl;

    iput-object v7, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    .line 394
    const/4 v7, 0x0

    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    const/4 v9, 0x0

    add-int/lit8 v10, v2, -0x1

    invoke-static {v3, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 396
    new-array v7, v2, [Landroid/view/WindowManager$LayoutParams;

    iput-object v7, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 397
    const/4 v7, 0x0

    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    const/4 v9, 0x0

    add-int/lit8 v10, v2, -0x1

    invoke-static {v3, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_ef
    .catchall {:try_start_ba .. :try_end_ef} :catchall_3a

    goto :goto_a7
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .registers 7
    .parameter "view"
    .parameter "required"

    .prologue
    .line 741
    monitor-enter p0

    .line 742
    :try_start_1
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 743
    .local v0, count:I
    :goto_8
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_18

    .line 744
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_15

    .line 745
    monitor-exit p0

    .line 752
    .end local v1           #i:I
    :goto_12
    return v1

    .line 742
    .end local v0           #count:I
    :cond_13
    const/4 v0, 0x0

    goto :goto_8

    .line 743
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 748
    :cond_18
    if-eqz p2, :cond_25

    .line 749
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "View not attached to window manager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 753
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_22
    move-exception v2

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v2

    .line 752
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_25
    const/4 v1, -0x1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_22

    goto :goto_12
.end method

.method public static getDefault(Landroid/content/res/CompatibilityInfo;)Landroid/view/WindowManager;
    .registers 5
    .parameter "compatInfo"

    .prologue
    .line 281
    new-instance v0, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v0}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    .line 282
    .local v0, cih:Landroid/view/CompatibilityInfoHolder;
    invoke-virtual {v0, p0}, Landroid/view/CompatibilityInfoHolder;->set(Landroid/content/res/CompatibilityInfo;)V

    .line 283
    invoke-virtual {v0}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    if-nez v2, :cond_11

    .line 284
    sget-object v1, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    .line 298
    :goto_10
    return-object v1

    .line 287
    :cond_11
    sget-object v3, Landroid/view/WindowManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 293
    :try_start_14
    sget-object v2, Landroid/view/WindowManagerImpl;->sCompatWindowManagers:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 294
    .local v1, wm:Landroid/view/WindowManager;
    if-nez v1, :cond_2a

    .line 295
    new-instance v1, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    .end local v1           #wm:Landroid/view/WindowManager;
    sget-object v2, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    invoke-direct {v1, v2, v0}, Landroid/view/WindowManagerImpl$CompatModeWrapper;-><init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V

    .line 296
    .restart local v1       #wm:Landroid/view/WindowManager;
    sget-object v2, Landroid/view/WindowManagerImpl;->sCompatWindowManagers:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_2a
    monitor-exit v3

    goto :goto_10

    .line 299
    .end local v1           #wm:Landroid/view/WindowManager;
    :catchall_2c
    move-exception v2

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public static getDefault(Landroid/view/CompatibilityInfoHolder;)Landroid/view/WindowManager;
    .registers 3
    .parameter "compatInfo"

    .prologue
    .line 303
    new-instance v0, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    sget-object v1, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    invoke-direct {v0, v1, p0}, Landroid/view/WindowManagerImpl$CompatModeWrapper;-><init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V

    return-object v0
.end method

.method public static getDefault()Landroid/view/WindowManagerImpl;
    .registers 1

    .prologue
    .line 277
    sget-object v0, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    return-object v0
.end method

.method private getIWM()Landroid/view/IWindowManager;
    .registers 2

    .prologue
    .line 758
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method private static removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 5
    .parameter "dst"
    .parameter "src"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 730
    array-length v0, p0

    if-lez v0, :cond_15

    .line 731
    if-lez p2, :cond_9

    .line 732
    invoke-static {p1, v1, p0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 734
    :cond_9
    array-length v0, p0

    if-ge p2, v0, :cond_15

    .line 735
    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 738
    :cond_15
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 311
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "view"
    .parameter "params"

    .prologue
    .line 316
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V

    .line 317
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;)V
    .registers 5
    .parameter "view"
    .parameter "params"
    .parameter "cih"

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V

    .line 321
    return-void
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .registers 7
    .parameter "token"
    .parameter "type"

    .prologue
    .line 762
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_a

    .line 763
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 766
    :cond_a
    :try_start_a
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWindowToken, token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_31} :catch_32

    .line 771
    :goto_31
    return-void

    .line 768
    :catch_32
    move-exception v0

    .line 769
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "addWindowToken [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public closeAll()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 722
    invoke-virtual {p0, v0, v0, v0}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "token"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 547
    monitor-enter p0

    .line 548
    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v4, :cond_7

    .line 549
    monitor-exit p0

    .line 575
    :goto_6
    return-void

    .line 551
    :cond_7
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 553
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_6e

    .line 556
    if-eqz p1, :cond_17

    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_6b

    .line 557
    :cond_17
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v3, v4, v1

    .line 558
    .local v3, root:Landroid/view/ViewRootImpl;
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 561
    if-eqz p2, :cond_64

    .line 562
    new-instance v2, Landroid/view/WindowLeaked;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has leaked window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that was originally added here"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 565
    .local v2, leak:Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 566
    const-string v4, "WindowManager"

    invoke-virtual {v2}, Landroid/view/WindowLeaked;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    .end local v2           #leak:Landroid/view/WindowLeaked;
    :cond_64
    invoke-virtual {p0, v1}, Landroid/view/WindowManagerImpl;->removeViewLocked(I)Landroid/view/View;

    .line 570
    add-int/lit8 v1, v1, -0x1

    .line 571
    add-int/lit8 v0, v0, -0x1

    .line 553
    .end local v3           #root:Landroid/view/ViewRootImpl;
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 574
    :cond_6e
    monitor-exit p0

    goto :goto_6

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_70
    move-exception v4

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_70

    throw v4
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;)V
    .registers 16
    .parameter "fd"

    .prologue
    const/high16 v13, 0x4480

    .line 626
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 627
    .local v2, fout:Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 629
    .local v6, pw:Ljava/io/PrintWriter;
    :try_start_c
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b2

    .line 630
    :try_start_d
    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v9, :cond_aa

    .line 631
    const-string v9, "View hierarchy:"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v9

    .line 635
    .local v0, count:I
    const/4 v8, 0x0

    .line 636
    .local v8, viewsCount:I
    const/4 v1, 0x0

    .line 637
    .local v1, displayListsSize:I
    const/4 v9, 0x2

    new-array v4, v9, [I

    .line 639
    .local v4, info:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1f
    if-ge v3, v0, :cond_7b

    .line 640
    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v7, v9, v3

    .line 641
    .local v7, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v7, v6, v4}, Landroid/view/ViewRootImpl;->dumpGfxInfo(Ljava/io/PrintWriter;[I)V

    .line 643
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 645
    .local v5, name:Ljava/lang/String;
    const-string v9, "  %s: %d views, %.2f kB (display lists)\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    aget v12, v4, v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 648
    const/4 v9, 0x0

    aget v9, v4, v9

    add-int/2addr v8, v9

    .line 649
    const/4 v9, 0x1

    aget v9, v4, v9

    add-int/2addr v1, v9

    .line 639
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 652
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #root:Landroid/view/ViewRootImpl;
    :cond_7b
    const-string v9, "\nTotal ViewRootImpl: %d\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 653
    const-string v9, "Total Views:        %d\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 654
    const-string v9, "Total DisplayList:  %.2f kB\n\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    int-to-float v12, v1

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 656
    .end local v0           #count:I
    .end local v1           #displayListsSize:I
    .end local v3           #i:I
    .end local v4           #info:[I
    .end local v8           #viewsCount:I
    :cond_aa
    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_d .. :try_end_ab} :catchall_af

    .line 658
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 660
    return-void

    .line 656
    :catchall_af
    move-exception v9

    :try_start_b0
    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v9
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    .line 658
    :catchall_b2
    move-exception v9

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    throw v9
.end method

.method finishRemoveViewLocked(Landroid/view/View;I)V
    .registers 8
    .parameter "view"
    .parameter "index"

    .prologue
    .line 523
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 526
    .local v0, count:I
    add-int/lit8 v4, v0, -0x1

    new-array v3, v4, [Landroid/view/View;

    .line 527
    .local v3, tmpViews:[Landroid/view/View;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    invoke-static {v3, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 528
    iput-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 530
    add-int/lit8 v4, v0, -0x1

    new-array v2, v4, [Landroid/view/ViewRootImpl;

    .line 531
    .local v2, tmpRoots:[Landroid/view/ViewRootImpl;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    invoke-static {v2, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 532
    iput-object v2, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    .line 534
    add-int/lit8 v4, v0, -0x1

    new-array v1, v4, [Landroid/view/WindowManager$LayoutParams;

    .line 536
    .local v1, tmpParams:[Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 537
    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 539
    if-eqz p1, :cond_2a

    .line 540
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 544
    :cond_2a
    return-void
.end method

.method public getAnimationScales()[F
    .registers 4

    .prologue
    .line 774
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_a

    .line 775
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 778
    :cond_a
    :try_start_a
    const-string v1, "WindowManager"

    const-string v2, "getAnimationScales"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getAnimationScales()[F
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_18

    move-result-object v1

    .line 784
    :goto_17
    return-object v1

    .line 780
    :catch_18
    move-exception v0

    .line 781
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "getAnimationScales [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .registers 4

    .prologue
    .line 726
    new-instance v0, Landroid/view/Display;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/Display;-><init>(ILandroid/view/CompatibilityInfoHolder;)V

    return-object v0
.end method

.method public getRootViewLayoutParameter(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;
    .registers 8
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 703
    .local v2, vp:Landroid/view/ViewParent;
    :goto_5
    if-eqz v2, :cond_10

    instance-of v5, v2, Landroid/view/ViewRootImpl;

    if-nez v5, :cond_10

    .line 704
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_5

    .line 707
    :cond_10
    if-nez v2, :cond_13

    .line 718
    :cond_12
    :goto_12
    return-object v4

    :cond_13
    move-object v3, v2

    .line 709
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 711
    .local v3, vr:Landroid/view/ViewRootImpl;
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    array-length v0, v5

    .line 712
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    if-ge v1, v0, :cond_12

    .line 713
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v5, v5, v1

    if-ne v5, v3, :cond_27

    .line 714
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v4, v4, v1

    goto :goto_12

    .line 712
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public getRotation()I
    .registers 4

    .prologue
    .line 851
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_a

    .line 852
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 855
    :cond_a
    :try_start_a
    const-string v1, "WindowManager"

    const-string v2, "getRotation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getRotation()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_18

    move-result v1

    .line 861
    :goto_17
    return v1

    .line 857
    :catch_18
    move-exception v0

    .line 858
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "getRotation [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public getSwitchState(I)I
    .registers 6
    .parameter "sw"

    .prologue
    .line 865
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_a

    .line 866
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 869
    :cond_a
    :try_start_a
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSwitchState, sw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getSwitchState(I)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_29

    move-result v1

    .line 875
    :goto_28
    return v1

    .line 871
    :catch_29
    move-exception v0

    .line 872
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "getSwitchState [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 7
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 879
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_a

    .line 880
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 883
    :cond_a
    :try_start_a
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "injectKeyEvent, ev: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_34

    move-result v1

    .line 889
    :goto_33
    return v1

    .line 885
    :catch_34
    move-exception v0

    .line 886
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "injectKeyEvent [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v1, 0x0

    goto :goto_33
.end method

.method public isHardwareAccelerated()Z
    .registers 2

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public keyguardIsShowing()Z
    .registers 4

    .prologue
    .line 893
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_a

    .line 894
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 897
    :cond_a
    :try_start_a
    const-string v1, "WindowManager"

    const-string/jumbo v2, "keyguardIsShowing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->keyguardIsShowing()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_19

    move-result v1

    .line 903
    :goto_18
    return v1

    .line 899
    :catch_19
    move-exception v0

    .line 900
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "keyguardIsShowing [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public removeView(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 471
    monitor-enter p0

    .line 472
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 473
    .local v1, index:I
    invoke-virtual {p0, v1}, Landroid/view/WindowManagerImpl;->removeViewLocked(I)Landroid/view/View;

    move-result-object v0

    .line 474
    .local v0, curView:Landroid/view/View;
    if-ne v0, p1, :cond_e

    .line 475
    monitor-exit p0

    return-void

    .line 478
    :cond_e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling with view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but the ViewAncestor is attached to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 480
    .end local v0           #curView:Landroid/view/View;
    .end local v1           #index:I
    :catchall_31
    move-exception v2

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 484
    monitor-enter p0

    .line 485
    const/4 v3, 0x1

    :try_start_2
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 486
    .local v1, index:I
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v3, v1

    .line 487
    .local v2, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 489
    .local v0, curView:Landroid/view/View;
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 490
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->die(Z)V

    .line 491
    invoke-virtual {p0, v0, v1}, Landroid/view/WindowManagerImpl;->finishRemoveViewLocked(Landroid/view/View;I)V

    .line 492
    if-ne v0, p1, :cond_1c

    .line 493
    monitor-exit p0

    return-void

    .line 496
    :cond_1c
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewAncestor is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 498
    .end local v0           #curView:Landroid/view/View;
    .end local v1           #index:I
    .end local v2           #root:Landroid/view/ViewRootImpl;
    :catchall_3f
    move-exception v3

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_3f

    throw v3
.end method

.method removeViewLocked(I)Landroid/view/View;
    .registers 6
    .parameter "index"

    .prologue
    .line 502
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v1, v3, p1

    .line 503
    .local v1, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 506
    .local v2, view:Landroid/view/View;
    iget v3, v1, Landroid/view/ViewRootImpl;->mAddNesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 507
    iget v3, v1, Landroid/view/ViewRootImpl;->mAddNesting:I

    if-lez v3, :cond_13

    .line 519
    :goto_12
    return-object v2

    .line 511
    :cond_13
    if-eqz v2, :cond_2a

    .line 512
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 513
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2a

    .line 514
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 517
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2a
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->die(Z)V

    .line 518
    invoke-virtual {p0, v2, p1}, Landroid/view/WindowManagerImpl;->finishRemoveViewLocked(Landroid/view/View;I)V

    goto :goto_12
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .registers 6
    .parameter "token"

    .prologue
    .line 788
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_a

    .line 789
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 792
    :cond_a
    :try_start_a
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeWindowToken, token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_29

    .line 797
    :goto_28
    return-void

    .line 794
    :catch_29
    move-exception v0

    .line 795
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "removeWindowToken [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public reportNewConfiguration(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "config"

    .prologue
    .line 691
    monitor-enter p0

    .line 692
    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v1, v4

    .line 693
    .local v1, count:I
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_18

    .line 694
    .end local p1
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v1, :cond_16

    .line 695
    :try_start_c
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v3, v4, v2

    .line 696
    .local v3, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V

    .line 694
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 698
    .end local v3           #root:Landroid/view/ViewRootImpl;
    :cond_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1b

    .line 699
    return-void

    .line 698
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #count:I
    .end local v2           #i:I
    .restart local p1
    :catchall_18
    move-exception v4

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v4

    .end local p1
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #count:I
    .restart local v2       #i:I
    :catchall_1b
    move-exception v4

    move-object p1, v0

    .end local v0           #config:Landroid/content/res/Configuration;
    .restart local p1
    goto :goto_19
.end method

.method public setAnimationScales([F)V
    .registers 5
    .parameter "scales"

    .prologue
    .line 800
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_a

    .line 801
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 804
    :cond_a
    :try_start_a
    const-string v1, "WindowManager"

    const-string/jumbo v2, "setAnimationScales"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_18

    .line 809
    :goto_17
    return-void

    .line 806
    :catch_18
    move-exception v0

    .line 807
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "setAnimationScales [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public setPenSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 812
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_a

    .line 813
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 816
    :cond_a
    :try_start_a
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPenSetting, key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : temporary mark pen-related source code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->setPenSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_38} :catch_39

    .line 821
    :goto_38
    return-void

    .line 818
    :catch_39
    move-exception v0

    .line 819
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "setPenSetting [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method public setPointerSpeed(I)V
    .registers 6
    .parameter "speed"

    .prologue
    .line 824
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_a

    .line 825
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 828
    :cond_a
    :try_start_a
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPointerSpeed, speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setPointerSpeed(I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_29

    .line 833
    :goto_28
    return-void

    .line 830
    :catch_29
    move-exception v0

    .line 831
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "setPointerSpeed [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public setShowKeyguard(Z)V
    .registers 6
    .parameter "showLockScreen"

    .prologue
    .line 907
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_a

    .line 908
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 911
    :cond_a
    :try_start_a
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setShowKeyguard, showLockScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setShowKeyguard(Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_29

    .line 916
    :goto_28
    return-void

    .line 913
    :catch_29
    move-exception v0

    .line 914
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "setShowKeyguard [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public setStatusBarTouchMode(Z)V
    .registers 6
    .parameter "bEnable"

    .prologue
    .line 836
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_a

    .line 837
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 840
    :cond_a
    :try_start_a
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStatusBarTouchMode, bEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setStatusBarTouchMode(Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_29

    .line 845
    :goto_28
    return-void

    .line 842
    :catch_29
    move-exception v0

    .line 843
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "setStatusBarTouchMode [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public setStoppedState(Landroid/os/IBinder;Z)V
    .registers 7
    .parameter "token"
    .parameter "stopped"

    .prologue
    .line 663
    monitor-enter p0

    .line 664
    :try_start_1
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v3, :cond_7

    .line 665
    monitor-exit p0

    .line 688
    :goto_6
    return-void

    .line 666
    :cond_7
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v3

    .line 667
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_21

    .line 682
    if-eqz p1, :cond_17

    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1e

    .line 683
    :cond_17
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v3, v1

    .line 684
    .local v2, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->setStopped(Z)V

    .line 667
    .end local v2           #root:Landroid/view/ViewRootImpl;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 687
    :cond_21
    monitor-exit p0

    goto :goto_6

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_23
    move-exception v3

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v3
.end method

.method public showKeyguardWithAnimation(Z)V
    .registers 6
    .parameter "showLockScreen"

    .prologue
    .line 919
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_a

    .line 920
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 923
    :cond_a
    :try_start_a
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showKeyguardWithAnimation, showLockScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->showKeyguardWithAnimation(Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_29

    .line 928
    :goto_28
    return-void

    .line 925
    :catch_29
    move-exception v0

    .line 926
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "showKeyguardWithAnimation [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public trimLocalMemory()V
    .registers 4

    .prologue
    .line 613
    monitor-enter p0

    .line 614
    :try_start_1
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v2, :cond_7

    monitor-exit p0

    .line 620
    :goto_6
    return-void

    .line 615
    :cond_7
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 616
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 617
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->destroyHardwareLayers()V

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 619
    :cond_17
    monitor-exit p0

    goto :goto_6

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_19
    move-exception v2

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public trimMemory(I)V
    .registers 5
    .parameter "level"

    .prologue
    .line 581
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 582
    sparse-switch p1, :sswitch_data_3c

    .line 604
    :cond_9
    invoke-static {p1}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    .line 607
    :cond_c
    :goto_c
    return-void

    .line 586
    :sswitch_d
    invoke-virtual {p0}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 588
    const/16 v2, 0x50

    invoke-static {v2}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    .line 591
    monitor-enter p0

    .line 592
    :try_start_1d
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v2, :cond_26

    monitor-exit p0

    goto :goto_c

    .line 597
    :catchall_23
    move-exception v2

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_23

    throw v2

    .line 593
    :cond_26
    :try_start_26
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 594
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    if-ge v1, v0, :cond_36

    .line 595
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->terminateHardwareResources()V

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 597
    :cond_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_23

    .line 599
    invoke-static {}, Landroid/opengl/ManagedEGLContext;->doTerminate()Z

    goto :goto_c

    .line 582
    nop

    :sswitch_data_3c
    .sparse-switch
        0x3c -> :sswitch_d
        0x50 -> :sswitch_d
    .end sparse-switch
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .parameter "view"
    .parameter "params"

    .prologue
    .line 453
    instance-of v3, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_c

    .line 454
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Params must be WindowManager.LayoutParams"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    move-object v2, p2

    .line 457
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 460
    .local v2, wparams:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    monitor-enter p0

    .line 463
    const/4 v3, 0x1

    :try_start_14
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v0

    .line 464
    .local v0, index:I
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v1, v3, v0

    .line 465
    .local v1, root:Landroid/view/ViewRootImpl;
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v2, v3, v0

    .line 466
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 467
    monitor-exit p0

    .line 468
    return-void

    .line 467
    .end local v0           #index:I
    .end local v1           #root:Landroid/view/ViewRootImpl;
    :catchall_26
    move-exception v3

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_26

    throw v3
.end method
