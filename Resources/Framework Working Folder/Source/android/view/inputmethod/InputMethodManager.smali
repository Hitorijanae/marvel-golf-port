.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;,
        Landroid/view/inputmethod/InputMethodManager$H;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final HIDE_NOT_ALWAYS:I = 0x2

.field static final MSG_BIND:I = 0x2

.field static final MSG_DUMP:I = 0x1

.field static final MSG_SET_ACTIVE:I = 0x4

.field static final MSG_UNBIND:I = 0x3

.field public static final RESULT_HIDDEN:I = 0x3

.field public static final RESULT_SHOWN:I = 0x2

.field public static final RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final SHOW_FORCED:I = 0x2

.field public static final SHOW_IMPLICIT:I = 0x1

.field static final TAG:Ljava/lang/String; = "InputMethodManager"

.field static mInstance:Landroid/view/inputmethod/InputMethodManager;

.field static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field mActive:Z

.field mBindSequence:I

.field final mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

.field mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mCurId:Ljava/lang/String;

.field mCurMethod:Lcom/android/internal/view/IInputMethodSession;

.field mCurRootView:Landroid/view/View;

.field mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCursorCandEnd:I

.field mCursorCandStart:I

.field mCursorRect:Landroid/graphics/Rect;

.field mCursorSelEnd:I

.field mCursorSelStart:I

.field final mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

.field mFullscreenMode:Z

.field final mH:Landroid/view/inputmethod/InputMethodManager$H;

.field mHasBeenInactive:Z

.field final mIInputContext:Lcom/android/internal/view/IInputContext;

.field final mMainLooper:Landroid/os/Looper;

.field mNextServedNeedsStart:Z

.field mNextServedView:Landroid/view/View;

.field mServedConnecting:Z

.field mServedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mServedView:Landroid/view/View;

.field final mService:Lcom/android/internal/view/IInputMethodManager;

.field mTmpCursorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V
    .registers 5
    .parameter "service"
    .parameter "looper"

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 273
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    .line 274
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 404
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$1;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 441
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 444
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 445
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    .line 446
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {v0, p0, p2}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 447
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-direct {v0, p2, v1, p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 450
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_42

    .line 451
    sput-object p0, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 453
    :cond_42
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 5
    .parameter "mainLooper"

    .prologue
    .line 470
    sget-object v3, Landroid/view/inputmethod/InputMethodManager;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v3

    .line 471
    :try_start_3
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_b

    .line 472
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v3

    .line 478
    :goto_a
    return-object v2

    .line 474
    :cond_b
    const-string/jumbo v2, "input_method"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 475
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 476
    .local v1, service:Lcom/android/internal/view/IInputMethodManager;
    new-instance v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v2, v1, p0}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V

    sput-object v2, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 477
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_21

    .line 478
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    goto :goto_a

    .line 477
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Lcom/android/internal/view/IInputMethodManager;
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public static peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    .prologue
    .line 487
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public checkFocus()V
    .registers 5

    .prologue
    .line 1152
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v1, v2, :cond_b

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    if-nez v1, :cond_b

    .line 1196
    :goto_a
    return-void

    .line 1156
    :cond_b
    const/4 v0, 0x0

    .line 1157
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1158
    :try_start_f
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v1, v3, :cond_1e

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    if-nez v1, :cond_1e

    .line 1167
    monitor-exit v2

    goto :goto_a

    .line 1189
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1b

    throw v1

    .line 1173
    :cond_1e
    const/4 v1, 0x0

    :try_start_1f
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    .line 1174
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-nez v1, :cond_2d

    .line 1175
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1179
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 1180
    monitor-exit v2

    goto :goto_a

    .line 1183
    :cond_2d
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1185
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 1186
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1187
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1188
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1189
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_1b

    .line 1191
    if-eqz v0, :cond_42

    .line 1192
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1195
    :cond_42
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->startInputInner()V

    goto :goto_a
.end method

.method clearBindingLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 626
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 627
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 628
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 629
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 630
    return-void
.end method

.method clearConnectionLocked()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 637
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 638
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 639
    return-void
.end method

