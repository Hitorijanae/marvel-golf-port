.class public Landroid/app/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Dialog$ListenersHandler;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x44

.field private static final DIALOG_HIERARCHY_TAG:Ljava/lang/String; = "android:dialogHierarchy"

.field private static final DIALOG_SHOWING_TAG:Ljava/lang/String; = "android:dialogShowing"

.field private static final DISMISS:I = 0x43

.field private static final SHOW:I = 0x45

.field private static final TAG:Ljava/lang/String; = "Dialog"


# instance fields
.field private mActionBar:Lcom/android/internal/app/ActionBarImpl;

.field private mActionMode:Landroid/view/ActionMode;

.field private mCancelAndDismissTaken:Ljava/lang/String;

.field private mCancelMessage:Landroid/os/Message;

.field protected mCancelable:Z

.field private mCanceled:Z

.field final mContext:Landroid/content/Context;

.field private mCreated:Z

.field mDecor:Landroid/view/View;

.field private final mDismissAction:Ljava/lang/Runnable;

.field private mDismissMessage:Landroid/os/Message;

.field private final mHandler:Landroid/os/Handler;

.field private mListenersHandler:Landroid/os/Handler;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mOwnerActivity:Landroid/app/Activity;

.field private mShowMessage:Landroid/os/Message;

.field private mShowing:Z

.field private final mUiThread:Ljava/lang/Thread;

.field mWindow:Landroid/view/Window;

.field final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 131
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 148
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .registers 10
    .parameter "context"
    .parameter "theme"
    .parameter "createContextWrapper"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean v4, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 102
    iput-boolean v2, p0, Landroid/app/Dialog;->mCreated:Z

    .line 103
    iput-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    .line 104
    iput-boolean v2, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 107
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    .line 117
    new-instance v2, Landroid/app/Dialog$1;

    invoke-direct {v2, p0}, Landroid/app/Dialog$1;-><init>(Landroid/app/Dialog;)V

    iput-object v2, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    .line 151
    if-nez p2, :cond_2f

    .line 152
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 153
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010308

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 155
    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 158
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_2f
    if-eqz p3, :cond_66

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_36
    iput-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 159
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    .line 160
    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    .line 161
    .local v1, w:Landroid/view/Window;
    iput-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    .line 162
    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 163
    iget-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v5, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 164
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 165
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Dialog;->mUiThread:Ljava/lang/Thread;

    .line 166
    new-instance v2, Landroid/app/Dialog$ListenersHandler;

    invoke-direct {v2, p0}, Landroid/app/Dialog$ListenersHandler;-><init>(Landroid/app/Dialog;)V

    iput-object v2, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    .line 167
    return-void

    .end local v1           #w:Landroid/view/Window;
    :cond_66
    move-object v2, p1

    .line 158
    goto :goto_36
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 4
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 184
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 185
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 186
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/os/Message;)V
    .registers 4
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelCallback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 177
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 178
    iput-object p3, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 179
    return-void
.end method

.method private getAssociatedActivity()Landroid/content/ComponentName;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 994
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 995
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 996
    .local v1, context:Landroid/content/Context;
    :goto_7
    if-nez v0, :cond_20

    if-eqz v1, :cond_20

    .line 997
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_13

    move-object v0, v1

    .line 998
    check-cast v0, Landroid/app/Activity;

    goto :goto_7

    .line 1000
    :cond_13
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1e

    check-cast v1, Landroid/content/ContextWrapper;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .restart local v1       #context:Landroid/content/Context;
    :goto_1d
    goto :goto_7

    :cond_1e
    move-object v1, v2

    goto :goto_1d

    .line 1005
    :cond_20
    if-nez v0, :cond_23

    :goto_22
    return-object v2

    :cond_23
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_22
.end method

.method private sendDismissMessage()V
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_d

    .line 338
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 340
    :cond_d
    return-void
.end method

.method private sendShowMessage()V
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    if-eqz v0, :cond_d

    .line 345
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 347
    :cond_d
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "view"
    .parameter "params"

    .prologue
    .line 503
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    return-void
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 1101
    iget-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-eqz v0, :cond_14

    .line 1102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 1104
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1106
    :cond_14
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1107
    return-void
.end method

.method public closeOptionsMenu()V
    .registers 3

    .prologue
    .line 893
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 894
    return-void
.end method

