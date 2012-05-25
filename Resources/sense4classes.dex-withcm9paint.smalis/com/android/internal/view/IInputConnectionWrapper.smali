.class public Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;,
        Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    }
.end annotation


# static fields
.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_SELECTION_END:I = 0x1a4

.field private static final DO_GET_SELECTION_START:I = 0x19a

.field private static final DO_GET_SUB_TEXT:I = 0x1b8

.field private static final DO_GET_TEXT:I = 0x190

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REPLACE_TEXT:I = 0x1ae

.field private static final DO_REPORT_FULLSCREEN_MODE:I = 0x64

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mH:Landroid/os/Handler;

.field private mInputConnection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/inputmethod/InputConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .registers 5
    .parameter "mainLooper"
    .parameter "conn"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    .line 91
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    .line 92
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 93
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .registers 2

    .prologue
    .line 171
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 172
    return-void
.end method

.method public clearMetaKeyStates(I)V
    .registers 4
    .parameter "states"

    .prologue
    .line 162
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 163
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 126
    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 127
    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 130
    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 131
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 122
    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 123
    return-void
.end method

.method public deleteSurroundingText(II)V
    .registers 4
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 166
    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 168
    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 217
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_f

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    .line 219
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 224
    :goto_e
    return-void

    .line 223
    :cond_f
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_e
.end method