.method closeCurrentInput()V
    .registers 5

    .prologue
    .line 1200
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1203
    :goto_9
    return-void

    .line 1201
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    .registers 10
    .parameter "context"
    .parameter "seq"
    .parameter "key"
    .parameter "callback"

    .prologue
    .line 1441
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1444
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v1, :cond_d

    .line 1446
    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p4, p2, v1}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_24
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_5a

    .line 1449
    :goto_b
    :try_start_b
    monitor-exit v2

    .line 1472
    :goto_c
    return-void

    .line 1452
    :cond_d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_27

    .line 1454
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_24

    .line 1456
    const/4 v1, 0x1

    :try_start_1f
    invoke-interface {p4, p2, v1}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_5c

    .line 1459
    :goto_22
    :try_start_22
    monitor-exit v2

    goto :goto_c

    .line 1471
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v1

    .line 1463
    :cond_27
    :try_start_27
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodSession;->dispatchKeyEvent(ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2e

    .line 1471
    :goto_2c
    :try_start_2c
    monitor-exit v2

    goto :goto_c

    .line 1464
    :catch_2e
    move-exception v0

    .line 1465
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dropping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_2c .. :try_end_53} :catchall_24

    .line 1467
    const/4 v1, 0x0

    :try_start_54
    invoke-interface {p4, p2, v1}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_24
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_2c

    .line 1468
    :catch_58
    move-exception v1

    goto :goto_2c

    .line 1447
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_5a
    move-exception v1

    goto :goto_b

    .line 1457
    :catch_5c
    move-exception v1

    goto :goto_22
.end method