.method public dismiss()V
    .registers 3

    .prologue
    .line 302
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_10

    .line 303
    iget-object v0, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    :goto_f
    return-void

    .line 305
    :cond_10
    iget-object v0, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    iget-object v0, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_f
.end method

.method dismissDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-nez v0, :cond_b

    .line 333
    :cond_a
    :goto_a
    return-void

    .line 315
    :cond_b
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 316
    const-string v0, "Dialog"

    const-string v1, "Tried to dismissDialog() but the Dialog\'s window was already destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 321
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_3b

    .line 323
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2b

    .line 324
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 326
    :cond_2b
    iput-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 327
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 328
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 329
    iput-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    .line 331
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    goto :goto_a

    .line 323
    :catchall_3b
    move-exception v0

    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_45

    .line 324
    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 326
    :cond_45
    iput-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 327
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 328
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 329
    iput-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    .line 331
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    throw v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 772
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 773
    const/4 v0, 0x1

    .line 775
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 701
    iget-object v1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 707
    :cond_11
    :goto_11
    return v0

    .line 704
    :cond_12
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 707
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :goto_24
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_11

    :cond_29
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 721
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 722
    const/4 v0, 0x1

    .line 724
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method dispatchOnCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 352
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_a

    .line 353
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    .line 356
    :cond_a
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 779
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 782
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 783
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_2b

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_2b

    const/4 v0, 0x1

    .line 785
    .local v0, isFullScreen:Z
    :goto_27
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 787
    return v2

    .end local v0           #isFullScreen:Z
    :cond_2b
    move v0, v2

    .line 783
    goto :goto_27
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 738
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 739
    const/4 v0, 0x1

    .line 741
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 755
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 756
    const/4 v0, 0x1

    .line 758
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 459
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 1069
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getVolumeControlStream()I
    .registers 2

    .prologue
    .line 1207
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 290
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 291
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :cond_b
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    .prologue
    .line 900
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 901
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 985
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-ne p1, v0, :cond_7

    .line 986
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 988
    :cond_7
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 975
    iput-object p1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 976
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    .prologue
    .line 686
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_7

    .line 589
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 591
    :cond_7
    return-void
.end method