.method public endBatchEdit()V
    .registers 2

    .prologue
    .line 175
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 176
    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 227
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_4f6

    .line 550
    const-string v3, "IInputConnectionWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_21
    return-void

    .line 229
    :sswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 231
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_26
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 232
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_36

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 233
    :cond_36
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_45} :catch_46

    goto :goto_21

    .line 239
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_46
    move-exception v1

    .line 240
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setTextAfterCursor"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 237
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_4f
    :try_start_4f
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_5e} :catch_46

    goto :goto_21

    .line 245
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_5f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 247
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_63
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 248
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_73

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_8c

    .line 249
    :cond_73
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_82} :catch_83

    goto :goto_21

    .line 255
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_83
    move-exception v1

    .line 256
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setTextBeforeCursor"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 253
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_8c
    :try_start_8c
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_9b} :catch_83

    goto :goto_21

    .line 261
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_9c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 263
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_a0
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 264
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_b0

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_cb

    .line 265
    :cond_b0
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getSelectedText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_bf} :catch_c1

    goto/16 :goto_21

    .line 271
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_c1
    move-exception v1

    .line 272
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setSelectedText"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 269
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_cb
    :try_start_cb
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_d8
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_d8} :catch_c1

    goto/16 :goto_21

    .line 277
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_da
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 279
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_de
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 280
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_ee

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_11a

    .line 281
    :cond_ee
    const-string v3, "IInputConnectionWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCursorCapsMode on inactive InputConnection. ic="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_10e} :catch_110

    goto/16 :goto_21

    .line 287
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_110
    move-exception v1

    .line 288
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setCursorCapsMode"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 285
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_11a
    :try_start_11a
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_127
    .catch Landroid/os/RemoteException; {:try_start_11a .. :try_end_127} :catch_110

    goto/16 :goto_21

    .line 293
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_129
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 295
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_12d
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 296
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_13d

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_158

    .line 297
    :cond_13d
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getExtractedText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_14c
    .catch Landroid/os/RemoteException; {:try_start_12d .. :try_end_14c} :catch_14e

    goto/16 :goto_21

    .line 303
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_14e
    move-exception v1

    .line 304
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setExtractedText"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 301
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_158
    :try_start_158
    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/ExtractedTextRequest;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, v5}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v3

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v4, v3, v5}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_169
    .catch Landroid/os/RemoteException; {:try_start_158 .. :try_end_169} :catch_14e

    goto/16 :goto_21

    .line 309
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_16b
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 310
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_17b

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_1aa

    .line 311
    :cond_17b
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "commitText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v3, "IInputConnectionWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputConnection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", active client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 315
    :cond_1aa
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_21

    .line 319
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_1b5
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 320
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1c5

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_1cf

    .line 321
    :cond_1c5
    const-string v3, "IInputConnectionWrapper"

    const-string/jumbo v4, "setSelection on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 324
    :cond_1cf
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_21

    .line 328
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_1d8
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 329
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1e8

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_1f2

    .line 330
    :cond_1e8
    const-string v3, "IInputConnectionWrapper"

    const-string/jumbo v4, "performEditorAction on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 333
    :cond_1f2
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_21

    .line 337
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_1f9
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 338
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_209

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_213

    .line 339
    :cond_209
    const-string v3, "IInputConnectionWrapper"

    const-string/jumbo v4, "performContextMenuAction on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 342
    :cond_213
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    goto/16 :goto_21

    .line 346
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_21a
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 347
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_22a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_233

    .line 348
    :cond_22a
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "commitCompletion on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 351
    :cond_233
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    goto/16 :goto_21

    .line 355
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_23c
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 356
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_24c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_255

    .line 357
    :cond_24c
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "commitCorrection on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 360
    :cond_255
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/CorrectionInfo;

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    goto/16 :goto_21

    .line 364
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_25e
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 365
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_26e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_289

    .line 366
    :cond_26e
    const-string v3, "IInputConnectionWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setComposingText on inactive InputConnection. ic="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 369
    :cond_289
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_21

    .line 373
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_294
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 374
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2a4

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_2ae

    .line 375
    :cond_2a4
    const-string v3, "IInputConnectionWrapper"

    const-string/jumbo v4, "setComposingRegion on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 378
    :cond_2ae
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    goto/16 :goto_21

    .line 382
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_2b7
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 387
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_2ca

    .line 388
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "finishComposingText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 391
    :cond_2ca
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto/16 :goto_21

    .line 395
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_2cf
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 396
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2df

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_2e9

    .line 397
    :cond_2df
    const-string v3, "IInputConnectionWrapper"

    const-string/jumbo v4, "sendKeyEvent on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 400
    :cond_2e9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/KeyEvent;

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_21

    .line 404
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_2f2
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 405
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_302

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_30b

    .line 406
    :cond_302
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 409
    :cond_30b
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    goto/16 :goto_21

    .line 413
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_312
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 414
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_322

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_32b

    .line 415
    :cond_322
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 418
    :cond_32b
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_21

    .line 422
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_334
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 423
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_344

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_34d

    .line 424
    :cond_344
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "beginBatchEdit on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 427
    :cond_34d
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    goto/16 :goto_21

    .line 431
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_352
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 432
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_362

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_36b

    .line 433
    :cond_362
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "endBatchEdit on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 436
    :cond_36b
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_21

    .line 440
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_370
    iget-object v5, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 441
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_380

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_3b0

    .line 442
    :cond_380
    const-string v3, "IInputConnectionWrapper"

    const-string/jumbo v4, "showStatusIcon on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v3, "IInputConnectionWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputConnection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", active client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 446
    :cond_3b0
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_3b9

    :goto_3b4
    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    goto/16 :goto_21

    :cond_3b9
    move v3, v4

    goto :goto_3b4

    .line 450
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_3bb
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 451
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_3cb

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_3d5

    .line 452
    :cond_3cb
    const-string v3, "IInputConnectionWrapper"

    const-string/jumbo v4, "performPrivateCommand on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 455
    :cond_3d5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 456
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_21

    .line 463
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_3e6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 464
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 467
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_3fa

    :try_start_3f4
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_413

    .line 468
    :cond_3fa
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getSelectionStart on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setSelectionStart(I)V
    :try_end_407
    .catch Landroid/os/RemoteException; {:try_start_3f4 .. :try_end_407} :catch_409

    goto/16 :goto_21

    .line 474
    :catch_409
    move-exception v1

    .line 475
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling getSelectionStart"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 472
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_413
    :try_start_413
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->getSelectionStart()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setSelectionStart(I)V
    :try_end_41c
    .catch Landroid/os/RemoteException; {:try_start_413 .. :try_end_41c} :catch_409

    goto/16 :goto_21

    .line 482
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_41e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 483
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 486
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_432

    :try_start_42c
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_44b

    .line 487
    :cond_432
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getSelectionEnd on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setSelectionEnd(I)V
    :try_end_43f
    .catch Landroid/os/RemoteException; {:try_start_42c .. :try_end_43f} :catch_441

    goto/16 :goto_21

    .line 493
    :catch_441
    move-exception v1

    .line 494
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling getSelectionEnd"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 491
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_44b
    :try_start_44b
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->getSelectionEnd()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setSelectionStart(I)V
    :try_end_454
    .catch Landroid/os/RemoteException; {:try_start_44b .. :try_end_454} :catch_441

    goto/16 :goto_21

    .line 499
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_456
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 501
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 502
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_46a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_474

    .line 503
    :cond_46a
    const-string v3, "IInputConnectionWrapper"

    const-string/jumbo v4, "replaceText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 507
    :cond_474
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v4, v5, v3}, Landroid/view/inputmethod/InputConnection;->replaceText(IILjava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 512
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_481
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 513
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 516
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_495

    :try_start_48f
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_4ae

    .line 517
    :cond_495
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getSelectionStart on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setText(Ljava/lang/CharSequence;)V
    :try_end_4a2
    .catch Landroid/os/RemoteException; {:try_start_48f .. :try_end_4a2} :catch_4a4

    goto/16 :goto_21

    .line 523
    :catch_4a4
    move-exception v1

    .line 524
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling getText"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 521
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4ae
    :try_start_4ae
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setText(Ljava/lang/CharSequence;)V
    :try_end_4b7
    .catch Landroid/os/RemoteException; {:try_start_4ae .. :try_end_4b7} :catch_4a4

    goto/16 :goto_21

    .line 531
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_4b9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 532
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 535
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_4cd

    :try_start_4c7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_4e6

    .line 536
    :cond_4cd
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getSelectionStart on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setSubText(Ljava/lang/CharSequence;)V
    :try_end_4da
    .catch Landroid/os/RemoteException; {:try_start_4c7 .. :try_end_4da} :catch_4dc

    goto/16 :goto_21

    .line 542
    :catch_4dc
    move-exception v1

    .line 543
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling getSubText"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 540
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4e6
    :try_start_4e6
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getSubText(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputContextCallback;->setSubText(Ljava/lang/CharSequence;)V
    :try_end_4f3
    .catch Landroid/os/RemoteException; {:try_start_4e6 .. :try_end_4f3} :catch_4dc

    goto/16 :goto_21

    .line 227
    nop

    :sswitch_data_4f6
    .sparse-switch
        0xa -> :sswitch_22
        0x14 -> :sswitch_5f
        0x19 -> :sswitch_9c
        0x1e -> :sswitch_da
        0x28 -> :sswitch_129
        0x32 -> :sswitch_16b
        0x37 -> :sswitch_21a
        0x38 -> :sswitch_23c
        0x39 -> :sswitch_1b5
        0x3a -> :sswitch_1d8
        0x3b -> :sswitch_1f9
        0x3c -> :sswitch_25e
        0x3f -> :sswitch_294
        0x41 -> :sswitch_2b7
        0x46 -> :sswitch_2cf
        0x50 -> :sswitch_312
        0x5a -> :sswitch_334
        0x5f -> :sswitch_352
        0x64 -> :sswitch_370
        0x78 -> :sswitch_3bb
        0x82 -> :sswitch_2f2
        0x190 -> :sswitch_481
        0x19a -> :sswitch_3e6
        0x1a4 -> :sswitch_41e
        0x1ae -> :sswitch_456
        0x1b8 -> :sswitch_4b9
    .end sparse-switch
.end method

.method public finishComposingText()V
    .registers 2

    .prologue
    .line 154
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 155
    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .registers 5
    .parameter "reqModes"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 112
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 113
    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .registers 11
    .parameter "request"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 117
    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 119
    return-void
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .registers 5
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 108
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 109
    return-void
.end method

.method public getSelectionEnd(Lcom/android/internal/view/IInputContextCallback;)V
    .registers 4
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 194
    const/16 v0, 0x1a4

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 195
    return-void
.end method

.method public getSelectionStart(Lcom/android/internal/view/IInputContextCallback;)V
    .registers 4
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 189
    const/16 v0, 0x19a

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 190
    return-void
.end method

.method public getSubText(IILcom/android/internal/view/IInputContextCallback;)V
    .registers 10
    .parameter "start"
    .parameter "end"
    .parameter "callback"

    .prologue
    .line 209
    const/16 v1, 0x1b8

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 210
    return-void
.end method

.method public getText(Lcom/android/internal/view/IInputContextCallback;)V
    .registers 4
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 204
    const/16 v0, 0x190

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 205
    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .registers 11
    .parameter "length"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 100
    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 101
    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .registers 11
    .parameter "length"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 104
    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 105
    return-void
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method obtainMessage(I)Landroid/os/Message;
    .registers 3
    .parameter "what"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageII(III)Landroid/os/Message;
    .registers 5
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 7
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 601
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 602
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 603
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .registers 8
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 573
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 574
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 575
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 576
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .registers 9
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 581
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 582
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 583
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 584
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 585
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .registers 8
    .parameter "what"
    .parameter "arg1"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 566
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 567
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 568
    iput p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 569
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .registers 5
    .parameter "what"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 562
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 7
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    .line 593
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 594
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 595
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    .line 596
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public performContextMenuAction(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 142
    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 143
    return-void
.end method

.method public performEditorAction(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 138
    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 139
    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .parameter "action"
    .parameter "data"

    .prologue
    .line 183
    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 184
    return-void
.end method

.method public replaceText(IILjava/lang/CharSequence;)V
    .registers 5
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 199
    const/16 v0, 0x1ae

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 200
    return-void
.end method

.method public reportFullscreenMode(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 179
    const/16 v2, 0x64

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 180
    return-void

    :cond_e
    move v0, v1

    .line 179
    goto :goto_6
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 158
    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 159
    return-void
.end method

.method public setComposingRegion(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 146
    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 147
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 150
    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 151
    return-void
.end method

.method public setSelection(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 134
    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 135
    return-void
.end method