.method dispatchTrackballEvent(Landroid/content/Context;ILandroid/view/MotionEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    .registers 10
    .parameter "context"
    .parameter "seq"
    .parameter "motion"
    .parameter "callback"

    .prologue
    .line 1479
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1482
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_18

    if-nez v1, :cond_11

    .line 1484
    :cond_b
    const/4 v1, 0x0

    :try_start_c
    invoke-interface {p4, p2, v1}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_47

    .line 1487
    :goto_f
    :try_start_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_18

    .line 1501
    :goto_10
    return-void

    .line 1492
    :cond_11
    :try_start_11
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodSession;->dispatchTrackballEvent(ILandroid/view/MotionEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_1b

    .line 1500
    :goto_16
    :try_start_16
    monitor-exit v2

    goto :goto_10

    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1

    .line 1493
    :catch_1b
    move-exception v0

    .line 1494
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1c
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dropping trackball: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_18

    .line 1496
    const/4 v1, 0x0

    :try_start_41
    invoke-interface {p4, p2, v1}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_18
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_16

    .line 1497
    :catch_45
    move-exception v1

    goto :goto_16

    .line 1485
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_47
    move-exception v1

    goto :goto_f
.end method

.method public displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 6
    .parameter "view"
    .parameter "completions"

    .prologue
    .line 688
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 689
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 690
    :try_start_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_18

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 692
    :cond_16
    monitor-exit v1

    .line 703
    :goto_17
    return-void

    .line 695
    :cond_18
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 696
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_27

    if-eqz v0, :cond_25

    .line 698
    :try_start_1e
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v0, v2}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_2a

    .line 702
    :cond_25
    :goto_25
    :try_start_25
    monitor-exit v1

    goto :goto_17

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v0

    .line 699
    :catch_2a
    move-exception v0

    goto :goto_25
.end method

.method doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 1652
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1653
    .local v0, p:Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMainLooper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIInputContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHasBeenInactive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBindSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextServedNeedsStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNextServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1668
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1be

    .line 1669
    const-string v1, "  mCurrentTextBoxAttribute:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1670
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1674
    :goto_139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorSelStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorSelEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1681
    return-void

    .line 1672
    :cond_1be
    const-string v1, "  mCurrentTextBoxAttribute: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_139
.end method

.method finishInputLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 645
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 646
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_33

    .line 649
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_12

    .line 651
    :try_start_b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodManager;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_34

    .line 656
    :cond_12
    :goto_12
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_29

    .line 661
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 662
    .local v0, vh:Landroid/os/Handler;
    if-eqz v0, :cond_29

    .line 665
    const/16 v1, 0x3f4

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 670
    .end local v0           #vh:Landroid/os/Handler;
    :cond_29
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 671
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 672
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 673
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 675
    :cond_33
    return-void

    .line 652
    :catch_34
    move-exception v1

    goto :goto_12
.end method

.method public focusIn(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1091
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1092
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V

    .line 1093
    monitor-exit v1

    .line 1094
    return-void

    .line 1093
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method focusInLocked(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_9

    .line 1114
    :goto_8
    return-void

    .line 1112
    :cond_9
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 1113
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->scheduleCheckFocusLocked(Landroid/view/View;)V

    goto :goto_8
.end method

.method public focusOut(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1121
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1125
    :try_start_3
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_7

    .line 1136
    :cond_7
    monitor-exit v1

    .line 1137
    return-void

    .line 1136
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getClient()Lcom/android/internal/view/IInputMethodClient;
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    return-object v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 6

    .prologue
    .line 1534
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1536
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_29
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b

    move-result-object v1

    :try_start_9
    monitor-exit v2

    .line 1539
    :goto_a
    return-object v1

    .line 1537
    :catch_b
    move-exception v0

    .line 1538
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_a

    .line 1541
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 511
    :catch_7
    move-exception v0

    .line 512
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .registers 5
    .parameter "imi"
    .parameter "allowsImplicitlySelectedSubtypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 527
    :catch_7
    move-exception v0

    .line 528
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInputContext()Lcom/android/internal/view/IInputContext;
    .registers 2

    .prologue
    .line 497
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    return-object v0
.end method

.method public getInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 503
    :catch_7
    move-exception v0

    .line 504
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 6

    .prologue
    .line 1641
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1643
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_29
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b

    move-result-object v1

    :try_start_9
    monitor-exit v2

    .line 1646
    :goto_a
    return-object v1

    .line 1644
    :catch_b
    move-exception v0

    .line 1645
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1646
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_a

    .line 1648
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1565
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 1566
    :try_start_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_66

    .line 1570
    .local v5, ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :try_start_8
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    move-result-object v3

    .line 1572
    .local v3, info:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 1573
    .local v6, subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1574
    .local v0, N:I
    if-eqz v3, :cond_2f

    if-lez v0, :cond_2f

    .line 1575
    const/4 v2, 0x0

    .local v2, i:I
    :goto_18
    if-ge v2, v0, :cond_2f

    .line 1576
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1577
    .local v4, o:Ljava/lang/Object;
    instance-of v7, v4, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v7, :cond_3e

    .line 1578
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 1579
    const-string v7, "InputMethodManager"

    const-string v9, "IMI list already contains the same InputMethod."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_66
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2f} :catch_4a

    .line 1592
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #info:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4           #o:Ljava/lang/Object;
    .end local v6           #subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_2f
    :goto_2f
    :try_start_2f
    monitor-exit v8
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_66

    return-object v5

    .line 1582
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v3       #info:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v4       #o:Ljava/lang/Object;
    .restart local v6       #subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_31
    :try_start_31
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1583
    .restart local v6       #subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1584
    .restart local v4       #o:Ljava/lang/Object;
    :cond_3e
    if-eqz v6, :cond_3b

    instance-of v7, v4, Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v7, :cond_3b

    .line 1585
    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_66
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_49} :catch_4a

    goto :goto_3b

    .line 1589
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #info:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6           #subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catch_4a
    move-exception v1

    .line 1590
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4b
    const-string v7, "InputMethodManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IME died: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 1593
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v5           #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :catchall_66
    move-exception v7

    monitor-exit v8
    :try_end_68
    .catchall {:try_start_4b .. :try_end_68} :catchall_66

    throw v7
.end method

.method public hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 5
    .parameter "token"
    .parameter "flags"

    .prologue
    .line 1409
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->hideMySoftInput(Landroid/os/IBinder;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1413
    return-void

    .line 1410
    :catch_6
    move-exception v0

    .line 1411
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .registers 4
    .parameter "windowToken"
    .parameter "flags"

    .prologue
    .line 848
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .registers 8
    .parameter "windowToken"
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const/4 v0, 0x0

    .line 869
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 870
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 871
    :try_start_7
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_15

    .line 872
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1f

    .line 879
    :goto_14
    return v0

    .line 876
    :cond_15
    :try_start_15
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_22

    move-result v0

    :try_start_1d
    monitor-exit v1

    goto :goto_14

    .line 880
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    throw v0

    .line 877
    :catch_22
    move-exception v2

    .line 879
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_1f

    goto :goto_14
.end method

.method public hideStatusIcon(Landroid/os/IBinder;)V
    .registers 6
    .parameter "imeToken"

    .prologue
    .line 542
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 546
    return-void

    .line 543
    :catch_8
    move-exception v0

    .line 544
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAcceptingText()Z
    .registers 2

    .prologue
    .line 618
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 619
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isActive()Z
    .registers 3

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 608
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 609
    :try_start_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    monitor-exit v1

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 610
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public isActive(Landroid/view/View;)Z
    .registers 4
    .parameter "view"

    .prologue
    .line 594
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 595
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 596
    :try_start_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_16

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_16
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_1b
    monitor-exit v1

    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1b

    .line 600
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public isFullscreenMode()Z
    .registers 2

    .prologue
    .line 586
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return v0
.end method

.method public isWatchingCursor(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 1304
    const/4 v0, 0x1

    return v0
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V
    .registers 6
    .parameter "span"
    .parameter "originalString"
    .parameter "index"

    .prologue
    .line 574
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 578
    return-void

    .line 575
    :catch_6
    move-exception v0

    .line 576
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V
    .registers 15
    .parameter "rootView"
    .parameter "focusedView"
    .parameter "softInputMode"
    .parameter "first"
    .parameter "windowFlags"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1211
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1216
    :try_start_5
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    if-eqz v0, :cond_f

    .line 1218
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 1219
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    .line 1221
    :cond_f
    if-eqz p2, :cond_37

    move-object v0, p2

    :goto_12
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V

    .line 1222
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_39

    .line 1224
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1226
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 1228
    if-eqz p2, :cond_3c

    :try_start_1e
    invoke-virtual {p2}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_3c

    move v4, v3

    .line 1230
    .local v4, isTextEditor:Z
    :goto_25
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz p2, :cond_3e

    :goto_2f
    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ZZIZI)V
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_35} :catch_43

    .line 1235
    .end local v4           #isTextEditor:Z
    :goto_35
    :try_start_35
    monitor-exit v8
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_40

    .line 1236
    return-void

    :cond_37
    move-object v0, p1

    .line 1221
    goto :goto_12

    .line 1222
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    move v4, v5

    .line 1228
    goto :goto_25

    .restart local v4       #isTextEditor:Z
    :cond_3e
    move v3, v5

    .line 1230
    goto :goto_2f

    .line 1235
    .end local v4           #isTextEditor:Z
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v8
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0

    .line 1233
    :catch_43
    move-exception v0

    goto :goto_35
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .registers 4
    .parameter "spans"

    .prologue
    .line 565
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 569
    return-void

    .line 566
    :catch_6
    move-exception v0

    .line 567
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .registers 3
    .parameter "ic"

    .prologue
    .line 682
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eq v0, p1, :cond_7

    .line 683
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 685
    :cond_7
    return-void
.end method

.method public restartInput(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 941
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 942
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 943
    :try_start_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_18

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 945
    :cond_16
    monitor-exit v1

    .line 952
    :goto_17
    return-void

    .line 948
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 949
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_20

    .line 951
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->startInputInner()V

    goto :goto_17

    .line 949
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method scheduleCheckFocusLocked(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/16 v2, 0x3f5

    .line 1140
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1141
    .local v0, vh:Landroid/os/Handler;
    if-eqz v0, :cond_15

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1143
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1145
    :cond_15
    return-void
.end method

.method public sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .parameter "view"
    .parameter "action"
    .parameter "data"

    .prologue
    .line 1346
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1347
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1348
    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_16

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_16
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v1, :cond_20

    .line 1351
    :cond_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_27

    .line 1360
    :goto_1f
    return-void

    .line 1355
    :cond_20
    :try_start_20
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_2a

    .line 1359
    :goto_25
    :try_start_25
    monitor-exit v2

    goto :goto_1f

    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v1

    .line 1356
    :catch_2a
    move-exception v0

    .line 1357
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2b
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_27

    goto :goto_25
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 8
    .parameter "imiId"
    .parameter "subtypes"

    .prologue
    .line 1631
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1633
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_26
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 1637
    :goto_8
    :try_start_8
    monitor-exit v2

    .line 1638
    return-void

    .line 1634
    :catch_a
    move-exception v0

    .line 1635
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1637
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 7
    .parameter "subtype"

    .prologue
    .line 1551
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1553
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_29
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b

    move-result v1

    :try_start_9
    monitor-exit v2

    .line 1556
    :goto_a
    return v1

    .line 1554
    :catch_b
    move-exception v0

    .line 1555
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_a

    .line 1558
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setFullscreenMode(Z)V
    .registers 2
    .parameter "fullScreen"

    .prologue
    .line 559
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 560
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .registers 6
    .parameter "imeToken"
    .parameter "vis"
    .parameter "backDisposition"

    .prologue
    .line 551
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 555
    return-void

    .line 552
    :catch_6
    move-exception v0

    .line 553
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .parameter "token"
    .parameter "id"

    .prologue
    .line 1372
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1376
    return-void

    .line 1373
    :catch_6
    move-exception v0

    .line 1374
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6
    .parameter "token"
    .parameter "id"
    .parameter "subtype"

    .prologue
    .line 1389
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1393
    return-void

    .line 1390
    :catch_6
    move-exception v0

    .line 1391
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 7
    .parameter "imiId"

    .prologue
    .line 1519
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1521
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_28
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    .line 1525
    :goto_a
    :try_start_a
    monitor-exit v2

    .line 1526
    return-void

    .line 1522
    :catch_c
    move-exception v0

    .line 1523
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1525
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public showInputMethodPicker()V
    .registers 6

    .prologue
    .line 1504
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1506
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_28
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    .line 1510
    :goto_a
    :try_start_a
    monitor-exit v2

    .line 1511
    return-void

    .line 1507
    :catch_c
    move-exception v0

    .line 1508
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1510
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public showSoftInput(Landroid/view/View;I)Z
    .registers 4
    .parameter "view"
    .parameter "flags"

    .prologue
    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .registers 8
    .parameter "view"
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const/4 v0, 0x0

    .line 799
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 800
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 801
    :try_start_7
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_19

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_17

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 803
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_23

    .line 811
    :goto_18
    return v0

    .line 807
    :cond_19
    :try_start_19
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_26

    move-result v0

    :try_start_21
    monitor-exit v1

    goto :goto_18

    .line 812
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw v0

    .line 808
    :catch_26
    move-exception v2

    .line 811
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_23

    goto :goto_18
.end method

.method public showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 5
    .parameter "token"
    .parameter "flags"

    .prologue
    .line 1430
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showMySoftInput(Landroid/os/IBinder;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1434
    return-void

    .line 1431
    :catch_6
    move-exception v0

    .line 1432
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .registers 5
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    .line 818
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 821
    :goto_7
    return-void

    .line 819
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 6
    .parameter "imeToken"
    .parameter "packageName"
    .parameter "iconId"

    .prologue
    .line 534
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 538
    return-void

    .line 535
    :catch_6
    move-exception v0

    .line 536
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startGettingWindowFocus(Landroid/view/View;)V
    .registers 4
    .parameter "rootView"

    .prologue
    .line 1240
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1241
    :try_start_3
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    .line 1242
    monitor-exit v1

    .line 1243
    return-void

    .line 1242
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method startInputInner()V
    .registers 14

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 956
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 957
    :try_start_5
    iget-object v11, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 961
    .local v11, view:Landroid/view/View;
    if-nez v11, :cond_b

    .line 963
    monitor-exit v1

    .line 1069
    :cond_a
    :goto_a
    return-void

    .line 965
    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_25

    .line 971
    invoke-virtual {v11}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 972
    .local v10, vh:Landroid/os/Handler;
    if-eqz v10, :cond_a

    .line 978
    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v1, v5, :cond_28

    .line 982
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$2;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 965
    .end local v10           #vh:Landroid/os/Handler;
    .end local v11           #view:Landroid/view/View;
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0

    .line 993
    .restart local v10       #vh:Landroid/os/Handler;
    .restart local v11       #view:Landroid/view/View;
    :cond_28
    new-instance v3, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v3}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 996
    .local v3, tba:Landroid/view/inputmethod/EditorInfo;
    const/4 v8, 0x0

    .line 998
    .local v8, ic:Landroid/view/inputmethod/InputConnection;
    :try_start_2e
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 999
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v3, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 1000
    invoke-virtual {v11, v3}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_41} :catch_52

    move-result-object v8

    .line 1009
    :goto_42
    iget-object v12, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v12

    .line 1012
    :try_start_45
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-ne v1, v11, :cond_4d

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    if-nez v1, :cond_61

    .line 1017
    :cond_4d
    monitor-exit v12

    goto :goto_a

    .line 1068
    :catchall_4f
    move-exception v0

    monitor-exit v12
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_4f

    throw v0

    .line 1002
    :catch_52
    move-exception v7

    .line 1003
    .local v7, ex:Ljava/lang/Exception;
    const-string v1, "InputMethodManager"

    const-string v5, "Can not get information from served view"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1005
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    goto :goto_42

    .line 1022
    .end local v7           #ex:Ljava/lang/Exception;
    :cond_61
    :try_start_61
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_b3

    .line 1025
    .local v4, initial:Z
    :goto_65
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1026
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1027
    iput-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1029
    if-eqz v8, :cond_b5

    .line 1030
    iget v0, v3, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 1031
    iget v0, v3, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 1032
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 1033
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 1034
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1035
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0, v8, p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V
    :try_end_8a
    .catchall {:try_start_61 .. :try_end_8a} :catchall_4f

    .line 1043
    .local v2, servedContext:Lcom/android/internal/view/IInputContext;
    :goto_8a
    :try_start_8a
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/view/IInputMethodManager;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;ZZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v9

    .line 1046
    .local v9, res:Lcom/android/internal/view/InputBindResult;
    if-eqz v9, :cond_a1

    .line 1047
    iget-object v0, v9, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    if-eqz v0, :cond_b7

    .line 1048
    iget v0, v9, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 1049
    iget-object v0, v9, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 1056
    :cond_a1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_b0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;
    :try_end_a7
    .catchall {:try_start_8a .. :try_end_a7} :catchall_4f
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_a7} :catch_be
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_a7} :catch_da

    if-eqz v0, :cond_b0

    .line 1058
    :try_start_a9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_4f
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_b0} :catch_e2
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b0} :catch_da

    .line 1068
    .end local v9           #res:Lcom/android/internal/view/InputBindResult;
    :cond_b0
    :goto_b0
    :try_start_b0
    monitor-exit v12
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_4f

    goto/16 :goto_a

    .end local v2           #servedContext:Lcom/android/internal/view/IInputContext;
    .end local v4           #initial:Z
    :cond_b3
    move v4, v0

    .line 1022
    goto :goto_65

    .line 1037
    .restart local v4       #initial:Z
    :cond_b5
    const/4 v2, 0x0

    .restart local v2       #servedContext:Lcom/android/internal/view/IInputContext;
    goto :goto_8a

    .line 1050
    .restart local v9       #res:Lcom/android/internal/view/InputBindResult;
    :cond_b7
    :try_start_b7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_b9
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_4f
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_b9} :catch_be
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_b9} :catch_da

    if-nez v0, :cond_a1

    .line 1053
    :try_start_bb
    monitor-exit v12

    goto/16 :goto_a

    .line 1062
    .end local v9           #res:Lcom/android/internal/view/InputBindResult;
    :catch_be
    move-exception v6

    .line 1063
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME died: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 1064
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_da
    move-exception v6

    .line 1065
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1066
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V
    :try_end_e1
    .catchall {:try_start_bb .. :try_end_e1} :catchall_4f

    goto :goto_b0

    .line 1059
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v9       #res:Lcom/android/internal/view/InputBindResult;
    :catch_e2
    move-exception v0

    goto :goto_b0
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .registers 7
    .parameter "imeToken"

    .prologue
    .line 1606
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1608
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->switchToLastInputMethod(Landroid/os/IBinder;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_29
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b

    move-result v1

    :try_start_9
    monitor-exit v2

    .line 1611
    :goto_a
    return v1

    .line 1609
    :catch_b
    move-exception v0

    .line 1610
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_a

    .line 1613
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public toggleSoftInput(II)V
    .registers 4
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 924
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_9

    .line 926
    :try_start_4
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 930
    :cond_9
    :goto_9
    return-void

    .line 927
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .registers 6
    .parameter "windowToken"
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 898
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 899
    :try_start_3
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_11

    .line 900
    :cond_f
    monitor-exit v1

    .line 909
    :goto_10
    return-void

    .line 902
    :cond_11
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1c

    if-eqz v0, :cond_1a

    .line 904
    :try_start_15
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1f

    .line 908
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit v1

    goto :goto_10

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0

    .line 905
    :catch_1f
    move-exception v0

    goto :goto_1a
.end method

.method public updateCursor(Landroid/view/View;IIII)V
    .registers 11
    .parameter "view"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1311
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1312
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1313
    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_16

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_16
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v1, :cond_20

    .line 1316
    :cond_1e
    monitor-exit v2

    .line 1332
    :goto_1f
    return-void

    .line 1319
    :cond_20
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1320
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_3f

    move-result v1

    if-nez v1, :cond_3d

    .line 1325
    :try_start_2f
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    .line 1326
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_3f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3d} :catch_42

    .line 1331
    :cond_3d
    :goto_3d
    :try_start_3d
    monitor-exit v2

    goto :goto_1f

    :catchall_3f
    move-exception v1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw v1

    .line 1327
    :catch_42
    move-exception v0

    .line 1328
    .local v0, e:Landroid/os/RemoteException;
    :try_start_43
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_3f

    goto :goto_3d