.method public onContentChanged()V
    .registers 1

    .prologue
    .line 680
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 934
    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 941
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 367
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 907
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 854
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 801
    if-nez p1, :cond_7

    .line 802
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 805
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3
    .parameter "featureId"

    .prologue
    .line 794
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 689
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 670
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 538
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 539
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 540
    const/4 v0, 0x1

    .line 543
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 565
    const/4 v0, 0x4

    if-ne p1, v0, :cond_14

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 567
    invoke-virtual {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 568
    const/4 v0, 0x1

    .line 570
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 833
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 823
    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    .line 824
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->dispatchMenuVisibilityChanged(Z)V

    .line 826
    :cond_a
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 880
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 5
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 840
    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    .line 841
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->dispatchMenuVisibilityChanged(Z)V

    .line 843
    :cond_a
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 866
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 812
    if-nez p1, :cond_11

    if-eqz p3, :cond_11

    .line 813
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 814
    .local v0, goforit:Z
    if-eqz v0, :cond_12

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 816
    .end local v0           #goforit:Z
    :cond_11
    :goto_11
    return v1

    .line 814
    .restart local v0       #goforit:Z
    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 414
    const-string v1, "android:dialogHierarchy"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 415
    .local v0, dialogHierarchyState:Landroid/os/Bundle;
    if-nez v0, :cond_9

    .line 424
    :cond_8
    :goto_8
    return-void

    .line 419
    :cond_9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 420
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 421
    const-string v1, "android:dialogShowing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 422
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_8
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 395
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 396
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "android:dialogShowing"

    iget-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 397
    iget-boolean v1, p0, Landroid/app/Dialog;->mCreated:Z

    if-eqz v1, :cond_1b

    .line 398
    const-string v1, "android:dialogHierarchy"

    iget-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 400
    :cond_1b
    return-object v0
.end method

.method public onSearchRequested()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 947
    iget-object v4, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 951
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-direct {p0}, Landroid/app/Dialog;->getAssociatedActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 952
    .local v3, appName:Landroid/content/ComponentName;
    if-eqz v3, :cond_22

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    if-eqz v4, :cond_22

    move-object v4, v1

    move v5, v2

    .line 953
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 954
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 955
    const/4 v2, 0x1

    .line 957
    :cond_22
    return v2
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 373
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 374
    :cond_a
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 380
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 381
    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 618
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 619
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 620
    const/4 v0, 0x1

    .line 623
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 674
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 675
    iget-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    :cond_b
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 683
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .parameter "callback"

    .prologue
    .line 962
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v0, :cond_b

    .line 963
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 965
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public openContextMenu(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 927
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 928
    return-void
.end method

.method public openOptionsMenu()V
    .registers 4

    .prologue
    .line 886
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 887
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 913
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 914
    return-void
.end method

.method public final requestWindowFeature(I)Z
    .registers 3
    .parameter "featureId"

    .prologue
    .line 1033
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public setCancelMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1137
    iput-object p1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1138
    return-void
.end method

.method public setCancelable(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 1077
    iput-boolean p1, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1078
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 3
    .parameter "cancel"

    .prologue
    .line 1089
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-nez v0, :cond_9

    .line 1090
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1093
    :cond_9
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 1094
    return-void
.end method

.method public setContentView(I)V
    .registers 3
    .parameter "layoutResID"

    .prologue
    .line 469
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 470
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 480
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 481
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "view"
    .parameter "params"

    .prologue
    .line 492
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    return-void
.end method

.method public setDismissMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1174
    iput-object p1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1175
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "featureId"
    .parameter "drawable"

    .prologue
    .line 1057
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1058
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .registers 4
    .parameter "featureId"
    .parameter "alpha"

    .prologue
    .line 1065
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 1066
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .registers 4
    .parameter "featureId"
    .parameter "resId"

    .prologue
    .line 1041
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 1042
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 4
    .parameter "featureId"
    .parameter "uri"

    .prologue
    .line 1049
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 1050
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 1119
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 1120
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCancelListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    :cond_25
    if-eqz p1, :cond_32

    .line 1125
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1129
    :goto_31
    return-void

    .line 1127
    :cond_32
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    goto :goto_31
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 1145
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 1146
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDismissListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1150
    :cond_25
    if-eqz p1, :cond_32

    .line 1151
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1155
    :goto_31
    return-void

    .line 1153
    :cond_32
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    goto :goto_31
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 2
    .parameter "onKeyListener"

    .prologue
    .line 1214
    iput-object p1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1215
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 1162
    if-eqz p1, :cond_d

    .line 1163
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    .line 1167
    :goto_c
    return-void

    .line 1165
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    goto :goto_c
.end method

.method public final setOwnerActivity(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 213
    iput-object p1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 215
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 216
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .parameter "titleId"

    .prologue
    .line 523
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 524
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 512
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 514
    return-void
.end method

.method public final setVolumeControlStream(I)V
    .registers 3
    .parameter "streamType"

    .prologue
    .line 1200
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 1201
    return-void
.end method

.method public show()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 244
    iget-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v2, :cond_1e

    .line 245
    iget-object v2, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v2, :cond_1d

    .line 246
    iget-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 247
    iget-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v3}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 249
    :cond_18
    iget-object v2, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :cond_1d
    :goto_1d
    return-void

    .line 254
    :cond_1e
    iput-boolean v4, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 256
    iget-boolean v2, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v2, :cond_28

    .line 257
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 260
    :cond_28
    invoke-virtual {p0}, Landroid/app/Dialog;->onStart()V

    .line 261
    iget-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 263
    iget-object v2, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-nez v2, :cond_46

    iget-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 264
    new-instance v2, Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    iput-object v2, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    .line 267
    :cond_46
    iget-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 268
    .local v0, l:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_61

    .line 270
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 271
    .local v1, nl:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 272
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 274
    move-object v0, v1

    .line 278
    .end local v1           #nl:Landroid/view/WindowManager$LayoutParams;
    :cond_61
    :try_start_61
    iget-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    .line 281
    invoke-direct {p0}, Landroid/app/Dialog;->sendShowMessage()V
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_6f

    goto :goto_1d

    .line 282
    :catchall_6f
    move-exception v2

    throw v2
.end method

.method public takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z
    .registers 5
    .parameter "msg"
    .parameter "cancel"
    .parameter "dismiss"

    .prologue
    .line 1180
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 1181
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1186
    :cond_7
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1187
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1188
    iput-object p1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1190
    const/4 v0, 0x1

    :goto_10
    return v0

    .line 1182
    :cond_11
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_7

    .line 1183
    :cond_19
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public takeKeyEvents(Z)V
    .registers 3
    .parameter "get"

    .prologue
    .line 1018
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 1019
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 920
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 921
    return-void
.end method
