.class Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
.super Lcom/android/internal/view/IInputContextCallback$Stub;
.source "InputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/InputConnectionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputContextCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputConnectionWrapper.ICC"

.field private static sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

.field private static sSequenceNumber:I


# instance fields
.field public mCursorCapsMode:I

.field public mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field public mHaveValue:Z

.field public mSelectedText:Ljava/lang/CharSequence;

.field public mSeq:I

.field public mTextAfterCursor:Ljava/lang/CharSequence;

.field public mTextBeforeCursor:Ljava/lang/CharSequence;

.field public mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    invoke-direct {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;-><init>()V

    sput-object v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    .line 49
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sSequenceNumber:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/view/IInputContextCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V

    return-void
.end method

.method private dispose()V
    .registers 3

    .prologue
    .line 81
    const-class v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    monitor-enter v1

    .line 83
    :try_start_3
    sget-object v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    if-nez v0, :cond_12

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 88
    sput-object p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    .line 90
    :cond_12
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private static getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .registers 4

    .prologue
    .line 58
    const-class v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    monitor-enter v2

    .line 61
    :try_start_3
    sget-object v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    if-eqz v1, :cond_19

    .line 62
    sget-object v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    .line 63
    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 72
    :goto_f
    sget v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sSequenceNumber:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sSequenceNumber:I

    iput v1, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    .line 73
    monitor-exit v2

    return-object v0

    .line 68
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :cond_19
    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    invoke-direct {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;-><init>()V

    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    goto :goto_f

    .line 74
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method


# virtual methods
.method public setCursorCapsMode(II)V
    .registers 6
    .parameter "capsMode"
    .parameter "seq"

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    :try_start_1
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_f

    .line 135
    iput p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCursorCapsMode:I

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 142
    :goto_d
    monitor-exit p0

    .line 143
    return-void

    .line 139
    :cond_f
    const-string v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in setCursorCapsMode, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 142
    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    .registers 6
    .parameter "extractedText"
    .parameter "seq"

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_1
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_f

    .line 148
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 155
    :goto_d
    monitor-exit p0

    .line 156
    return-void

    .line 152
    :cond_f
    const-string v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in setExtractedText, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 155
    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public setSelectedText(Ljava/lang/CharSequence;I)V
    .registers 6
    .parameter "selectedText"
    .parameter "seq"

    .prologue
    .line 120
    monitor-enter p0

    .line 121
    :try_start_1
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_f

    .line 122
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSelectedText:Ljava/lang/CharSequence;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 129
    :goto_d
    monitor-exit p0

    .line 130
    return-void

    .line 126
    :cond_f
    const-string v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in setSelectedText, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 129
    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public setSelectionEnd(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 215
    monitor-enter p0

    .line 216
    :try_start_1
    iput p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mValue:I

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 219
    monitor-exit p0

    .line 220
    return-void

    .line 219
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public setSelectionStart(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 206
    monitor-enter p0

    .line 207
    :try_start_1
    iput p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mValue:I

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 210
    monitor-exit p0

    .line 211
    return-void

    .line 210
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public setSubText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 233
    monitor-enter p0

    .line 234
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 237
    monitor-exit p0

    .line 238
    return-void

    .line 237
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 228
    monitor-exit p0

    .line 229
    return-void

    .line 228
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public setTextAfterCursor(Ljava/lang/CharSequence;I)V
    .registers 6
    .parameter "textAfterCursor"
    .parameter "seq"

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_1
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_f

    .line 109
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 116
    :goto_d
    monitor-exit p0

    .line 117
    return-void

    .line 113
    :cond_f
    const-string v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in setTextAfterCursor, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 116
    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    .registers 6
    .parameter "textBeforeCursor"
    .parameter "seq"

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_1
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_f

    .line 96
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 103
    :goto_d
    monitor-exit p0

    .line 104
    return-void

    .line 100
    :cond_f
    const-string v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in setTextBeforeCursor, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 103
    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method waitForResultLocked()V
    .registers 9

    .prologue
    .line 164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 165
    .local v4, startTime:J
    const-wide/16 v6, 0x7d0

    add-long v0, v4, v6

    .line 167
    .local v0, endTime:J
    :goto_8
    iget-boolean v6, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-nez v6, :cond_1f

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v0, v6

    .line 169
    .local v2, remainingTime:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_20

    .line 170
    const-string v6, "InputConnectionWrapper.ICC"

    const-string v7, "Timed out waiting on IInputContextCallback"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v2           #remainingTime:J
    :cond_1f
    return-void

    .line 174
    .restart local v2       #remainingTime:J
    :cond_20
    :try_start_20
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_8

    .line 175
    :catch_24
    move-exception v6

    goto :goto_8
.end method

.method waitForResultLocked(I)V
    .registers 11
    .parameter "waitTime"

    .prologue
    .line 187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 188
    .local v4, startTime:J
    int-to-long v6, p1

    add-long v0, v4, v6

    .line 190
    .local v0, endTime:J
    :goto_7
    iget-boolean v6, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-nez v6, :cond_2f

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v0, v6

    .line 192
    .local v2, remainingTime:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_30

    .line 193
    const-string v6, "InputConnectionWrapper.ICC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timed out waiting on IInputContextCallback. waitTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v2           #remainingTime:J
    :cond_2f
    return-void

    .line 197
    .restart local v2       #remainingTime:J
    :cond_30
    :try_start_30
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_7

    .line 198
    :catch_34
    move-exception v6

    goto :goto_7
.end method