.end method

.method public updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .registers 6
    .parameter "view"
    .parameter "token"
    .parameter "text"

    .prologue
    .line 706
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 707
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 708
    :try_start_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_18

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 710
    :cond_16
    monitor-exit v1

    .line 720
    :goto_17
    return-void

    .line 713
    :cond_18
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_23

    if-eqz v0, :cond_21

    .line 715
    :try_start_1c
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_26

    .line 719
    :cond_21
    :goto_21
    :try_start_21
    monitor-exit v1

    goto :goto_17

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw v0

    .line 716
    :catch_26
    move-exception v0

    goto :goto_21
.end method

.method public updateSelection(Landroid/view/View;IIII)V
    .registers 15
    .parameter "view"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 1250
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1251
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 1252
    :try_start_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_16

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_16
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v0, :cond_20

    .line 1255
    :cond_1e
    monitor-exit v8

    .line 1276
    :goto_1f
    return-void

    .line 1258
    :cond_20
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    if-ne v0, p2, :cond_30

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    if-ne v0, p3, :cond_30

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    if-ne v0, p4, :cond_30

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_47

    if-eq v0, p5, :cond_45

    .line 1265
    :cond_30
    :try_start_30
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession;->updateSelection(IIIIII)V

    .line 1267
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 1268
    iput p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 1269
    iput p4, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 1270
    iput p5, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_47
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_45} :catch_4a

    .line 1275
    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v8

    goto :goto_1f

    :catchall_47
    move-exception v0

    monitor-exit v8
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw v0

    .line 1271
    :catch_4a
    move-exception v7

    .line 1272
    .local v7, e:Landroid/os/RemoteException;
    :try_start_4b
    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IME died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_47

    goto :goto_45
.end method

.method public viewClicked(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 1282
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-eq v2, v3, :cond_27

    const/4 v1, 0x1

    .line 1283
    .local v1, focusChanged:Z
    :goto_7
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1284
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1285
    :try_start_d
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_1d

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_1d
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v2, :cond_29

    .line 1288
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_30

    .line 1297
    :goto_26
    return-void

    .line 1282
    .end local v1           #focusChanged:Z
    :cond_27
    const/4 v1, 0x0

    goto :goto_7

    .line 1292
    .restart local v1       #focusChanged:Z
    :cond_29
    :try_start_29
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, v1}, Lcom/android/internal/view/IInputMethodSession;->viewClicked(Z)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_33

    .line 1296
    :goto_2e
    :try_start_2e
    monitor-exit v3

    goto :goto_26

    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw v2

    .line 1293
    :catch_33
    move-exception v0

    .line 1294
    .local v0, e:Landroid/os/RemoteException;
    :try_start_34
    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_30

    goto :goto_2e
.end method

.method public windowDismissed(Landroid/os/IBinder;)V
    .registers 4
    .parameter "appWindowToken"

    .prologue
    .line 1077
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1078
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1079
    :try_start_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_15

    .line 1081
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1083
    :cond_15
    monitor-exit v1

    .line 1084
    return-void

    .line 1083
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method
